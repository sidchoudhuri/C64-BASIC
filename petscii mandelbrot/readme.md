```basic
10 print chr$(147):rem clear screen
20 m=15:rem max iterations
30 for y=0 to 24
40 ci=(y-12)/10
50 for x=0 to 39
60 cr=(x-25)/13
70 zr=0:zi=0
80 for i=1 to m
90 r2=zr*zr:i2=zi*zi
100 if r2+i2>4 then goto 150
110 ni=2*zr*zi+ci
120 zr=r2-i2+cr
130 zi=ni
140 next i
150 rem select petscii character based on iterations
160 c=64:if i>2 then c=102
170 if i>5 then c=119
180 if i>10 then c=126
190 if i>=m then c=160
200 poke 1024+x+y*40,c
210 next x
220 next y
230 goto 230:rem end loop
```
```basic
10 print chr$(147):rem clear screen
20 m=15:rem max iterations
30 for y=0 to 24
40 ci=(y-12)/10
50 for x=0 to 39
60 cr=(x-25)/13
70 zr=0:zi=0
80 for i=1 to m
90 r2=zr*zr:i2=zi*zi
100 if r2+i2>4 then goto 150
110 ni=2*zr*zi+ci
120 zr=r2-i2+cr
130 zi=ni
140 next i
150 rem select petscii character based on iterations
160 c=64:if i>2 then c=102
170 if i>5 then c=119
180 if i>10 then c=126
190 if i>=m then c=160
200 poke 1024+x+y*40,c
210 next x
220 next y
230 goto 230:rem end loop
```
