"""
	ADC funciona nos pins listados abaixo
	
    "AIN4", "P9_33"
    "AIN6", "P9_35"
    "AIN5", "P9_36"
    "AIN2", "P9_37"
    "AIN3", "P9_38"
    "AIN0", "P9_39"
    "AIN1", "P9_40"
	
	A maxima tensao surportada eh de 1.8 V. Nao exceder.

"""
import beaglebone_pru_adc as adc
import time
import numpy as np #aqui uso a biblioteca para trabalhar mais facilmente com numeros complexos
from numpy import linalg as LA

capture = adc.Capture()
capture.encoder0_pin = 0 # AIN0, aka P9_39
capture.encoder1_pin = 1 # AIN0, aka P9_39
capture.encoder0_threshold = 100
capture.encoder0_delay = 100
capture.cap_delay = 0
capture.encoder1_threshold = 4095
capture.encoder1_delay = 100
x1 = []
x2 = []
time1 = time.time()
capture.start()
for _ in range(10000):
	#print capture.encoder0_values[0],capture.encoder1_values[0]
	x1.append(capture.encoder0_values[0])
	x2.append(capture.encoder1_values[0])
capture.stop()
time2 = time.time()
tempo = (time2-time1)*1000.0 #tempo demorado pela amostra em ms
capture.wait()
capture.close()



####################################
# CRIANDO ARRAY [0:1:10] EM PYTHON #
####################################

tempo_Am = np.arange(0.0,tempo/1000.,(tempo/10000000.))
cos2 = np.cos((2*np.pi*1700)*tempo_Am)
sin2 = (-1) * np.sin((2*np.pi*1700)*tempo_Am)
'''
cos3 = np.cos((2*2*np.pi*1700)*tempo_Am)
sin3 = (-1) * np.sin((2*2*np.pi*1700)*tempo_Am)
cos4 = np.cos((3*2*np.pi*1700)*tempo_Am)
sin4 = (-1) * np.sin((3*2*np.pi*1700)*tempo_Am)
'''
x2real = x2*cos2
x2img = x2*sin2*complex(1j)
x2 = x2real+x2img

X = np.concatenate(([x1],[x2.conj()]),axis=0)
#################
#ALGORITMO MUSIC#
#################
# x = np.array([[1, 2, 12, 34, 5, 6, 1, 3, 5, 2],[2, 3, 34, 54, 6, 7, 1, 2, 54, 6]])
R = reduce(np.dot,[X,X.conj().T])
R = R.conj()
d_norm = 0.5
phs = (np.pi/180)*np.arange(0.0,180.0,0.1) #angulo que quero medir
Lam,v = LA.eig(R)
mm = np.arange(0,2,1) #algoritmo para 2 microfones
mm.T
lambdas = np.sort(np.absolute(Lam))
#[dmax,Nn] = max(diff(log10(lambdas+1e-3)))
max = np.amax(np.diff(np.log10(lambdas+1e-3)))
Nn = 0
contador = 0
for element in np.diff(np.log10(lambdas+1e-3)):
	if element == max:
		break
	Nn = Nn+1

vc = np.fliplr(v)
Vn = vc[:,0:(Nn+1)]
P = []
for grau in phs:
	a = np.exp(1j*2*np.pi*d_norm*np.cos(grau)*np.array([0, 1]).T)
	P.append(1./reduce(np.dot, [a.conj().T,Vn,Vn.conj().T,a]))

DOA = -9999
posicao = 0
buffer = 0
for element in P:
	if element > DOA:
		DOA = element
		posicao = buffer
	buffer = buffer+1

print -90+0.1*posicao
#####################
#FIM ALGORITMO MUSIC#
#####################
