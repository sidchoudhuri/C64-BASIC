# [16 color petscii mandelbrot](https://stigc.dk/c64/basic/?s=2TVLNktsgDL7zFDr04MRkCthONkzpu1BMEs3a4AFn1_HTV9jpTG8Iffp-EB30OIKr5OWgbzHBauQc5UUnb3tXrQcd_DKvVI7w54lDDy4OBLMp2ReTAqaEYQb3SD8q2RLHaORZ30yrs5FCtdpF07XqopgSUPhfRsAcgTpf5nVshXZoqtdJqsNPKTaZ0U4ZUvwuMBfHafALTIMNnjU7xbJTNFftkqmWk-pottFrMkKvaP5jIa_PMRQwxRnALphZ00Hpu4d3n5nC59kG5-GWIl36MHsKF3qwOeM95HdcvMEYk4f5YQMo1u5G0MjCPeqkzJqOa9JIBzyuqGkgqRrV7xvN-AD3SMCzYO1b3Q7uOdjZZwj-G3C0dww2vTbpzetk05y38jn1G3BTJHt2xhhYJyCgUceii7XDEj-pE6rapfIKAbfNAbKzgPeD7GHynnXf4EWAG4yr8KDdg1YninP8Ne6uy5VQ7EOA7U2ul_pLT_HTU1W7yN3wr-Luwa5kqAguvPwLsSemA5P0SyiBBcHP_Mql5C2XLe94w2XDL1xyKbhU_IMrLjsu_gI)
```basic
5 dim c(17):for z=1to17:readc(z):nextz:rem build color array
10 print chr$(147):m=16:f=4:s=1024:co=54272
20 for y=0 to 24:v=y*40:ci=(y-12)/10:rem maps row to complex plane
30 for x=0 to 39:cr=(x-25)/13:zr=0:zi=0:rem maps column to real axis
35 rem checks distance from center and assigns color if more than 2
40 for i=1 to m:r2=zr*zr:i2=zi*zi:if r2+i2>f then goto 70
45 rem calculates new imaginary and real parts and updates for iteration
50 ni=2*zr*zi+ci:zr=r2-i2+cr:zi=ni:next i
60 rem map colors from array
70 cl=c(i):ch=160:if i<=m then goto 90
80 ad=s+x+v:poke ad+co,cl:poke ad,ch
90 next x,y
100 goto 100
110 data 0,6,9,11,4,14,5,3,13,7,1,10,12,8,2,15,0
```
# [10 print looping 16 color mandelbrot (commented)](https://stigc.dk/c64/basic/?s=2TVLNkpwgEL7zFH3IQUcmAdRxhyryLgSZsWsVLGB21acP6qQqNxq-_n7obqHHCUzBu1I-fIBN8eR5J4PVvSm2Ujq7pC2XE_x54diD8WOG6RD0SjiDOaBLYIbwo-BN5pgUv8mHamRUnIlGGq_aRnSCCAY7_6oYJA_55Uutl4ZJg6pYr1yUvzg7ZCY9Rwj-e4cZP82jXWAetbOkPimWk6K-SxNUsVxFm3truQXF5IbqP5bs9TW5HZzjjKAXjKRuYX83gzWfMYePSTtj4RF8vrQu2RzO9aBjxKeL77j4gMkHC2nQDgRpTiOo-M49ySDUFi5bkJgPeNlQ5oYgKhS_H7nHOnj6DLwx0rzV9Wheo042grPfgJN-otNhPaQPr7MOKR7la-4P4KGY7emE3pGWgUMlLrsuVgb3-EFcUVQm7L_g8JgcILkxeH_IGSaeWc8JdgzMqEyBpTSDKrruZ1sF1xe8LMkHA92rWC3Vl5z9p81VZTw147-KmoHcs49dZ6H7OrAzqGCE593IvjUweqN3yjltKG9oS2vKa9pRTjmjXNAPKihvKfsL)
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
100 goto 20
110 data 0,6,9,11,4,14,5,3,13,7,1,10,12,8,2,15,0
```
# 10 print looping 16 color mandelbrot (10 liner)
```basic
10 dimc(17):forz=1to17:readc(z):next
20 printchr$(147):m=16:f=4:s=1024:co=54272
30 fory=.to24:v=y*40:ci=(y-12)/10
40 forx=.to39:cr=(x-25)/13:zr=.:zi=.
50 fori=1tom:r2=zr*zr:i2=zi*zi:if r2+i2>fthengoto70
60 ni=2*zr*zi+ci:zr=r2-i2+cr:zi=ni:next i
70 cl=c(i):ch=(77.5+rnd(1))
80 ad=s+x+v:pokead+co,cl:pokead,ch
90 next x,y:goto30
100 data.,6,9,11,4,14,5,3,13,7,1,10,12,8,2,15,.
```
# 10 print looping 16 color mandelbrot (6 liner)
```basic
10 dimc(17):forz=1to17:readc(z):next:data.,6,9,11,4,14,5,3,13,7,1,10,12,8,2,15,.
20 printchr$(147):m=16:f=4:s=1024:co=54272
30 fory=.to24:v=y*40:ci=(y-12)/10:forx=.to39:cr=(x-25)/13:zr=.:zi=.
40 fori=1tom:r2=zr*zr:i2=zi*zi:ifr2+i2>fthengoto60
50 ni=2*zr*zi+ci:zr=r2-i2+cr:zi=ni:next i
60 cl=c(i):ch=(77.5+rnd(1)):ad=s+x+v:pokead+co,cl:pokead,ch:next x,y:goto30
```
# WIP 16 color petscii mandelbrot with machine language color cycling
```basic
5 dim c(17):for z=1to17:readc(z):nextz:rem mandelbrot color map
9 cs=0:for z=49152 to 49201:read d:poke z,d:cs=cs+d:next z
10 poke 53280,0:poke 53281,0:print chr$(147):m=16:f=4:s=1024:co=54272
20 for y=0 to 24:v=y*40:ci=(y-12)/10
30 for x=0 to 39:cr=(x-25)/13:zr=0:zi=0
40 for i=1 to m:r2=zr*zr:i2=zi*zi:if r2+i2>f then goto 60
50 ni=2*zr*zi+ci:zr=r2-i2+cr:zi=ni:next i
60 cl=c(i):ch=102:if i>=m then goto 90
80 ad=s+x+v:poke ad+co,cl:poke ad,ch
90 next x,y
100 sys 49152:for t=1 to 100:next t:goto 100
110 data 0,6,9,11,4,14,5,3,13,7,1,10,12,8,2,15,0
120 data 162,0,189,0,216,24,105,1,41,15,157,0,216,189,0,217,24,105,1,41,15
130 data 157,0,217,189,0,218,24,105,1,41,15,157,0,218,189,0,219,24,105,1
140 data 41,15,157,0,219,232,208,209,96
```
## ml color cycler (49 bytes)
```assembly
49152  A2 00           LDX #$00          ; 162,0     - Load X with 0 (loop counter, 0-255)
49154  BD 00 D8        LDA $D800,X       ; 189,0,216 - Load color from $D800+X
49157  18              CLC               ; 24        - Clear carry
49158  69 01           ADC #$01          ; 105,1     - Add 1 to color
49160  29 0F           AND #$0F          ; 41,15     - Mask to 0-15 (wraps around)
49162  9D 00 D8        STA $D800,X       ; 157,0,216 - Store back to $D800+X
49165  BD 00 D9        LDA $D900,X       ; 189,0,217 - Load color from $D900+X
49168  18              CLC               ; 24        - Clear carry
49169  69 01           ADC #$01          ; 105,1     - Add 1 to color
49171  29 0F           AND #$0F          ; 41,15     - Mask to 0-15
49173  9D 00 D9        STA $D900,X       ; 157,0,217 - Store back to $D900+X
49176  BD 00 DA        LDA $DA00,X       ; 189,0,218 - Load color from $DA00+X
49179  18              CLC               ; 24        - Clear carry
49180  69 01           ADC #$01          ; 105,1     - Add 1 to color
49182  29 0F           AND #$0F          ; 41,15     - Mask to 0-15
49184  9D 00 DA        STA $DA00,X       ; 157,0,218 - Store back to $DA00+X
49187  BD 00 DB        LDA $DB00,X       ; 189,0,219 - Load color from $DB00+X
49190  18              CLC               ; 24        - Clear carry
49191  69 01           ADC #$01          ; 105,1     - Add 1 to color
49193  29 0F           AND #$0F          ; 41,15     - Mask to 0-15
49195  9D 00 DB        STA $DB00,X       ; 157,0,219 - Store back to $DB00+X
49198  E8              INX               ; 232       - Increment X
49199  D0 D1           BNE $D154         ; 208,209   - Loop back if X != 0
49201  96              BRK               ; 96        - End/crash
```
## ml color cycler (skips black)
```assembly
$C000  49152  A2 00           LDX #$00          ; 162,0     - Load X with 0 (loop counter, 0-255)
$C002  49154  BD 00 D8        LDA $D800,X       ; 189,0,216 - Load color from $D800+X
$C005  49157  F0 08           BEQ $C00F         ; 240,8     - If color is 0 (black), skip ahead 8 bytes
$C007  49159  18              CLC               ; 24        - Clear carry
$C008  49160  69 01           ADC #$01          ; 105,1     - Add 1 to color
$C00A  49162  29 0F           AND #$0F          ; 41,15     - Mask to 0-15 (wraps around)
$C00C  49164  9D 00 D8        STA $D800,X       ; 157,0,216 - Store back to $D800+X
$C00F  49167  BD 00 D9        LDA $D900,X       ; 189,0,217 - Load color from $D900+X
$C012  49170  F0 08           BEQ $C01C         ; 240,8     - If color is 0 (black), skip ahead 8 bytes
$C014  49172  18              CLC               ; 24        - Clear carry
$C015  49173  69 01           ADC #$01          ; 105,1     - Add 1 to color
$C017  49175  29 0F           AND #$0F          ; 41,15     - Mask to 0-15
$C019  49177  9D 00 D9        STA $D900,X       ; 157,0,217 - Store back to $D900+X
$C01C  49180  BD 00 DA        LDA $DA00,X       ; 189,0,218 - Load color from $DA00+X
$C01F  49183  F0 08           BEQ $C029         ; 240,8     - If color is 0 (black), skip ahead 8 bytes
$C021  49185  18              CLC               ; 24        - Clear carry
$C022  49186  69 01           ADC #$01          ; 105,1     - Add 1 to color
$C024  49188  29 0F           AND #$0F          ; 41,15     - Mask to 0-15
$C026  49190  9D 00 DA        STA $DA00,X       ; 157,0,218 - Store back to $DA00+X
$C029  49193  BD 00 DB        LDA $DB00,X       ; 189,0,219 - Load color from $DB00+X
$C02C  49196  F0 08           BEQ $C036         ; 240,8     - If color is 0 (black), skip ahead 8 bytes
$C02E  49198  18              CLC               ; 24        - Clear carry
$C02F  49199  69 01           ADC #$01          ; 105,1     - Add 1 to color
$C031  49201  29 0F           AND #$0F          ; 41,15     - Mask to 0-15
$C033  49203  9D 00 DB        STA $DB00,X       ; 157,0,219 - Store back to $DB00+X
$C036  49206  E8              INX               ; 232       - Increment X
$C037  49207  D0 B9           BNE $C000         ; 208,185   - Loop back if X != 0
$C039  49209  96              BRK               ; 96        - End/crash
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
