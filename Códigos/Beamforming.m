function [ Beamforming ] = Beamforming( y )
%BEAMFORMING Summary of this function goes here
%   Detailed explanation goes here
    b = [-5.37417309989373e-05 2.78544476795389e-05 2.80379248049444e-05 3.14386520478701e-05 3.70235522233649e-05 4.38335063397252e-05 5.12891144505785e-05 5.86885561477472e-05 6.56050840803354e-05 7.14399720822193e-05 7.58592576247992e-05 7.83660980536398e-05 7.87549082049703e-05 7.66851549742992e-05 7.21424230492603e-05 6.50019054315304e-05 5.54916151955417e-05 4.37353265088084e-05 3.02177630484307e-05 1.52966725002132e-05 -3.22508241419302e-07 -1.61196664991968e-05 -3.12507891783316e-05 -4.51613903939546e-05 -5.69877687695194e-05 -6.62500789094192e-05 -7.23453942952858e-05 -7.47826860955049e-05 -7.34462772157737e-05 -6.82169074674014e-05 -5.91063423429113e-05 -4.65066379378203e-05 -3.08888577600873e-05 -1.30022918570958e-05 6.41101723666100e-06 2.63449591445069e-05 4.58640169152921e-05 6.38499030624171e-05 7.93732364569980e-05 9.14293954165375e-05 9.93157443431702e-05 0.000102347481364992 0.000100232463386357 9.27610317745416e-05 8.01701493606871e-05 6.27966199525683e-05 4.14275984201355e-05 1.69040988840611e-05 -9.52579055977129e-06 -3.66795356310714e-05 -6.30456512579098e-05 -8.73296603887664e-05 -0.000108079698542686 -0.000124115531364779 -0.000134361320812535 -0.000138093917461662 -0.000134758646706194 -0.000124323120459100 -0.000106971638424685 -8.33952932845190e-05 -5.44879378782495e-05 -2.16258084000341e-05 1.37026247866267e-05 4.96684910328515e-05 8.44983743643970e-05 0.000116252424823848 0.000143230590217123 0.000163758689552590 0.000176593899202662 0.000180694350190394 0.000175596020919228 0.000161143452443846 0.000137826269281122 0.000106454047989929 6.84614357731655e-05 2.54986192350534e-05 -2.02653120194946e-05 -6.66380227304837e-05 -0.000111127832024832 -0.000151415772380274 -0.000185184884954873 -0.000210516883761590 -0.000225716875484633 -0.000229729651816108 -0.000221896807829229 -0.000202303679290219 -0.000171507961432374 -0.000130830998457890 -8.20046625664979e-05 -2.73900219421164e-05 3.04207659987318e-05 8.84328585874130e-05 0.000143691006864071 0.000193146994961509 0.000234109591813187 0.000264107276427561 0.000281309184668242 0.000284358751813254 0.000272741506333733 0.000246556566355577 0.000206819095392237 0.000155129298910592 9.39279977862235e-05 2.60549160658120e-05 -4.50536011773930e-05 -0.000115843910630669 -0.000182540163102895 -0.000241612934364474 -0.000289688926395181 -0.000324029770470508 -0.000342398911728953 -0.000343474619488535 -0.000326669282188186 -0.000292461707639886 -0.000242115333513319 -0.000177909451212642 -0.000102773666170343 -2.04256097364397e-05 6.50800332796537e-05 0.000149288237278420 0.000227833412208017 0.000296406470018676 0.000351242579792876 0.000389081270440936 0.000407599855790737 0.000405311090847165 0.000381909865110667 0.000338058038121130 0.000275645867030866 0.000197437828375862 0.000107231645655889 9.40818065037453e-06 -9.10282285730076e-05 -0.000188950894067153 -0.000279121681620556 -0.000356727573215860 -0.000417381947401423 -0.000457616960662780 -0.000474838689724626 -0.000467733145777773 -0.000436109239487863 -0.000381180174995113 -0.000305285373062305 -0.000212034484446681 -0.000105897301764529 7.77346955123524e-06 0.000123243152160660 0.000234454168158370 0.000335570377257675 0.000421065539317556 0.000486236908346964 0.000527254104875082 0.000541590064419090 0.000527960635780090 0.000486642795337867 0.000419252259201283 0.000328917246614207 0.000219911292431874 9.76680408635039e-05 -3.17004025689350e-05 -0.000161494522543409 -0.000284994391257027 -0.000395591631098995 -0.000487354742877401 -0.000555140162007272 -0.000595089782397738 -0.000604638082834088 -0.000582880095995048 -0.000530435795724891 -0.000449649856129472 -0.000344282787986947 -0.000219542297826564 -8.16250900371334e-05 6.23920593894210e-05 0.000205113586432291 0.000339016540606232 0.000457031149697712 0.000552737271763362 0.000620891989908923 0.000657539069096420 0.000660422236869713 0.000628931044421728 0.000564347512137691 0.000469613656085493 0.000349379227316186 0.000209596463257014 5.74035254101842e-05 -9.94234763455763e-05 -0.000252689521628905 -0.000394386350552687 -0.000516940490958402 -0.000613795318108536 -0.000679588229941580 -0.000710622864391029 -0.000704906136915778 -0.000662444659322453 -0.000585086427538533 -0.000476616844669925 -0.000342403071381850 -0.000189297374931681 -2.51175271000819e-05 0.000141592479243963 0.000302165041095888 0.000448112954575762 0.000571729831310853 0.000666351736503272 0.000726871108347583 0.000749859162767202 0.000733917012332196 0.000679609820559094 0.000589598464184845 0.000468363972395767 0.000322130533082533 0.000158396617552228 -1.43060361122936e-05 -0.000187002487689715 -0.000350605695690954 -0.000496539613956676 -0.000617051675271062 -0.000705768302704965 -0.000757898453032040 -0.000770633871187179 -0.000743162697005470 -0.000676862536978416 -0.000575091936429388 -0.000443159708992331 -0.000287907161644758 -0.000117486275893629 5.92006463267736e-05 0.000232846607010061 0.000394356979828698 0.000535209564979559 0.000648032790611691 0.000726871441261895 0.000767631081869074 0.000768173139711627 0.000728548144480862 0.000650873215413740 0.000539338825572467 0.000399863003211440 0.000239892951860733 6.78895509184023e-05 -0.000107012145028437 -0.000275605618875222 -0.000428990583454228 -0.000559160140332214 -0.000659316633607343 -0.000724341879990038 -0.000750952649997360 -0.000737983310267023 -0.000686325387127310 -0.000598985583562907 -0.000480798960237677 -0.000338273296982727 -0.000179121668022667 -1.19442005808442e-05 0.000154342611901705 0.000310886373723994 0.000449478405100375 0.000562888892667114 0.000645353534597021 0.000692773940335961 0.000703022918397734 0.000675946428935342 0.000613452564211809 0.000519290515413053 0.000398925310209782 0.000259128693965965 0.000107688952142145 -4.71177059377051e-05 -0.000196893358400030 -0.000333670211579209 -0.000450255147793700 -0.000540702682476505 -0.000600537613215529 -0.000627072739369677 -0.000619442969556155 -0.000578719539843582 -0.000507730154359233 -0.000410967641879818 -0.000294226294270697 -0.000164342952326703 -2.87142491942445e-05 0.000105043541515767 0.000229611538511866 0.000338291310338015 0.000425457713934362 0.000486776711244507 0.000519508267959323 0.000522554139082226 0.000496570405181825 0.000443815471678724 0.000368067218902724 0.000274296888388525 0.000168431901653226 5.69140688790883e-05 -5.36139034264748e-05 -0.000156778052737055 -0.000246773529156769 -0.000318768928614164 -0.000369102875210486 -0.000395552761853257 -0.000397364874558598 -0.000375343792956665 -0.000331693931423882 -0.000269930435743351 -0.000194561248912711 -0.000110856360967574 -2.44320770983921e-05 5.90398932789243e-05 0.000134265907697878 0.000196590389755844 0.000242356958017219 0.000269058786654272 0.000275554599104585 0.000262055702596041 0.000230165826700022 0.000182687597650989 0.000123492883639565 5.71850501339521e-05 -1.11501413002503e-05 -7.63611372547029e-05 -0.000133517657249617 -0.000178315879697729 -0.000207315213840662 -0.000218244321745409 -0.000210105730543792 -0.000183323192107433 -0.000139665044987649 -8.22077274928173e-05 -1.50756249273806e-05 5.67576817039804e-05 0.000127864378628620 0.000192666223827273 0.000245882779774136 0.000282843069506317 0.000299893586351130 0.000294619538473283 0.000266119783463144 0.000215060419966749 0.000143753545235061 5.60023415611883e-05 -4.30282715875507e-05 -0.000147166957895979 -0.000249537495265729 -0.000343048234000543 -0.000420784568292907 -0.000476535047021772 -0.000505164071697716 -0.000503056276268136 -0.000468360347772416 -0.000401248879025228 -0.000303944678270865 -0.000180736400976094 -3.77465650668417e-05 0.000117303390393290 0.000275560961752725 0.000427473654173838 0.000563407176212454 0.000674171842108247 0.000751664345355158 0.000789349046593862 0.000782787361727683 0.000729939573564458 0.000631457121334368 0.000490704912179739 0.000313741901107933 0.000109021576916164 -0.000112940848805243 -0.000340160061551640 -0.000559757655143788 -0.000758739639067452 -0.000924685985675319 -0.00104656101500379 -0.00111534664310635 -0.00112470890113811 -0.00107141227554811 -0.000955689835704204 -0.000781310462580489 -0.000555561386212840 -0.000288911334701174 5.40281883706651e-06 0.000312082534262500 0.000614495408194958 0.000895626744947593 0.00113896704747348 0.00132952043573716 0.00145464284164845 0.00150489863948890 0.00147464282257650 0.00136253143387434 0.00117168690386758 0.000909737679610101 0.000588488201292892 0.000223463837438145 -0.000166887806452628 -0.000562062310379374 -0.000940627988275470 -0.00128131951394214 -0.00156428187432113 -0.00177214733203999 -0.00189113408500657 -0.00191185581255623 -0.00183003422378145 -0.00164683038983786 -0.00136900532085774 -0.00100865710695927 -0.000582777061784483 -0.000112402639635031 0.000378354074703107 0.000863595247958342 0.00131694114842007 0.00171301361215048 0.00202878698745869 0.00224496767045613 0.00234708540783096 0.00232647070874347 0.00218082209927556 0.00191455999862310 0.00153870482511503 0.00107051179587261 0.000532636997603836 -4.78901789192150e-05 -0.000641078616792569 -0.00121546114840428 -0.00173982043566213 -0.00218481787056850 -0.00252468465834169 -0.00273863712344577 -0.00281217650880807 -0.00273795923173762 -0.00251642039074396 -0.00215587112580501 -0.00167229438473530 -0.00108859898827228 -0.000433607160387922 0.000259422097403577 0.000954420104248834 0.00161444158141207 0.00220356700971460 0.00268891154332514 0.00304239201130599 0.00324239222312430 0.00327499745440117 0.00313495803579046 0.00282609017561579 0.00236131576319389 0.00176209615674837 0.00105751609120373 0.000282821069810067 -0.000522282914443855 -0.00131572467406014 -0.00205520471527051 -0.00270050941007417 -0.00321563469298496 -0.00357084427198875 -0.00374431197602886 -0.00372348916111703 -0.00350588336619934 -0.00309943237441514 -0.00252220784506327 -0.00180169384448759 -0.000973429790175441 -7.93197432928791e-05 0.000834545589560255 0.00172020747869279 0.00253041719746646 0.00322109830099259 0.00375379897525348 0.00409776903822760 0.00423177482563281 0.00414532344178988 0.00383944665797653 0.00332677272746990 0.00263109386898236 0.00178622164867770 0.000834405239820938 -0.000175838322074872 -0.00119214140593095 -0.00216106196128389 -0.00303084073911585 -0.00375422419254625 -0.00429097536094073 -0.00461016018668208 -0.00469186147036026 -0.00452844305462398 -0.00412506898798845 -0.00349966193160222 -0.00268207440052307 -0.00171272524920176 -0.000640549338511616 0.000479421081780065 0.00158894147285930 0.00262953492752661 0.00354563365763941 0.00428749706912136 0.00481396536275236 0.00509468680078420 0.00511190405423730 0.00486149427250483 0.00435340029036362 0.00361122362985505 0.00267118966146988 0.00158033217250747 0.000394188819446927 -0.000826083062143098 -0.00201681694151658 -0.00311521673357874 -0.00406262609982262 -0.00480771538629884 -0.00530921565046994 -0.00553825005558590 -0.00547993566008177 -0.00513436158139942 -0.00451669009742107 -0.00365655773592716 -0.00259661279286731 -0.00139044612204377 -9.98284222898767e-05 0.00120841412038409 0.00246591638577832 0.00360631058143012 0.00456878392239533 0.00530128283367359 0.00576337576039496 0.00592844025147913 0.00578522796885256 0.00533854795603328 0.00460919376659592 0.00363294353430120 0.00245884720886046 0.00114671570058022 -0.000235894062699911 -0.00161720787372677 -0.00292493212877150 -0.00409008845831151 -0.00505062314485313 -0.00575475959643173 -0.00616375452677965 -0.00625406819524812 -0.00601867262994974 -0.00546757568753222 -0.00462737830213195 -0.00354002983882996 -0.00226069294845696 -0.000854973481312672 0.000604490119493433 0.00204175800677144 0.00338158825336912 0.00455335451144311 0.00549481357788395 0.00615538920981394 0.00649892606516698 0.00650563903922736 0.00617327567111217 0.00551730175764202 0.00457021917694752 0.00337992322436503 0.00200730201259238 0.000523083860449427 -0.000995792993736262 -0.00247020923816456 -0.00382297448228966 -0.00498290830305859 -0.00588857238372543 -0.00649156000131905 -0.00675906612085218 -0.00667569783625514 -0.00624433102499417 -0.00548605982168045 -0.00443914083186319 -0.00315708112962845 -0.00170587104815582 -0.000160597446810211 0.00139847760785294 0.00289007976861524 0.00423619443139742 0.00536614378838391 0.00622032805324616 0.00675336296584022 0.00693651533153339 0.00675923841813080 0.00622979254327698 0.00537484663749734 0.00423814678525236 0.00287825498224312 0.00136553498775218 -0.000221515854999985 -0.00180034254177487 -0.00328865511328218 -0.00460872217306937 -0.00569145613816798 -0.00648003355905493 -0.00693289600381944 -0.00702594002764746 -0.00675381246982091 -0.00613020770737147 -0.00518718522329595 -0.00397350670266325 -0.00255211345049559 -0.000996841433670531 0.000611421058141196 0.00218896261078392 0.00365361837283216 0.00492906856583011 0.00594882838591984 0.00665972819365503 0.00702469520988669 0.00702469520988669 0.00665972819365503 0.00594882838591984 0.00492906856583011 0.00365361837283216 0.00218896261078392 0.000611421058141196 -0.000996841433670531 -0.00255211345049559 -0.00397350670266325 -0.00518718522329595 -0.00613020770737147 -0.00675381246982091 -0.00702594002764746 -0.00693289600381944 -0.00648003355905493 -0.00569145613816798 -0.00460872217306937 -0.00328865511328218 -0.00180034254177487 -0.000221515854999985 0.00136553498775218 0.00287825498224312 0.00423814678525236 0.00537484663749734 0.00622979254327698 0.00675923841813080 0.00693651533153339 0.00675336296584022 0.00622032805324616 0.00536614378838391 0.00423619443139742 0.00289007976861524 0.00139847760785294 -0.000160597446810211 -0.00170587104815582 -0.00315708112962845 -0.00443914083186319 -0.00548605982168045 -0.00624433102499417 -0.00667569783625514 -0.00675906612085218 -0.00649156000131905 -0.00588857238372543 -0.00498290830305859 -0.00382297448228966 -0.00247020923816456 -0.000995792993736262 0.000523083860449427 0.00200730201259238 0.00337992322436503 0.00457021917694752 0.00551730175764202 0.00617327567111217 0.00650563903922736 0.00649892606516698 0.00615538920981394 0.00549481357788395 0.00455335451144311 0.00338158825336912 0.00204175800677144 0.000604490119493433 -0.000854973481312672 -0.00226069294845696 -0.00354002983882996 -0.00462737830213195 -0.00546757568753222 -0.00601867262994974 -0.00625406819524812 -0.00616375452677965 -0.00575475959643173 -0.00505062314485313 -0.00409008845831151 -0.00292493212877150 -0.00161720787372677 -0.000235894062699911 0.00114671570058022 0.00245884720886046 0.00363294353430120 0.00460919376659592 0.00533854795603328 0.00578522796885256 0.00592844025147913 0.00576337576039496 0.00530128283367359 0.00456878392239533 0.00360631058143012 0.00246591638577832 0.00120841412038409 -9.98284222898767e-05 -0.00139044612204377 -0.00259661279286731 -0.00365655773592716 -0.00451669009742107 -0.00513436158139942 -0.00547993566008177 -0.00553825005558590 -0.00530921565046994 -0.00480771538629884 -0.00406262609982262 -0.00311521673357874 -0.00201681694151658 -0.000826083062143098 0.000394188819446927 0.00158033217250747 0.00267118966146988 0.00361122362985505 0.00435340029036362 0.00486149427250483 0.00511190405423730 0.00509468680078420 0.00481396536275236 0.00428749706912136 0.00354563365763941 0.00262953492752661 0.00158894147285930 0.000479421081780065 -0.000640549338511616 -0.00171272524920176 -0.00268207440052307 -0.00349966193160222 -0.00412506898798845 -0.00452844305462398 -0.00469186147036026 -0.00461016018668208 -0.00429097536094073 -0.00375422419254625 -0.00303084073911585 -0.00216106196128389 -0.00119214140593095 -0.000175838322074872 0.000834405239820938 0.00178622164867770 0.00263109386898236 0.00332677272746990 0.00383944665797653 0.00414532344178988 0.00423177482563281 0.00409776903822760 0.00375379897525348 0.00322109830099259 0.00253041719746646 0.00172020747869279 0.000834545589560255 -7.93197432928791e-05 -0.000973429790175441 -0.00180169384448759 -0.00252220784506327 -0.00309943237441514 -0.00350588336619934 -0.00372348916111703 -0.00374431197602886 -0.00357084427198875 -0.00321563469298496 -0.00270050941007417 -0.00205520471527051 -0.00131572467406014 -0.000522282914443855 0.000282821069810067 0.00105751609120373 0.00176209615674837 0.00236131576319389 0.00282609017561579 0.00313495803579046 0.00327499745440117 0.00324239222312430 0.00304239201130599 0.00268891154332514 0.00220356700971460 0.00161444158141207 0.000954420104248834 0.000259422097403577 -0.000433607160387922 -0.00108859898827228 -0.00167229438473530 -0.00215587112580501 -0.00251642039074396 -0.00273795923173762 -0.00281217650880807 -0.00273863712344577 -0.00252468465834169 -0.00218481787056850 -0.00173982043566213 -0.00121546114840428 -0.000641078616792569 -4.78901789192150e-05 0.000532636997603836 0.00107051179587261 0.00153870482511503 0.00191455999862310 0.00218082209927556 0.00232647070874347 0.00234708540783096 0.00224496767045613 0.00202878698745869 0.00171301361215048 0.00131694114842007 0.000863595247958342 0.000378354074703107 -0.000112402639635031 -0.000582777061784483 -0.00100865710695927 -0.00136900532085774 -0.00164683038983786 -0.00183003422378145 -0.00191185581255623 -0.00189113408500657 -0.00177214733203999 -0.00156428187432113 -0.00128131951394214 -0.000940627988275470 -0.000562062310379374 -0.000166887806452628 0.000223463837438145 0.000588488201292892 0.000909737679610101 0.00117168690386758 0.00136253143387434 0.00147464282257650 0.00150489863948890 0.00145464284164845 0.00132952043573716 0.00113896704747348 0.000895626744947593 0.000614495408194958 0.000312082534262500 5.40281883706651e-06 -0.000288911334701174 -0.000555561386212840 -0.000781310462580489 -0.000955689835704204 -0.00107141227554811 -0.00112470890113811 -0.00111534664310635 -0.00104656101500379 -0.000924685985675319 -0.000758739639067452 -0.000559757655143788 -0.000340160061551640 -0.000112940848805243 0.000109021576916164 0.000313741901107933 0.000490704912179739 0.000631457121334368 0.000729939573564458 0.000782787361727683 0.000789349046593862 0.000751664345355158 0.000674171842108247 0.000563407176212454 0.000427473654173838 0.000275560961752725 0.000117303390393290 -3.77465650668417e-05 -0.000180736400976094 -0.000303944678270865 -0.000401248879025228 -0.000468360347772416 -0.000503056276268136 -0.000505164071697716 -0.000476535047021772 -0.000420784568292907 -0.000343048234000543 -0.000249537495265729 -0.000147166957895979 -4.30282715875507e-05 5.60023415611883e-05 0.000143753545235061 0.000215060419966749 0.000266119783463144 0.000294619538473283 0.000299893586351130 0.000282843069506317 0.000245882779774136 0.000192666223827273 0.000127864378628620 5.67576817039804e-05 -1.50756249273806e-05 -8.22077274928173e-05 -0.000139665044987649 -0.000183323192107433 -0.000210105730543792 -0.000218244321745409 -0.000207315213840662 -0.000178315879697729 -0.000133517657249617 -7.63611372547029e-05 -1.11501413002503e-05 5.71850501339521e-05 0.000123492883639565 0.000182687597650989 0.000230165826700022 0.000262055702596041 0.000275554599104585 0.000269058786654272 0.000242356958017219 0.000196590389755844 0.000134265907697878 5.90398932789243e-05 -2.44320770983921e-05 -0.000110856360967574 -0.000194561248912711 -0.000269930435743351 -0.000331693931423882 -0.000375343792956665 -0.000397364874558598 -0.000395552761853257 -0.000369102875210486 -0.000318768928614164 -0.000246773529156769 -0.000156778052737055 -5.36139034264748e-05 5.69140688790883e-05 0.000168431901653226 0.000274296888388525 0.000368067218902724 0.000443815471678724 0.000496570405181825 0.000522554139082226 0.000519508267959323 0.000486776711244507 0.000425457713934362 0.000338291310338015 0.000229611538511866 0.000105043541515767 -2.87142491942445e-05 -0.000164342952326703 -0.000294226294270697 -0.000410967641879818 -0.000507730154359233 -0.000578719539843582 -0.000619442969556155 -0.000627072739369677 -0.000600537613215529 -0.000540702682476505 -0.000450255147793700 -0.000333670211579209 -0.000196893358400030 -4.71177059377051e-05 0.000107688952142145 0.000259128693965965 0.000398925310209782 0.000519290515413053 0.000613452564211809 0.000675946428935342 0.000703022918397734 0.000692773940335961 0.000645353534597021 0.000562888892667114 0.000449478405100375 0.000310886373723994 0.000154342611901705 -1.19442005808442e-05 -0.000179121668022667 -0.000338273296982727 -0.000480798960237677 -0.000598985583562907 -0.000686325387127310 -0.000737983310267023 -0.000750952649997360 -0.000724341879990038 -0.000659316633607343 -0.000559160140332214 -0.000428990583454228 -0.000275605618875222 -0.000107012145028437 6.78895509184023e-05 0.000239892951860733 0.000399863003211440 0.000539338825572467 0.000650873215413740 0.000728548144480862 0.000768173139711627 0.000767631081869074 0.000726871441261895 0.000648032790611691 0.000535209564979559 0.000394356979828698 0.000232846607010061 5.92006463267736e-05 -0.000117486275893629 -0.000287907161644758 -0.000443159708992331 -0.000575091936429388 -0.000676862536978416 -0.000743162697005470 -0.000770633871187179 -0.000757898453032040 -0.000705768302704965 -0.000617051675271062 -0.000496539613956676 -0.000350605695690954 -0.000187002487689715 -1.43060361122936e-05 0.000158396617552228 0.000322130533082533 0.000468363972395767 0.000589598464184845 0.000679609820559094 0.000733917012332196 0.000749859162767202 0.000726871108347583 0.000666351736503272 0.000571729831310853 0.000448112954575762 0.000302165041095888 0.000141592479243963 -2.51175271000819e-05 -0.000189297374931681 -0.000342403071381850 -0.000476616844669925 -0.000585086427538533 -0.000662444659322453 -0.000704906136915778 -0.000710622864391029 -0.000679588229941580 -0.000613795318108536 -0.000516940490958402 -0.000394386350552687 -0.000252689521628905 -9.94234763455763e-05 5.74035254101842e-05 0.000209596463257014 0.000349379227316186 0.000469613656085493 0.000564347512137691 0.000628931044421728 0.000660422236869713 0.000657539069096420 0.000620891989908923 0.000552737271763362 0.000457031149697712 0.000339016540606232 0.000205113586432291 6.23920593894210e-05 -8.16250900371334e-05 -0.000219542297826564 -0.000344282787986947 -0.000449649856129472 -0.000530435795724891 -0.000582880095995048 -0.000604638082834088 -0.000595089782397738 -0.000555140162007272 -0.000487354742877401 -0.000395591631098995 -0.000284994391257027 -0.000161494522543409 -3.17004025689350e-05 9.76680408635039e-05 0.000219911292431874 0.000328917246614207 0.000419252259201283 0.000486642795337867 0.000527960635780090 0.000541590064419090 0.000527254104875082 0.000486236908346964 0.000421065539317556 0.000335570377257675 0.000234454168158370 0.000123243152160660 7.77346955123524e-06 -0.000105897301764529 -0.000212034484446681 -0.000305285373062305 -0.000381180174995113 -0.000436109239487863 -0.000467733145777773 -0.000474838689724626 -0.000457616960662780 -0.000417381947401423 -0.000356727573215860 -0.000279121681620556 -0.000188950894067153 -9.10282285730076e-05 9.40818065037453e-06 0.000107231645655889 0.000197437828375862 0.000275645867030866 0.000338058038121130 0.000381909865110667 0.000405311090847165 0.000407599855790737 0.000389081270440936 0.000351242579792876 0.000296406470018676 0.000227833412208017 0.000149288237278420 6.50800332796537e-05 -2.04256097364397e-05 -0.000102773666170343 -0.000177909451212642 -0.000242115333513319 -0.000292461707639886 -0.000326669282188186 -0.000343474619488535 -0.000342398911728953 -0.000324029770470508 -0.000289688926395181 -0.000241612934364474 -0.000182540163102895 -0.000115843910630669 -4.50536011773930e-05 2.60549160658120e-05 9.39279977862235e-05 0.000155129298910592 0.000206819095392237 0.000246556566355577 0.000272741506333733 0.000284358751813254 0.000281309184668242 0.000264107276427561 0.000234109591813187 0.000193146994961509 0.000143691006864071 8.84328585874130e-05 3.04207659987318e-05 -2.73900219421164e-05 -8.20046625664979e-05 -0.000130830998457890 -0.000171507961432374 -0.000202303679290219 -0.000221896807829229 -0.000229729651816108 -0.000225716875484633 -0.000210516883761590 -0.000185184884954873 -0.000151415772380274 -0.000111127832024832 -6.66380227304837e-05 -2.02653120194946e-05 2.54986192350534e-05 6.84614357731655e-05 0.000106454047989929 0.000137826269281122 0.000161143452443846 0.000175596020919228 0.000180694350190394 0.000176593899202662 0.000163758689552590 0.000143230590217123 0.000116252424823848 8.44983743643970e-05 4.96684910328515e-05 1.37026247866267e-05 -2.16258084000341e-05 -5.44879378782495e-05 -8.33952932845190e-05 -0.000106971638424685 -0.000124323120459100 -0.000134758646706194 -0.000138093917461662 -0.000134361320812535 -0.000124115531364779 -0.000108079698542686 -8.73296603887664e-05 -6.30456512579098e-05 -3.66795356310714e-05 -9.52579055977129e-06 1.69040988840611e-05 4.14275984201355e-05 6.27966199525683e-05 8.01701493606871e-05 9.27610317745416e-05 0.000100232463386357 0.000102347481364992 9.93157443431702e-05 9.14293954165375e-05 7.93732364569980e-05 6.38499030624171e-05 4.58640169152921e-05 2.63449591445069e-05 6.41101723666100e-06 -1.30022918570958e-05 -3.08888577600873e-05 -4.65066379378203e-05 -5.91063423429113e-05 -6.82169074674014e-05 -7.34462772157737e-05 -7.47826860955049e-05 -7.23453942952858e-05 -6.62500789094192e-05 -5.69877687695194e-05 -4.51613903939546e-05 -3.12507891783316e-05 -1.61196664991968e-05 -3.22508241419302e-07 1.52966725002132e-05 3.02177630484307e-05 4.37353265088084e-05 5.54916151955417e-05 6.50019054315304e-05 7.21424230492603e-05 7.66851549742992e-05 7.87549082049703e-05 7.83660980536398e-05 7.58592576247992e-05 7.14399720822193e-05 6.56050840803354e-05 5.86885561477472e-05 5.12891144505785e-05 4.38335063397252e-05 3.70235522233649e-05 3.14386520478701e-05 2.80379248049444e-05 2.78544476795389e-05 -5.37417309989373e-05];
    
    x1 = double(y(:,1));
    x2 = double(y(:,2));
    x3 = double(y(:,3));
    x4 = double(y(:,4));
    
    x1 = filter(b,1,x1);
 	x2 = filter(b,1,x2);
 	x3 = filter(b,1,x3);
 	x4 = filter(b,1,x4);
	
    x1 = x1/max(x1);
    x2 = x2/max(x2);
    x3 = x3/max(x3);
    x4 = x4/max(x4);
    
    dt = (1/44100);
    x2real = x2.*cos(1*2*pi*1700*[0:dt:(length(x1)-1)*dt]');
    x2imag = x2.*-sin(1*2*pi*1700*[0:dt:(length(x1)-1)*dt]');
    x2 = x2real + j*x2imag;
    x3real = x3.*cos(2*2*pi*1700*[0:dt:(length(x1)-1)*dt]');
    x3imag = x3.*-sin(2*2*pi*1700*[0:dt:(length(x1)-1)*dt]');
    x3 = x3real + j*x3imag;
    x4real = x4.*cos(3*2*pi*1700*[0:dt:(length(x1)-1)*dt]');
    x4imag = x4.*-sin(3*2*pi*1700*[0:dt:(length(x1)-1)*dt]');
    x4 = x4real + j*x4imag;
    
    %%algoritmo
    X = [x1 x2 x3 x4];
    
    R = X'*X;
	%R = R./mean2(R);
	phs=[0:0.1:180]*(pi/180); %angulo que quero medir   
	d_norm=0.5;
	M = size(R,1); mm = [0:M-1].';
	for i=1:length(phs)
	   a = exp(j*2*pi*d_norm*cos(phs(i))*mm); % vetor de trans
	   Beamforming(i) = a'*R*a; 
    end
    
    [r o] = max(abs(Beamforming));
    grau = [-90:0.1:90];
    figure1 = figure;
    plot(grau,log10(abs(Beamforming)));
	title('Beamforming DOA - Testado em placa');
	xlabel('Angulo em graus');
	legend(['Beamforming - ponto m�ximo �: ' num2str(grau(o)) '�']);
end

