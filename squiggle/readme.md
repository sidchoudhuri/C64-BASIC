# [Squiggly!](https://stigc.dk/c64/basic/?s=2NczhCsIwDATg_32SjcbRpI1oIA8z2BCRtYn6_lgc_ffdcVw6lJnuVzG1y7tu0zLHkhaOn2edbF7rholyQGuv_YjO0JcnC-BgBuRhAqRhBMRAZzBI_7rflR5uGDI5qxfxop7FszqJkzqKo5o82rf9AA)
```basic
0m=55296:p=p-rnd(.)+40.5+sin(p)and1023
1pokem+q5,6:pokem+q4,1:pokem+q3,15:pokem+q2,12:pokem+q1,11
2pokem+p,0:poke1024+p,81
32q5=q4:q4=q3:q3=q2:q2=q1:q1=p:goto
```
# [Squiggly! - One Liner](https://stigc.dk/c64/basic/?s=2DcjLDYAgEAXAdjSgAWRJfMm2ADVw8rr825fbZIywXDUe9lTe3JSjNe6BJCL3BrV02N7llWjJ0RFh8cTkgcEdnRsaV1QuKCz40g8)
```basic
0p=p-rN(1)+40.5aN1023:pO55296+w,6:pO1024+p,paN255:w=v:v=u:u=t:t=s:s=r:r=q:q=p:gO
```
```basic
0p=p-rnd(.)+40.5+sin(p)and1023:poke1024+p,81:q=p:goto
```
# [Squiggly! Words](https://stigc.dk/c64/basic/?s=2RZHBcsIgFEX3-QrqdKET2skjwZjXof0WixgzGEAgavr1JTG2K84w9_IOAAUJQUDBKpRScM6aLfZix3aoRYFf8uRf11DVm48MgHjVE2d1Z1qyehnPbdsNl7AinSG96q0fSXB7qUhq500GbMqqnpYMZ8iBluWCjDK-YEnhGahovRCndQbl44B8S5tlu6YMFtxReIYbCmkcJ91RfzbxpMykPrmerXWT7GIn7WCi8hkriBPuzZvDGjZ5VbzzvTmkJyjnUmdkWpSJaXroYmcN-U7FgzqQ75FMsYzx2UzKfKRbXHCg1RM9hT929HHnEBI6pfS6z_UmKwvyI0YcxR3v4oY3ccWrGHAQEaMIGIRHLy54ES59hM4BWxst8NlQK-VI9HupiT3--_4C)
```basic
10 ss=1024:cc=55296:m=828:k=0:?chr$(147);
20 pokem,32:pokem+1,33:pokem+2,25:pokem+3,12:pokem+4,7:pokem+5,7
30 pokem+6,9:pokem+7,21:pokem+8,17:pokem+9,19
40 ifk>9thenk=0
50 p=p-rnd(1)+40.5and1023
60 pokecc+y,6:pokecc+u,4:pokecc+r,14:pokecc+p,3:pokess+p,peek(m+k)
70 z=y:y=x:x=w:w=v:v=u:u=t:t=s:s=r:r=q:q=p:k=k+1:goto15
```
# 10 PRINT Random Fill
```basic
0p=p-rnd(.)*40and1023:poke1024+p,77.5+rnd(1):goto
```
# Simple Diagonal 10 PRINT
```basic
0p=p-rnd(.)+40and1023:poke1024+p,77.5+rnd(1):goto
```
# Sober? by Bobby Brightling
```basic
0printchr$(147-b)"{home}sober?";:poke53270,200+(tianda):getk$:a=a+(k$<>"")*(a<7)*(a+1):b=4:goto
```
# Scrolling 10 PRINT
```basic
0 poke53270,peek(53270)and247:?chr$(147);
10 a$=a$+chr$(205.5+rnd(1))
20 fori=1to(len(a$)-cos(39.5+rnd(1))*2.5):forx=7to0step-1
30 poke53270,(peek(53270)and248)+x
40 ?tab(0);mid$(a$,i,sin(39.5+rnd(1))*2.5);:
50 next x,i
70 goto10
```
# 53270
```basic
0 ?chr$(147);:rem poke53270,peek(53270)and247
10 a$=a$+chr$(205.5+rnd(1))
20 fori=1to(len(a$)-40):forx=-7to0step-1
30 poke53270,(peek(53270)and248)+xand16
40 print tab(0);mid$(a$,i,39);:
50 next x,i
60 goto10
```
# WORM
```basic
10 m=55296:n=1024:poke53272,23:?chr$(147);
20 ifpeek(214)*40+peek(211)>996thenpoken+998,223:poken+999,222:poke211,0:poke214,0
30 p=p-rnd(.)+40.5+sin(p)and1023
40 ?chr$(169+int(rnd(.)*2)*54)chr$(222+int(rnd(.)*2)*8);
50 pokem+u,14:poken+u,(48.5+rnd(1)):pokem+t,1:pokem+s,15:pokem+r,12:pokem+q,11
51 pokem+p,0:poke1024+p,252
60 u=t:t=s:s=r:r=q:q=p:goto20
```
```basic
10 m=55296:n=1024:poke53272,23:?chr$(147);
20 ifpeek(214)*peek(211)=912thenpoken+998,223:poken+999,222:?chr$(19);
30 p=p-rnd(.)+40.5+sin(p)and1023
40 ?chr$(169+int(rnd(.)*2)*54)chr$(222+int(rnd(.)*2)*8);
50 pokem+u,14:poken+u,(48.5+rnd(1)):pokem+t,1:pokem+s,15:pokem+r,12:pokem+q,11:pokem+p,0:poke1024+p,252
60 u=t:t=s:s=r:r=q:q=p:goto20
```
```basic
10 m=55296:n=1024:poke53272,23:?chr$(147);
20 ifpeek(214)*peek(211)=990thenpoken+998,223:poken+999,222:?chr$(19);
30 p=p-rnd(.)+40.5+sin(p)and1023
40 ?chr$(169+int(rnd(.)*2)*54)chr$(222+int(rnd(.)*2)*8);
50 pokem+u,14:poken+u,(48.5+rnd(1)):pokem+t,1:pokem+s,15:pokem+r,12:pokem+q,11
51 pokem+p,0:poke1024+p,252
60 u=t:t=s:s=r:r=q:q=p:goto20
```
12345678901234567890123456789012345678901234567890123456789012345678901234567890
```basic
10 gosub100:m=55296:n=1024
20 p=p-rnd(.)+40.5+sin(p)and1023
30 pokem+u,14:poken+u,(48.5+rnd(1)):pokem+t,1:pokem+s,15:pokem+r,12:pokem+q,11
40 pokem+p,0:poke1024+p,252
50 u=t:t=s:s=r:r=q:q=p:goto20

100 a$=chr$(145)+"list"+chr$(13):gosub200
105 a$="10 m=55296:n=1024"+chr$(13)
110 a$=a$+"20 p=p-rnd(.)+40.5+sin(p)and1023"+chr$(13)
111 gosub200
120 a$="30 pokem+u,14:poken+u,(48.5+rnd(1)):pokem+t,1:pokem+s,15:pokem+r,12:"
150 a$=a$+"pokem+q,11"+chr$(13)+"40 pokem+p,0:poke1024+p,252"+chr$(13)
160 a$=a$+"50 u=t:t=s:s=r:r=q:q=p:goto20"+chr$(13)
161 gosub200
170 a$="run"+chr$(13):gosub200
180 return

200 forx=1tolen(a$):printmid$(a$,x,1);:forw=1to10:next:next:return
```
```basic
10 gosub100:m=55296:n=1024
11 fori=1to20
20 p=p-rnd(.)+40.5+sin(p)and1023
30 pokem+u,14:poken+u,(48.5+rnd(1)):pokem+t,1:pokem+s,15:pokem+r,12:pokem+q,11
40 pokem+p,0:poke1024+p,252
50 u=t:t=s:s=r:r=q:q=p:nexti
60 goto100

100 a$=chr$(145)+"list"+chr$(13):gosub500
105 a$="10 m=55296:n=1024"+chr$(13)
110 a$=a$+"20 p=p-rnd(.)+40.5+sin(p)and1023"+chr$(13)
111 gosub500
120 a$="30 pokem+u,14:poken+u,(48.5+rnd(1)):pokem+t,1:pokem+s,15:pokem+r,12:"
150 a$=a$+"pokem+q,11"+chr$(13)+"40 pokem+p,0:poke1024+p,252"+chr$(13)
160 a$=a$+"50 u=t:t=s:s=r:r=q:q=p:goto20"+chr$(13)
161 gosub500
170 a$="run"+chr$(13):gosub500
180 return

200 a$=chr$(13)+chr$(13)+chr$(13)+chr$(13)+chr$(13)
210 a$=a$+"list"+chr$(13):gosub500:gosub100:return

500 forx=1tolen(a$):printmid$(a$,x,1);:forw=1to10:next:next:return
```
```basic
10 gosub100:m=55296:n=1024
11 fori=1toint(rnd(1)*500)
20 p=p-rnd(.)+40.5+sin(p)and1023
30 pokem+u,6:poken+u,(48.5+rnd(1)):pokem+t,1:pokem+s,15:pokem+r,12:pokem+q,11
40 pokem+p,0:poke1024+p,(48.5+rnd(1))
50 u=t:t=s:s=r:r=q:q=p:nexti
60 gosub200:goto11

99 rem list
100 a$=chr$(145)+"list  "+chr$(13)+chr$(13):gosub500
105 a$="10 m=55296:n=1024"+chr$(13)
110 a$=a$+"20 p=p-rnd(.)+40.5+sin(p)and1023"+chr$(13)
111 gosub500
120 a$="30 pokem+u,14:poken+u,(48.5+rnd(1)):pokem+t,1:pokem+s,15:pokem+r,12:"
150 a$=a$+"pokem+q,11"+chr$(13)+"40 pokem+p,0:poke1024+p,252"+chr$(13)
160 a$=a$+"50 u=t:t=s:s=r:r=q:q=p:goto20"+chr$(13)
161 gosub300:gosub500
170 a$="run"+chr$(13):d=300:gosub500
180 return

200 a$="break in"+str$(int(rnd(1)*5)*10+10)+chr$(13)
210 gosub300:gosub500:gosub100

220 a$="?syntax  error in"+str$(int(rnd(1)*5)*10+10)+chr$(13)
230 gosub300:gosub500

240 ifint(rnd(.)*1)=0 then a$="new"+chr$(13)+chr$(13):gosub300:gosub500

250 a$="load"+chr$(34)+"worm!"+chr$(34)+",8"+chr$(13)+chr$(13):d=300:gosub500
260 a$="searching for worm!"+chr$(13)+"loading"+chr$(13)
270 gosub300:a$=a$+chr$(13):gosub500:gosub100

280 return

300 a$=a$+"ready."+chr$(13):return

399 add corruption
400 b$="":fori=1tolen(a$):b$=b$+mid$(a$,i,1):ifint(rnd(1)*3)=0thenb$=b$+"0":next:a$=b$

500 forx=1tolen(a$):printmid$(a$,x,1);::fory=0tod:next:next:d=0:return
```
