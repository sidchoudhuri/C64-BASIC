# [16 color petscii mandelbrot](https://stigc.dk/c64/basic/?s=2TVLNktsgDL7zFDr04MRkCthONkzpu1BMEs3a4AFn1_HTV9jpTG8Iffp-EB30OIKr5OWgbzHBauQc5UUnb3tXrQcd_DKvVI7w54lDDy4OBLMp2ReTAqaEYQb3SD8q2RLHaORZ30yrs5FCtdpF07XqopgSUPhfRsAcgTpf5nVshXZoqtdJqsNPKTaZ0U4ZUvwuMBfHafALTIMNnjU7xbJTNFftkqmWk-pottFrMkKvaP5jIa_PMRQwxRnALphZ00Hpu4d3n5nC59kG5-GWIl36MHsKF3qwOeM95HdcvMEYk4f5YQMo1u5G0MjCPeqkzJqOa9JIBzyuqGkgqRrV7xvN-AD3SMCzYO1b3Q7uOdjZZwj-G3C0dww2vTbpzetk05y38jn1G3BTJHt2xhhYJyCgUceii7XDEj-pE6rapfIKAbfNAbKzgPeD7GHynnXf4EWAG4yr8KDdg1YninP8Ne6uy5VQ7EOA7U2ul_pLT_HTU1W7yN3wr-Luwa5kqAguvPwLsSemA5P0SyiBBcHP_Mql5C2XLe94w2XDL1xyKbhU_IMrLjsu_gI)
```basic
5 dim c(17):for z=1to17:readc(z):nextz:rem build color array
10 print chr$(147):m=16:f=4:s=1024:co=54272
20 for y=0 to 24:v=y*40:ci=(y-12)/10:rem maps row to complex plane
30 for x=0 to 39:cr=(x-25)/13:zr=0:zi=0:rem maps column to real axis
35 rem checks distance from center and assigns color if more than 2
40 for i=1 to m:r2=zr*zr:i2=zi*zi:if r2+i2>f then goto 60
45 rem calculates new imaginary and real parts and updates for iteration
50 ni=2*zr*zi+ci:zr=r2-i2+cr:zi=ni:next i
60 rem map colors from array
70 cl=c(i):ch=160:if i<m then ch=102
80 ad=s+x+v:poke ad+co,cl:poke ad,ch
90 next x,y
100 goto 100
110 data 0,6,9,11,4,14,5,3,13,7,1,10,12,8,2,15,0
```
# [10 print 16 color mandelbrot](https://stigc.dk/c64/basic/?s=2TVLNkqMgEL7zFH3Yg0YyC6hxQi3zLiyS2DUKFpgZ49MPaLZqbzR8_f1000KPE5iCd6W8-QCb4ovnnQxW96bYSunsumypnODvA8cejB8TTIegn4QzmAO6BcwQfhW8SRyT4hd5U42MijPRSONV24hOEMEg8z8Vg8VDevlSz1PDpEFVPM9clL8522UmPUcI_jvDjJ_m0a4wj9pZUh8U60FRX6UJqljPok29tdyCYnJD9R9L8vqYXAanOCPoFSOpW8jvZrDmM6bwcdHOWLgFny6tW2wK53rQMeLdxVdcvMHkg4Vl0A4EaQ4jqHjmnmQQagunLUhMBzxtKFNDEBWKj1vqsQ7uPgEvjDQvdT2ax6gXG8HZb8BJ39Hp8Nyld6-zDkvcy8fc78BdMdnTC3pHWgYOlThlXawM5vhBnFFUJuQpONw3B0guDF4DOcLEI-uxwY6BGZUpsJRmUEXXvbVVcH3By1IeY0r7ZDkO_pmOKPmKCfLOQPcqVmv1JWf_aVNVGU_N-K-iZiDX5DK7WGn-LOwYQzoQnr5OiqWB0Qu9Us5pQ3lDW1pTXtOOcsoZ5YK-U0F5S9kP)
```basic
5 dim c(17):for z=1to17:readc(z):nextz:rem build color array
10 print chr$(147):m=16:f=4:s=1024:co=54272
20 for y=0 to 24:v=y*40:ci=(y-12)/10:rem maps row to complex plane
30 for x=0 to 39:cr=(x-25)/13:zr=0:zi=0:rem maps column to real axis
35 rem checks distance from center and assigns color if more than 2
40 for i=1 to m:r2=zr*zr:i2=zi*zi:if r2+i2>f then goto 60
45 rem calculates new imaginary and real parts and updates for iteration
50 ni=2*zr*zi+ci:zr=r2-i2+cr:zi=ni:next i
60 rem map colors from array
70 cl=c(i):ch=(77.5+rnd(1))
80 ad=s+x+v:poke ad+co,cl:poke ad,ch
90 next x,y
100 goto 100
110 data 0,6,9,11,4,14,5,3,13,7,1,10,12,8,2,15,0
```
# WIP 16 color petscii mandelbrot with machine language color cycling
```basic
5 dim c(17):for z=1to17:readc(z):nextz:rem build color array
9 data 0,6,9,11,4,14,5,3,13,7,1,10,12,8,2,15,0:rem colors
10 print chr$(147):m=16:f=4:s=1024:co=54272
20 for y=0 to 24:v=y*40:ci=(y-12)/10:rem maps row to complex plane
30 for x=0 to 39:cr=(x-25)/13:zr=0:zi=0:rem maps column to real axis
35 rem checks distance from center and assigns color if more than 2
40 for i=1 to m:r2=zr*zr:i2=zi*zi:if r2+i2>f then goto 60
45 rem calculates new imaginary and real parts and updates for iteration
50 ni=2*zr*zi+ci:zr=r2-i2+cr:zi=ni:next i
60 rem map colors from array
70 cl=c(i):ch=(77.5+rnd(1))
80 ad=s+x+v:poke ad+co,cl:poke ad,ch
90 next x,y
499 rem color cycling
500 for i=49152 to 49201:read d:poke i,d
510 sys 49152:goto 200
520 rem color cycling ml
530 data 162,0,189,0,216,24,105,1,41,15,157,0,216,189,0,217,24,105,1,41,15
540 data 157,0,217, 189,0,218,24,105,1,41,15,157,0,218,189,0,219,24,105,1
550 data 41,15,157,0,219,232,208,209,96
```
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
# 10 print color mandelbrot 
```basic
10 m=15:fory=0to24:ci=(y-12)/10:for x=0 to 39:cr=(x-25)/13:zr=0:zi=0
20 fori=1tom:r2=zr*zr:i2=zi*zi:if r2+i2>4 then goto 200
30 ni=2*zr*zi+ci:zr=r2-i2+cr:zi=ni:nexti
200 rem colors
210 cl=14:rem default lt blue
220 if i>2 then cl=4:rem purple
230 if i>5 then cl=3:rem cyan
240 if i>10 then cl=2:rem red
250 if i>=m then cl=0:rem black
260 ad=1024+x+y*40:poke ad+54272,cl:poke ad,(77.5+rnd(1))
270 nextx:nexty
280 geta$:ifa$=""thengoto280
```
