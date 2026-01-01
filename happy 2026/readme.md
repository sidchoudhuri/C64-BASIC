```basic
10 poke 53280,0:poke 53281,0:print chr$(147)
20 text$="*** get ready! ***":gosub500
30 for t=1 to 1000:next
40 for c=10 to 1 step -1
50 print chr$(147):poke 53280,c:poke 53281,c
60 text$=str$(c):gosub 500
70 for d=1 to 400:next
80 next
90 poke 53280,0:poke 53281,0:print chr$(147)
100 text$="*********************":gosub 500
110 text$="*  happy new year!  *":gosub 500
120 text$="*       2026        *":gosub 500
130 text$="*********************":gosub 500
140 for i=1 to 26
150 x=int(rnd(1)*40):y=int(rnd(1)*24)
160 poke 1024+y*40+x,42:poke 55296+y*40+x,int(rnd(1)*16)
170 gosub 1000:next
180 poke 53280,0:poke 53281,0:printchr$(147)
190 text$="new beginnings!:gosub500:?
200 text$="2026 is here":gosub500:?
210 text$="wishing you the best!":gosub500:?
220 geta$:if a$="" then goto 220
230 end
500 print chr$(5);spc(int((40-len(text$))/2));text$:return
600 rem scroller
610 print chr$(147)
620 text$= "*** new beginnings! 2026 is here — wishing you the best! ***"
630 buf$=space$(40)
640 i=1
650 print chr$(19)
660 buf$=mid$(buf$,2)+mid$(text$,i,1)
670 print buf$;
680 i=i+1
690 if i>len(text$) then i=1
700 for d=1 to 70:next d
710 goto 650
1000 rem fireworks
1005 rem launch
1010 poke 54296,6:poke 54277,16:poke 54278,240:poke 54276,129
1020 for f=20 to 120 step 4:poke 54273,f:for d=1 to 8:next: next
1030 poke 54276,128:for d=1 to 50:next
1040 rem pop
1050 poke 54296,15:poke 54277,0:poke 54278,240:poke 54276,129:poke 54273,200
1060 for d=1 to 40:next:poke 54276,128
1070 rem burst
1080 poke 54277,0:poke 54278,200:poke 54276,129
1090 for f=60 to 255 step 6:poke 54273,f:for d=1 to 3:next:next:poke 54276,128
1100 rem sparks
1110 for i=1 to 12:poke 54273,int(rnd(1)*255):poke 54276,129:for d=1 to 10:next:poke 54276,128:next
1120 return
```
