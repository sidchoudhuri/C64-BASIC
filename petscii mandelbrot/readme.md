# petscii mandelbrot
```basic
10 print chr$(147)
20 m=15:rem interations
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
150 rem petscii based on iteration
160 c=64:if i>2 then c=102
170 if i>5 then c=119
180 if i>10 then c=126
190 if i>=m then c=160
200 poke 1024+x+y*40,c
210 next x
220 next y
230 get a$:if a$="" then goto 230
240 end
```
# petscii mandelbrot with color
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
150 rem select character and color
160 cl=0:ch=64:rem default black/small dot
170 if i>2 then cl=4:ch=102:rem purple
180 if i>5 then cl=6:ch=119:rem blue
190 if i>10 then cl=2:ch=126:rem red
200 if i>=m then cl=1:ch=160:rem white/solid block
210 ad=1024+x+y*40:rem screen memory address
220 poke ad,ch
230 poke ad+54272,cl:rem color ram (55296-1024=54272)
240 next x
250 next y
260 goto 260```
