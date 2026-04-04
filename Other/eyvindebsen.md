# [Robo Pong](https://stigc.dk/c64/basic/?s=2hVLbkqIwEH3PV6R8UolWupMgsOK_wBCVGgQExoGdmn_fJIC4l6p9yumkT5_ukwba6BttqrSidVVe6IPvgaC7_Lzqkg7VB00aTbuqokXyczCA1kVizquml-SmbUbT6uJMBG3zWEk8YGTpZfVJP_PuStvqo8yINPXfdZt7KBmoaAwYcDlBDxgeZqzMw4x9m24L5mXeGYmMAKePWAmUQXSLkQdRGRto0x-eQAYwY8H4BBHYWBy55AzEjOEFG6aM7nFTZutdl28IAK2bvOxWX0V-uXb00mhdfn-9FTppvldt_bYGf7N6Wrf6EZ2r5h7vuwrHocxw0rtvjaAyPeq-I4DOhYdVGhsD5s8QxdSjgeETgs9wvmVqzhUMOScg6SzpY9vpepwlEOjdp9EdNiqArzGaV9uQ89X-ZJqY5vyXamNy6LtCz1Q3u0kuCtoabzpNIBhJIYquCjFcurCqyn_hNjrpNE2o6IUrQZDTtI9B8SgdYiE96zxsthDyKOtjtZtjEw6_hTXE1jWMrQkIdLayfv48q8clbHVnZ2sJIs3PSdqus35zlGbk0khk_Rb2IrpU5svmpaVtYRZ37E_OnGFzRMcZ4mxYOJIIN0Lae1kf5ee0PwkOVZP2R4RJY2depk2WjC8QDsviS-5m32-25pdsG3NvQKQRGOJ08LLBCgwnRGUEhqMQU0M78_I_AfxLYBqEK6L45J9kaZ-UGSoVTTYqlg7jWObSyj1X0ncG-JwoRZc9JT6nLh1UYNOD0dS8HVcmL2kN9JzrItvv9_RWPbS5YFQXrZ4iU0KZEjUc08FWcPDmpCGuwQNv7W_HUTauhYCTA3eM08I4lU_GDnYLgwT8dVcsP-QksKtR46KIkyLGNf5DMSCBdIxFESdFy_hDMaDLSpLQtar1-xrCYHPis6cmMl_ndoqTEKlFgv8C)
Made a quick pong game, but i'm too lazy to play it...
Here is robo pong! 😃
```basic
1 rem robo pong v0.1
2 rem when you are too lazy to play the game yourself
3 si=54272:rem now with sound
4 pokesi+24,15:pokesi,104:pokesi+1,27:pokesi+5,10:pokesi+6,15:rem init sid
10 v=53248:m=208:n=48:pokev+32,11:pokev+33,0:pokev+21,7:poke2040,13:poke2041,13:poke2042,14:q=rnd(-ti)
11 print"{light green}{clear}"spc(16)"robo pong";:forq=.to24:poke1044+q*40,58:next
12 pokev,14:pokev+1,64:pokev+23,7:pokev+29,7:pokev+16,2:pokev+2,54:pokev+3,200
14 forq=.to62step3:poke832+q,0:poke832+q+1,120:poke832+q+2,0:next:rem the bat
16 forq=.to62:poke896+q,0:next:rem clear ball sprite
18 forq=923to929step3:pokeq+1,56:next:rem create a 3x3 ball
20 bx=150:by=34+rnd(1)*190:dx=5-rnd(1)*10:dy=5-rnd(1)*10:p1=64:p2=200
21 pokev+1,p1:pokev+3,p2:rem set bats
22 ifabs(dx)<4thendx=dx*1.3:goto22:rem no slow ball
24 ifabs(dy)<2thendy=dy*1.3:goto24
30 bx=bx+dx:ifbx>301orbx<21thendx=-dx:pokesi+4,0:pokesi+4,17:pokesi+1,40+rnd(.)*20:rem dx=dx*1.1
40 by=by+dy:ifby>225orby<33thendy=-dy:pokesi+4,0:pokesi+4,17:pokesi+1,20+rnd(.)*20:rem dy=dy*1.05
50 pokev+4,bxand255::pokev+5,by:ifbx>255thenpokev+16,6:goto60
55 pokev+16,2
60 ifbx>158then82:rem is ball in p1 field... move p1, else move p2
65 ifp1<bythenifp1<mthenp1=p1+1+(6*rnd(.)):goto80
70 ifp1>bythenifp1>nthenp1=p1-1-(6*rnd(.))
80 pokev+1,p1:goto90
82 ifp2<bythenifp2<mthenp2=p2+1+(6*rnd(.)):goto88
84 ifp2>bythenifp2>nthenp2=p2-1-(6*rnd(.))
88 pokev+3,p2
90 ifpeek(198)>0thenpoke198,0:goto20
92 goto30
```
# [The 8-bit ESP-TESTER (ExtraSensory Perception Scanner) by Eyvind Ebsen](https://stigc.dk/c64/basic/?s=2tVhtc9u4Ef7OXwGz6pwU0S4AkiCpRLnpTDs36Yf2Jrlp5vqNoiCLNU0qJBVb8ei_3y5eRAnSOb428cgyudh99n0BmJFW3pMvspYtKfJ22ZFr0q8lkd2G9LLrbzxOunIeRzzhM2StmwfyUPZr0jXbeklWj15INs2d7MopjwIWz_RLwBLzNI0DRu2zQA6EKeuyB-ClJ5R0HPKUBYzP7AsNQKYt695_eliXvdw_FZXM2_0Ti_b-7LbptgtOqZeSajT3iT9bNe2n-U3f8Gi2HM2Xo6n_tGweauAFhgper_1ZLR97j1HyeQ4aolTp-jzlLAgZyj-ifNb1csPN0mPAo-njK8A071MWJNTgcGLkQ5Q3zxk-F_O2Xo7H1335ahxON1LejUGhEBP48Vhk5MIsSIxYRAOrMmKBsI88oPYxDFjosZhYM7VFnEYUjYzhW1vFKbJ0c4oslllg5vJlrmSYoJROiyAHM4spU2JHj15IybK8_1KMeTQJPuE3rNLZoBiedvoJmIrJnE13s2MsjRITlaOQmjTaZKqkkJ9kT9CkHVqr6k3Vmu-FKTlhfFpUeXG3_7DerlZVWd-aGt3WfVmRO7nbtLLrbm5QMlOVrKWJ70VUW5BRVW-dQpBeTMmlsvK1WwnrG8ZD7S07q4bd4KEpQQY1GIfHNr9K96STlSx6wq5jf1Y0EL0SQ7io5syLhxxCWdWjede3ozEU1gRf2vJ23Y_G9SioZA1_JtdAL1fm5Q2HSNXA5lN_Wo88cfBl3dyDKxVKk9s23-39Sq4AaDkKHifdphiHdOL_ya9HEJnXnmCqBEUkAizUm8krJkAL2ocKDCYi7J9a-Vm2nSQNJMN_DV5DOYWe4OQy12q1VxpCgmjXi0o3JoQySUzcZJ-PQFsObvhNm4_e-Ez9fevHPqoXzBPRkMt8FORdMc4hFtCysoaJEZNP48fJfCB7QpBypYhQk4-TIy9Mli-Y-R6jpfJTNFC7yrPME-kznj1tyvpu_7Ft6lsfc1oWShAKIaK2zJribvV45YmMqEZIVEPu5lBVEAOK9XTNvlJfumG0OHPKVQ-1amT6ibyX3bbqwTzy9w8_qy6a-XqtGnmJTRP5tdlCO_R-0cCnbbE6QYTHvpeELk9Z-GV9ymW1_bLOe1J2_rho_sJjqBtK_T8Tw2u4vCSCZADxTTjkQYHnrSQQzR20b7Ut7na-CnoivCQ2EvEFCcvsJcJwpUdcH_qyuCN9owYDyWFHWuRV1TQ16VtY6WAyJKmWezs_Fvz4r49XSsdCgk84gnKwLb-VVwdvcfVe9dR_t10PjERZgpCZhWT0CBP2Fhhn9w1YXXYQVtn3O5I_yA7a88r3UnqQUo6qymEx7GLMLDBxhGaCTcp7NeXKz_IKQbgF4XQAEQASmgXOLoB0241sF4Nv_8Y81GWh7DIJm_MjsxJATAn2W6onq5mgFyewl9HjsQadUfdjnC1s8grqZNbP1V5hdgzVozP1PTd1nnFyMhjQjox6mQDV_batvSwxRsDxQ1ngZemxSuWWgnxtEDMryqJskO1hjXR93newnVLi1BrkoSZJCJs8LMlmU0kf2A5dpIL5UFYVGktgO7bZNh1whdyR5f7rff4FtixFPPjBxGWl8Q0TZAHQJZTuQbX4HdWcuqqRedAM9B2ik4_lFwjWj7g6mJBcMKHZ6l6HqH7a5svWtWQYJe9-gFDCoaZYV5D5oaL-gT2CXXWFZcoSPcO7XVdAQ5Kf1k3XL4AFpimeIa-AY7AoO8rQWlYbOMfQwXMJ8xetxCaNyX-Gs-rM9zhUnkHhxygqNgoqPEDp_TnZG0hdyGrEdHKJMwTHJxYVnCbYQT8UTJt3su5gjEM82kJuegjNDRnDxJ0AK6enZxZAb7XBPDZK-qbPqxswHkIs82KN55XQEcNcqATDnMm7O20RdNeyxOyG4SEBGAYFGxCMLFeoQLxXqNEJKuxfyz15t1LlgJWjBl3dPUAIH3AfC1BGWOidtQFZc6IPFPqgr3a2G7MNgVBEj85bxoW_NQahW6tw5nfycLj7Ec8FYWyk8CAKZ2U-K-vNVve9PrHAds8mb976Ox9m-SnpV_9oX2fh_rZploud9GdQYyJKwtQLxaEYQlsMaLyy_QqOhNReVaLgcCWBSwvPju8Phg7Xkak5HvHYbMynKzDcYi9iB50Z6MSBCbuidrMDY3tJlnmfI5GrJwJXm4Die2Tf4eKkCOJACJmmpJoSggjLOFBAm6KABIQPCQY1RRaBhMglGFgmgJIiIXUInLoEAxrCFSSIkBC5BBeUu6ChCxq6loaupaFwnAvP_I-oG6OIO2GMhAo-PqWnEY8PwrHQBO4SIpcgXELqEIQLKlxQ4YIKAypCuLvF8IueifQCMaGXiK6CxFWQuFYnrtWpa3XqgqYuaOqCpk54YRM3gc8iZ2WoFvVBUuqSoNxtPaRYMIxy5z2y5RFhDTIqnPf09J05eMzBs51yZAIT56T0UPrqAyTbL8ckfibIz-Ft11gLbNPY95CeehA6FoencWXQHzribOgLvWK7gvFkqBwWRRep4iLVJohhz3NUb_vnmMTPSdE5SZyTzuHFObw4hxfn8OIcXpzDJ-fwyTl8cjFEycUQ2a46paZOKtLIJmnoILNyaKAoVYTsIAo1pinDdKORplgDAygHTRF2Sob63U4SHjAYiuAVp_RofiuCwUXFwIMUg4tTNNBCB6eBkgmkWGQ7j7ntsYHHdtmAY_sMdEFTaG220bIEgDKgI82gJxnajdngttNSNBOjy_lZyjg_7QrOT8LMqTkKwBU8iklX3sJREWfNz-_f_fMX4hNy_E-Op52E6-PDnpze_InDpf4RcELUXCdM-vi0qLbyAusJp_4v17NozuIFRbetlLUylfjoIT94eNHB523XDv5_BmnP_1eMbxkTFY_IxuMF-X5Gi_55QbDIS2Pyfd0W36XQn6n0FxQ6OUN8tp6VH-kf9ONFGfoDWTpj_Z1Mka8khNHv4ci3aL9v5iF_ttO-knxbcc8X0rOz9WWOfLXk-OFm9xs)
Have you tried the ESP-test from Ghostbusters?
Here is your chance.
```basic
1 rem zener cards - the esp test.
2 si=54272:rem now with sound fx
3 pokesi+24,15:pokesi,17:pokesi+5,10:pokesi+6,15:rem init sid
6 poke53281,12:poke53280,0:print"{white}{clear}{14}":gosub200
8 l$=" ":forq=.to24:d$=d$+"{down}":l$=l$+"-":next
10 v=53248:pokev+21,31:forx=.to9step2:pokev+x,24+x*24:pokev+x+1,70:next
12 pokev+23,31:pokev+29,31:c=rnd((-ti*(3+peek(53266))))
14 pokev+39,7:pokev+40,2:pokev+41,6:pokev+42,0:pokev+43,13
15 forx=.to4:poke2040+x,250+x:next
20 fors=0to4:forx=.to62:reada:poke16000+c,a:c=c+1:next:c=c+1:next
30 dimzc(24),q(24):c=0:forx=.to4:fory=.to4:zc(c)=1+y::c=c+1:next:next
35 gosub300:print:print"{down} Get ready for the test."
38 print"{down} {black}Shuffling cards until keypress..."
39 rem print" "
40 gosub90:rem shuffle
50 print"{white}{clear}":fory=71to123:forx=1to9step2:pokev+x,y:next:next:gosub2100
53 print"{down*8} select 1-5":co=0:ic=0:bl=1
55 forx=.to24:n$=str$(x+1):n$=right$(n$,len(n$)-1):iflen(n$)<2thenn$="0"+n$
60 print"{home}{light gray}"left$(d$,x)spc(30)"#"n$" ";
61 poke646,rnd(.)*16:ifbl=1thenprint"{left}{reverse on} ";:goto63
62 print"{left}{reverse off} ";
63 bl=1-bl:forq=1to77:next:geta$:ifa$=""ora$<"1"ora$>"5"then61
64 rem printa$,asc(a$)-48:end
65 q(x)=asc(a$)-48
66 ifq(x)=zc(x)thenprint"{white}{left}{reverse off} Right":co=co+1:goto69
68 print"{left}{reverse off} {pink}Wrong":ic=ic+1:gosub400:rem shockfx!
69 next
70 fory=123to70step-1:forx=1to9step2:pokev+x,y:next:print:next
71 print"{white}{down}"l$:print" Result of ESP test:":printl$
72 print" You got"co"correct of 25"
73 print" You got"ic"incorrect of 25":print" That is"(co/25)*100"% correct":print
74 if co<3thenprint" You are very unlucky":goto76
75 if co<5thenprint" You are unlucky"
76 if co<8thenprint" Stick to card and balloon tricks."
78 if co>=8thenprint" WOW! You beat the average!":print" You might just be lucky."
79 if co>=10thenprint" 10 or more is pretty awesome!"
80 if co>=15thengosub150
81 if co>16thenprint" That is impressive!!"
82 if co>=20thengosub160
83 if co>21thenprint" That is superb!":print" Very nice!"
84 if co=25thengosub170
88 end
89 rem shuffle cards until keypress
90 forx=.to24:c=int(rnd(1)*25):t=zc(c):zc(c)=zc(x):zc(x)=t:next
92 geta$:ifa$=""then90
96 return
97 rem show cards
98 forx=.to24:printzc(x);:next
99 return
149 rem show text stats
150 print" You are 1 in 73,700 people"
152 print" That will get 15 or more correct!"
154 print" Amazing!"
156 return
160 print" You are 1 in 5.16 billion people"
162 print" That will get 20 or more correct"
164 print" Are you a Wizard?"
166 return
170 print" You are 1 out of 298 quadrillion people"
172 print" I'm speechless!":print" Just WOW!!!!"
174 rem syscall Ghostbusters now!
176 return
199 rem show help
200 print" These are the 5 Zener cards:"
290 return
299 rem show more help
300 print"{down*7} These cards are used to test for"
310 print" extrasensory perception. (ESP)"
320 print"{down} There are 25 cards total. 5 of each."
330 print"{down} You will be asked to predict"
332 print" the cards, all 25 of them."
334 print"{down}{red} If you get the answer wrong,"
336 print" you will get a light sound shock.{white}"
340 rem print"{down} Do you wish to take the test? ";
350 rem poke19,32:inputa$:ifleft$(a$,1)<>"y"andleft$(a$,1)<>"Y"thenprint"{13}goodbye":sys64738
360 return
399 rem soundshock!
400 pokesi+4,0:pokesi+4,129:forq=.to24:pokesi+1,1+rnd(.)*25:next:pokesi+1,1+rnd(1)*5
410 return
999 end
1000 rem sprite data
1002 data 0,0,0
1004 data 0,24,0
1006 data 0,231,0
1008 data 3,0,192
1010 data 4,0,32
1012 data 8,0,16
1014 data 8,0,16
1016 data 16,0,8
1018 data 16,0,8
1020 data 16,0,8
1022 data 32,0,4
1024 data 32,0,4
1026 data 16,0,8
1028 data 16,0,8
1030 data 16,0,8
1032 data 8,0,16
1034 data 8,0,16
1036 data 4,0,32
1038 data 3,0,192
1040 data 0,231,0
1042 data 0,24,0
1046 rem 
1048 data 0,0,0
1050 data 0,56,0
1052 data 0,56,0
1054 data 0,56,0
1056 data 0,56,0
1058 data 0,56,0
1060 data 0,56,0
1062 data 0,56,0
1064 data 0,56,0
1066 data 63,255,252
1068 data 63,255,252
1070 data 63,255,252
1072 data 0,56,0
1074 data 0,56,0
1076 data 0,56,0
1078 data 0,56,0
1080 data 0,56,0
1082 data 0,56,0
1084 data 0,56,0
1086 data 0,56,0
1088 data 0,0,0
1092 rem 
1094 data 0,0,0
1096 data 16,16,16
1098 data 16,16,16
1100 data 8,8,8
1102 data 8,8,8
1104 data 4,4,4
1106 data 4,4,4
1108 data 4,4,4
1110 data 8,8,8
1112 data 8,8,8
1114 data 16,16,16
1116 data 16,16,16
1118 data 32,32,32
1120 data 32,32,32
1122 data 16,16,16
1124 data 16,16,16
1126 data 8,8,8
1128 data 8,8,8
1130 data 4,4,4
1132 data 8,8,8
1134 data 0,0,0
1138 rem 
1140 data 0,0,0
1142 data 127,255,252
1144 data 127,255,252
1146 data 127,255,252
1148 data 112,0,28
1150 data 112,0,28
1152 data 112,0,28
1154 data 112,0,28
1156 data 112,0,28
1158 data 112,0,28
1160 data 112,0,28
1162 data 112,0,28
1164 data 112,0,28
1166 data 112,0,28
1168 data 112,0,28
1170 data 112,0,28
1172 data 112,0,28
1174 data 127,255,252
1176 data 127,255,252
1178 data 127,255,252
1180 data 0,0,0
1184 rem 
1186 data 0,0,0
1188 data 0,48,0
1190 data 0,120,0
1192 data 0,204,0
1194 data 1,134,0
1196 data 3,3,0
1198 data 62,1,248
1200 data 32,0,8
1202 data 48,0,24
1204 data 24,0,48
1206 data 12,0,96
1208 data 6,0,192
1210 data 12,0,96
1212 data 24,0,48
1214 data 48,124,24
1216 data 97,199,12
1218 data 79,1,228
1220 data 88,0,52
1222 data 112,0,28
1224 data 0,0,0
1226 data 0,0,0
2099 rem 12345 sign
2100 PRINT "  {reverse on}{yellow} {reverse off}    {reverse on}{pink}   {reverse off}   {reverse on}{light blue}   {reverse off}  {reverse on}{black} {reverse off}   {reverse on} {reverse off} {reverse on}{light green}     "
2102 PRINT " {reverse on}{yellow}  {reverse off}   {reverse on}{pink} {reverse off}   {reverse on} {reverse off} {reverse on}{light blue} {reverse off}   {reverse on} {reverse off} {reverse on}{black} {reverse off}   {reverse on} {reverse off} {reverse on}{light green} "
2104 PRINT "{reverse on}{yellow} {reverse off} {reverse on} {reverse off}       {reverse on}{pink} {reverse off}     {reverse on}{light blue} {reverse off} {reverse on}{black} {reverse off}   {reverse on} {reverse off} {reverse on}{light green} "
2106 PRINT "  {reverse on}{yellow} {reverse off}    {reverse on}{pink}   {reverse off}    {reverse on}{light blue}  {reverse off}  {reverse on}{black}     {reverse off} {reverse on}{light green}    "
2108 PRINT "  {reverse on}{yellow} {reverse off}   {reverse on}{pink} {reverse off}         {reverse on}{light blue} {reverse off}     {reverse on}{black} {reverse off}     {reverse on}{light green} "
2110 PRINT "  {reverse on}{yellow} {reverse off}   {reverse on}{pink} {reverse off}     {reverse on}{light blue} {reverse off}   {reverse on} {reverse off}     {reverse on}{black} {reverse off}     {reverse on}{light green} "
2112 PRINT "{reverse on}{yellow}     {reverse off} {reverse on}{pink}     {reverse off}  {reverse on}{light blue}   {reverse off}      {reverse on}{black} {reverse off} {reverse on}{light green}    "
2120 return
```
