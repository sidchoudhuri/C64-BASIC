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
10 print chr$(147)
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
160 cl=14:ch=64:rem default lt blue small dot
170 if i>2 then cl=4:ch=102:rem purple checked
180 if i>5 then cl=6:ch=119:rem blue solid block
190 if i>10 then cl=2:ch=126:rem red square
200 if i>=m then cl=0:ch=160:rem black solid block
210 ad=1024+x+y*40:poke ad+54272,cl:poke ad,ch
240 next x:next y
260 goto 260
```
# mandelbrot petscii with color and positioning
```basic
10 print chr$(147)
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
160 cl=14:ch=127:rem default lt blue small dot
170 if i>2 then cl=4:ch=102:rem purple checked
180 if i>5 then cl=3:ch=127:rem blue solid block
190 if i>10 and x<=19 and y<=12 then ch=126:cl=10:rem pink block, top left
191 if i>10 and x>=20 and y<=12 then ch=124:cl=10:rem pink block, top right
192 if i>10 and x<=19 and y>=13 then ch=123:cl=10:rem pink block, bottom left
192 if i>10 and x>=20 and y>=13 then ch=108:cl=10:rem pink block, bottom right
200 if i>=m then cl=0:ch=160:rem black solid block
210 ad=1024+x+y*40:poke ad+54272,cl:poke ad,ch
240 next x:next y
260 goto 260
```
# mandelbrot petscii with color and positioning (optimized branching)
```basic
5 s=1024:c=55296:m=15:rem pre-define addresses
10 print chr$(147)
30 for y=0 to 24
35 v=y*40:rem pre-calculate row offset
40 ci=(y-12)/10
50 for x=0 to 39
60 cr=(x-25)/13
70 zr=0:zi=0
80 for i=1 to m
90 r2=zr*zr:i2=zi*zi:if r2+i2>4 then goto 150
110 ni=2*zr*zi+ci:zr=r2-i2+cr:zi=ni
140 next i
150 rem optimized selection
160 l=14:h=127:rem default light blue
170 if i>2 then l=4:h=102
180 if i>5 then l=3:h=127
190 if i<10 then goto 210
200 l=10:h=108:if x<20 and y<13 then h=126
201 if x>19 and y<13 then h=124
202 if x<20 and y>12 then h=123
205 if i=16 then l=0:h=160:rem black heart of set
210 a=s+x+v:poke a,h:poke a+54272,l
240 next x,y
260 goto 260
```

