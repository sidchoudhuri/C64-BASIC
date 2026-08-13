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
