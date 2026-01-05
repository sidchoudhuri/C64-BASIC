# [happy new year 2026.prg](https://stigc.dk/c64/basic/?s=2jVTBkpswDL3zFdpMDpCQqe0YEtih_0LAJJ4Fk7GhS_6-soGG0M5ucyBISHrP0pMpgXv7ISA6sjMJSfrHoNbQUnVQ3PTWp_wUeIxAJ4Zum212ux1cRQda5OXjDdDcpNfW9BdICPGOBKpWQ5dR6FqghJBUYZ7HR3-RUfeBgenEHQ7Ui5DFK1a6YFUsWRVePLMwHQYXBxosoE8jRDlC8xn5TMD9J98e93la5D0BgTuvEp9wEVeplFRX8waMsBikgZvQAg7wKc0NP8DGo3ROdM_95tH20N0EZpsOpHLvttpD5PrNJrBVQncbLP28rufwIuaQqxIuuZEFNqu96rxpJrzjKh2Ktml6JTspkGfd_hK2GrLQUOWNrB9I18gS_IaoUgQAtggOZ5AZTS99hQOG__xh4mp4CXYORzRk6PK1Kn0a7DgJ0sfSwThGnaZhUML4_oFB-yHkbJpJxJJ4di4SaYyJOM1x4lZaHsWhWi3m21RW-Mw2G9syhTFWfRFB3RIQqsTpv1CNgndzL3xb3efkUAvluwYGwQ8WBO_uPdWi67WyYiCo9gYqqcVnqz-MdUXOVee9Km5o01ldHMmHcTobp1NIF9Y5ZJw8zTikLLHZdDoVc6cibJRylVl14EHwz-0Lf6YewyodhU3J8QnuSp7Tl2p8pH9v72hEL0RptGRKvia6BGeucrTiHX9N5DQSufTaWNrnRfQanPyjS-cVWjJ3KXZdYlE0dil-7dLUpGSdzb7iSqeZm3vuBm4X24LJ6WJjS4yluqMo-Iu5nd8KayLFXknZdZ5Ux2bVmUK3dS00euh63VJLST8p2Y9jaWY15Pa5keXWt28hC_bOcOoOBxlSe68f56I25j3Fi2CQe2r3aZA_n4sx7pW9JjCHzzR_Aw)
```basic
10 poke 53280,0:poke 53281,0:print chr$(147)
20 text$="*** get ready! ***":gosub 900
30 for t=1 to 1000:next
40 for c=11 to 2 step -1
50 print chr$(147):poke 53280,c:poke 53281,c
60 text$=str$(c-1):gosub 900
70 for d=1 to 400:next
80 next
90 poke 53280,0:poke 53281,0:printchr$(147)
100 text$= "*** new beginnings! 2026 is here - wishing "
110 text$=text$+"you the best in the new year! "
120 text$=text$+"thx to all in the c64 and basic programming "
130 text$=text$+" communities! love to your family - sid (m0nde)   "
140 xi=1:buf$="                                        "
150 print chr$(19)
160 x=int(rnd(1)*40):y=int(rnd(1)*24)
170 poke 1024+y*40+x,42:poke 55296+y*40+x,int(rnd(1)*16)
180 gosub 1000
190 get a$:if a$="" then goto 150
200 end
900 print chr$(5);spc(int((40-len(text$))/2));text$:return
1000 rem fireworks
1005 rem launch
1010 poke 54296,6:poke 54277,16:poke 54278,240:poke 54276,129
1011 gosub 2000
1020 for f=20 to 120 step 4:poke 54273,f: next
1030 poke 54276,128:gosub 2000
1040 rem pop
1050 poke 54296,15:poke 54277,0:poke 54278,240:poke 54276,129:poke 54273,200
1051 gosub 2000
1060 poke 54276,128:gosub 2000
1070 rem burst
1080 poke 54277,0:poke 54278,200:poke 54276,129
1081 gosub 2000
1090 for f=60 to 255 step 6:poke 54273,f:next
1091 gosub 2000
1092 poke 54276,128:gosub 2000
1100 rem sparks
1110 for i=1 to 12:poke 54273,int(rnd(1)*255):poke 54276,129
1120 poke 54276,128:next
1021 gosub 2000
1130 return
2000 rem scroller
2010 print chr$(19):for r=1 to 12:print:next
2020 buf$=mid$(buf$,2)+mid$(text$,xi,1)
2030 print buf$;:xi=xi+1:if xi>len(text$) then xi=1
2040 return
```
# [happy 2026 with buildings.prg](https://stigc.dk/c64/basic/?s=2jVVLj5swEL7zK2ajPYQNUW0Hk-AVlbo9VJWqHrqVeibgBGt5RIZ0yb_v2IaG0Gq1kUI8wzy-mfk8oQROzYsEvmE7EhDxV6BG0KruICv0_ZKGvoAbeet7jEAn--4-WTw8PMAX2cEPmeaXO0BxIY5Ne95DTIi3IXBoNHQJha4BSggRNfp5odNnCbUvGLSdPMGaepzMc4kJymyKMvOiEUXboXG2pv4k9dalyF3qcMy8I2B_43eXj-XGFFxgjoGxiiEt2Oq_y1d4kkdV16o-tnfACItAtVBILe9gDb9UW-AbWHiUjp72uVpcmjN0hYS9bDtQtT3XGO4iU31nHNjM4WfRm2rSshzNP0chpHUOT5-ev37G3jVHnVbVkG8zc8-aqjrXqlMScX5rfksTDEFoOKSVKi-I9lnlsKxInUsfwMTAUfUqoWJ_PuC44Z0fdJyNMvY9igPrE1QtdZ0vqf8QEl9cpgrK0Wo7jIYSFq4uaLTqg5ANE-Isjkbl1DFCR5ytG5MhmkdxxEdkZnov1AGfyWJhOlajjeEiJ8hiArLOkXQEtKxgf1ZlbobocZzUPm1lwkJRpX2RUOJx5hjV7xNi-raJRTHFbuz8FVIYu57muU4sfhPFot2LrCkTh_-q9PhwFS57R9TC1WkCBNgvJ6FngIH5ENg81iGxAfGLR49HjtcYx_IcUQotu7Oukek3g-D-Y3vKlgb4MiTrUtZLyw7f_8B8_9GeR1fTR9uZg9LytdEvrVFxqyrTc50VKNPxJoVYWhCJUdhusYCrtAtYSK5iFFAWG-_xajE7MzI0-ZAw22RzA-xuCK-um-Ag3CWmZHNNbkPuxE200ME_NScU-A1QyqdIydtAp8mZjcxnuKO3gWxHhunWwN5NrOfJyX-6tJtli8cuRbZLjHPXpei2S0OT4rk3ewsrHWbenlI7cLO1TDI1LHE2zTHhP4Lw_0Fu5jfLNYBit6DMrhpYx0bWtZluylJq1ND5MhEGknaQIrewXWRmKGSXVaXy-6U5BcxfWcGSO-hVQM1f2GaMaWweBW65Xq2oWRa9-ni9F25pmB2IPuGI8g8)
```basic
10 poke 53280,0:poke 53281,0:print chr$(14): print chr$(147)
20 text$="*** Get Ready! ***":gosub 900
30 for t=1 to 1000:next
40 for c=11 to 2 step -1
50 print chr$(147):poke 53280,c:poke 53281,c
60 text$=str$(c-1):gosub 900
70 for d=1 to 400:next
80 next
90 poke 53280,0:poke 53281,0:print chr$(147)
91 gosub 500
100 text$= "*** New Beginnings! 2026 is here! - Wishing "
110 text$=text$+"you the best in the new year! "
120 text$=text$+"Thx to all in the C64 and BASIC programming "
130 text$=text$+"communities! Love to your family - Sid (m0nde)   "
140 xi=1:buf$="                                        "
150 print chr$(19)
160 x=int(rnd(1)*40):y=int(rnd(1)*15)
170 poke 1024+y*40+x,42:poke 55296+y*40+x,int(rnd(1)*16)
180 gosub 1000
190 get a$:if a$="" then goto 150
200 end
500 rem buildings
510 base=24:maxh=10
520 for xb=0 to 39:h=int(rnd(1)*maxh)+1
530 addr=1024+base*40+xb:col=55296+base*40+xb
540 for yb=1 to h:poke addr,160:poke col,1
550 addr=addr-40:col=col-40
560 next yb:next xb:return
900 print chr$(5);spc(int((40-len(text$))/2));text$:return
1000 rem fireworks
1005 rem launch
1010 poke 54296,6:poke 54277,16:poke 54278,240:poke 54276,129
1011 gosub 2000
1020 for f=20 to 120 step 4:poke 54273,f: next
1030 poke 54276,128:gosub 2000
1040 rem pop
1050 poke 54296,15:poke 54277,0:poke 54278,240:poke 54276,129:poke 54273,200
1051 gosub 2000
1060 poke 54276,128:gosub 2000
1070 rem burst
1080 poke 54277,0:poke 54278,200:poke 54276,129
1081 gosub 2000
1090 for f=60 to 255 step 6:poke 54273,f:next
1091 gosub 2000
1092 poke 54276,128:gosub 2000
1100 rem sparks
1110 for i=1 to 12:poke 54273,int(rnd(1)*255):poke 54276,129
1120 poke 54276,128:next
1021 gosub 2000
1130 return
2000 rem scroller
2010 print chr$(19):for r=1 to 6:print:next
2020 buf$=mid$(buf$,2)+mid$(text$,xi,1)
2030 print buf$;:xi=xi+1:if xi>len(text$) then xi=1
2040 return
```
# [happy 2026 multistage.prg](https://stigc.dk/c64/basic/?s=2lVZtb6M4EP7Or3CjfghN0PkFSKBLpbb70uqqPand3n6G4CRcE6iAXOHf34yNG6Ddaq9SE3vseXue8UwYJc_FkySe4Es6p-HrhuGmzPKarLbl6ZS5dkgG-4VtcUpq2dSn0eTs7Ix8kzW5l3HanhDYTsJNUR0SElBqCUrWRUnqiJG6IIxSGuagZ7lavoqYOuCkquUzcZjl0bGvsBflqh_lyvJNFFUNl1cOs3uuF9pFql27xvOSEvUd_Hb6kG7AiDbsgWHIonNLVPbf5Qu5kpssz7N8U50QTrlPsopsZSlPiEN-ZtUWTsjEYsxoqs_ZpC0OpN5KksiqJlmu1jmYa2VcnqACHyn82DaYTbzbmevXvkviPCVXlw-314BdsSnj_b7zJ0bqq2K_P-RZnUmI8674V6IxCKIk63if7VqI9iFLyXRP81TahKANoKrJIhYmhzXQTX7zDxRHVAa2xYCwUu5JE4F4WubplNlnLrXDti9gHtxc6JuKFUa5O2vh4qyZu7xjyuOBb4R9ZR-VvY4uQZGvpbalRUyJgP0NFG18GmZr-IwmEwQzhztYph6FAqdE5inUo1ZODtkuRX4tD0hM4kpG3A33cbONGLU8routSSKKkIog3PZTwnv2DKobCInTtIxUSmhFJZCEq2IX6ZSOQsvrXkmb6Bre6tTRwByg1DvQnINhrzOMH45LlUH4h6Xl-brkwY56AhBlWMr6UObwCAYcefZ59byaYuBTlzo7mU9V4dj2H9y2z9XaqCKOCpl1VsqXonyqUOQp0S4-5Kst7Jl5ZC6kNvdDs1ksIIHjbjnnLj1u_TnjAWqbV8cVZ7QDeR1xBTI-DtU23KOqmK9D_b4ZFUfnyuQyHFhzTYU9w8YbBMq8fqT040D7zrmy7I3i9j8OZGEqrKww7GXv9tg5fQel5chbYFDyFUrc8zRK_hClDqRgrM0_ipV1nFfPsSIcGxo6y7r-zvs-evUPQdhvIkf-Rr66oPgwKGxjXdVxU3XVqix2O1mChI37TIghlTokX_dybZljCak-ts_S0ymu5tyeqY0q7nmTzRlON2Fs4p3zEBpgk80YNosmuzi-C900sD2CjvsapSVMmFEUkb9vHx4v78jX2_svP_-6_5NMb26_3ZCrx_uHHzZewOusK8Zs9dS9HiAtLms4gpAH_VIssZMIDLGFHvRu9w2VtX8OMFXiBNv8sX0JjDMdWrQdNIhvQMZPg1bMwNfRoGyed0WK46p-kZB4WbxUxHcYzvlh0QvatXrHccjd5eP36xtcgnwxqJhp66BPGw6W_daoGztIzZhWTc_llsASfDsBFngwjMDUZvcDgOv5T1I44X2jAo0qMFuHhU3UzFJwjGMP2f7EOo6BYoEjDYUXYmmkYonikWfTcDOg1kwyBEJxrnHAoXQcSO-x93D7mewPuzqDQthIUhUHGEegGAwA5OAfZ1WCgfeYC2zHhROcVZBY_2RhOwJOuEolaT5RAtYSyClQi7YTtBeM9Wai4D5kxofzS4GfAFrQFUc0cW9Ak7k6HtVwb4gd72PHFyMKXzm08FfbK65fLz9_0bDyt-iIX6IjfomO-L_oCERHmIkzQEcVGPgapCn6aYqF6Rz_AQ)
```basic
10 poke 53280,0:poke 53281,0:print chr$(14): print chr$(147)
20 text$="*** Get Ready! ***":gosub 900
30 for t=1 to 1000:next
40 for c=11 to 2 step -1
50 print chr$(147):poke 53280,c:poke 53281,c
60 text$=str$(c-1):gosub 900
70 for d=1 to 400:next
80 next
90 poke 53280,0:poke 53281,0:print chr$(147)
91 gosub 500
100 text$= "*** New Beginnings! 2026 is here! - Wishing "
110 text$=text$+"you the best in the new year! "
120 text$=text$+"Thx to all in the C64 and BASIC programming "
130 text$=text$+"communities! Love to your family - Sid (m0nde)   "
140 xi=1:buf$="                                        "
150 print chr$(19)
160 rem x=int(rnd(1)*40):y=int(rnd(1)*15)
170 rem poke 1024+y*40+x,42:poke 55296+y*40+x,int(rnd(1)*16)
175 gosub 3000
180 rem gosub 1000
190 get a$:if a$="" then goto 150
200 end
500 rem buildings
510 base=24:maxh=10
520 for xb=0 to 39:h=int(rnd(1)*maxh)+1
530 addr=1024+base*40+xb:col=55296+base*40+xb
540 for yb=1 to h:poke addr,160:poke col,1
550 addr=addr-40:col=col-40
560 next yb:next xb:return
900 print chr$(5);spc(int((40-len(text$))/2));text$:return
1000 rem fireworks
1005 rem launch
1010 poke 54296,6:poke 54277,16:poke 54278,240:poke 54276,129
1011 gosub 2000
1020 for f=20 to 120 step 4:poke 54273,f: next
1030 poke 54276,128:gosub 2000
1040 rem pop
1050 poke 54296,15:poke 54277,0:poke 54278,240:poke 54276,129:poke 54273,200
1051 gosub 2000
1060 poke 54276,128:gosub 2000
1070 rem burst
1080 poke 54277,0:poke 54278,200:poke 54276,129
1081 gosub 2000
1090 for f=60 to 255 step 6:poke 54273,f:next
1091 gosub 2000
1092 poke 54276,128:gosub 2000
1100 rem sparks
1110 for i=1 to 12:poke 54273,int(rnd(1)*255):poke 54276,129
1120 poke 54276,128:next
1021 gosub 2000
1130 return
2000 rem scroller
2010 print chr$(19):for r=1 to 6:print:next
2020 buf$=mid$(buf$,2)+mid$(text$,xi,1)
2030 print buf$;:xi=xi+1:if xi>len(text$) then xi=1
2040 return

3000 rem === VISUAL FIREWORK (HIGH BURST) ===

3010 rem pick launch start
3020 x=int(rnd(1)*38)+1
3030 y=24                     : rem just above buildings
3040 dx=int(rnd(1)*3)-1
3050 peak=int(rnd(1)*11)+1    : rem explode between rows 6-10
3051 gosub 2000
3060 rem --- LAUNCH ---
3070 for i=1 to (y-peak)
3080 addr=1024+y*40+x
3090 poke addr,42
3100 poke 55296+y*40+x,7
3101 gosub 2000
3110 for d=1 to 20:next d
3120 poke addr,32
3130 y=y-1:x=x+dx
3140 if x<1 then x=1
3150 if x>38 then x=38
3151 gosub 2000
3160 next i

3170 rem --- BURST ---
3180 gosub 1000              : rem SID multistage sound

3190 for i=1 to 28
3200 bx=x+int(rnd(1)*9)-4
3210 by=y+int(rnd(1)*7)-3
3220 if bx<0 or bx>39 or by<0 or by>11 then goto 3260
3230 addr=1024+by*40+bx
3240 poke addr,42
3250 poke 55296+by*40+bx,int(rnd(1)*16)
3251 gosub 2000
3260 next i

3270 for d=1 to 200:next d

3280 rem --- FADE ---
3290 for i=1 to 28
3300 bx=x+int(rnd(1)*9)-4
3310 by=y+int(rnd(1)*7)-3
3320 if bx<0 or bx>39 or by<0 or by>11 then goto 3360
3330 poke 1024+by*40+bx,32
3331 gosub 2000
3360 next i

3370 return
```
