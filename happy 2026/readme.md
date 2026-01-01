[happy new year 2026.prg](https://stigc.dk/c64/basic/?s=2jVTRsqIwDH3nK6LjAyjOthVQcNh_QSjauVCcFvbi32_aworuzr3LAzQhyTkkJ1AC9-6DQ3xgJxKS7I9BjaGE7KG8qY1Po2PgMQI9H_tNvt5ut3DlPSheVI8VoLnOrp0eLpAS4h0I1J2CPqfQd0AJIZnEPC9y_jKn9gUD3fM77KkXI4tXrGzBqlyyKr1kZqF7DC73NFhAHx1E5aCjGflEwD7Tbz_3-bXIewIC-72Sf8KFX4WUQl71ChhhCQgNN6447OFT6Bu-gLVH6Zxo77v1oxugv3HM1j0Iac-m2oMXamUS2FtCfxsN_aJp5vAyiaCQFVwKLUpsVndVRdtOeIe3dCi7th2k6AVHnk33i5tqyEJBXbSieSBdLSrwWyIrHgCYIjicUeQ0uww1Dhj-88LEt-Gl2Dkc0Zijy1ey8mmwjUiQPZYOFmHUcRoGJSzaPTBoN4YRm2YSszSZnYtEmmAiTtNN3EjLozhUo8Vik4ka7_l6bVomMcaoLyaoWwJcVjj9F6pxcNb30jfV_YjsGy5928Ag-MGC4GzPmeL9oKQRA0G1t1ALxT879aGNK7auphhkeUObzuqKkHyYZLNxPIZ0YZ1CFpGnmYSUpZjNnHTr3KgBiePD7kf0DD2EdeaETMnhCWZLnKYtYLYnJHJ0790djfiFGI2XzMjXxJbgzFZOvgY-OuDLoLSheVpEv4ORf3QhnbuQ2C6wOHZdSF67MDUhpV9xodPM9L2wAzOLaYqL6cfEljWX6ozj4C9mZh5vWBMJRuEF9WBQrWrYrBpdqq5puHKe13XJDCX1pGReutLMKMruYyuqjW9OIQt21rDqDEcRUvNfZnNRE3POcJFHsaNmH0bx8ylstxdmzV2Oo_kb)
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
1020 for f=20 to 120 step 4:poke 54273,f: next
1030 poke 54276,128:gosub 2000
1040 rem pop
1050 poke 54296,15:poke 54277,0:poke 54278,240:poke 54276,129:poke 54273,200
1060 poke 54276,128:gosub 2000
1070 rem burst
1080 poke 54277,0:poke 54278,200:poke 54276,129
1090 for f=60 to 255 step 6:poke 54273,f:next
1091 poke 54276,128:gosub 2000
1100 rem sparks
1110 for i=1 to 12:poke 54273,int(rnd(1)*255):poke 54276,129
1120 poke 54276,128:next
1021 gosub 2000
1130 return
2000 rem scroller
2000 print chr$(19):for r=1 to 12:print:next
2010 buf$=mid$(buf$,2)+mid$(text$,xi,1)
2020 print buf$;:xi=xi+1:if xi>len(text$) then xi=1
2020 return
```
