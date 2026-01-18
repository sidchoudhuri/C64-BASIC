# life (1d cellular automata)
```basic
10 rem 1d cellular automaton
20 poke 53280,0:poke 53281,0:poke 646,1:print chr$(147)
30 print "1d cellular automaton"
40 input "rule (0-255)";r
50 if r<0 or r>255 then 40
60 rs$="":rs=0:input "random start? (y/n)";rs$:if rs$="y"thenrs=1
70 dim a(39),b(39)

80 rem init row
90 ?chr$(147):for i=0 to 39:a(i)=0:next
100 if rs=0 then a(19)=1:goto 170
110 for i=0 to 39:a(i)=abs(rnd(1)>.5):next

170 rem draw generations
180 for y=2 to 24
190 for x=0 to 39
200 p=1024+y*40+x:c=55296+y*40+x
210 if a(x)=1 then poke p,160:poke c,1:goto 230
220 poke p,32:poke c,1
230 next x

240 rem compute next row
250 for x=0 to 39
260 l=x-1:if l<0 then l=39
270 rr=x+1:if rr>39 then rr=0
280 n=a(l)*4+a(x)*2+a(rr)
290 b(x)=(r and (2^n))/ (2^n)
300 next x

310 for x=0 to 39:a(x)=b(x):next
320 next y

330 print:input "again (y/n)";q$
340 if q$="y" then goto 20
```
