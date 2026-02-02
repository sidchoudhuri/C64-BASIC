# [Squiggly!](https://stigc.dk/c64/basic/?s=2NczhCsIwDATg_32SjcbRpI1oIA8z2BCRtYn6_lgc_ffdcVw6lJnuVzG1y7tu0zLHkhaOn2edbF7rholyQGuv_YjO0JcnC-BgBuRhAqRhBMRAZzBI_7rflR5uGDI5qxfxop7FszqJkzqKo5o82rf9AA)
```basic
0m=55296:p=p-rnd(.)+40.5+sin(p)and1023
1pokem+q5,6:pokem+q4,1:pokem+q3,15:pokem+q2,12:pokem+q1,11
2pokem+p,0:poke1024+p,81
32q5=q4:q4=q3:q3=q2:q2=q1:q1=p:goto
```
```basic
0p=p-rnd(.)+40.5+sin(p)and1023:poke1024+p,81:q=p:goto
```
# 10 PRINT Random Fill
```basic
0p=p-rnd(.)*40and1023:poke1024+p,77.5+rnd(1):goto
```
# Simple Diagonal 10 PRINT
```basic
0p=p-rnd(.)+40and1023:poke1024+p,77.5+rnd(1):goto
```
# WORM
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
```12345678901234567890123456789012345678901234567890123456789012345678901234567890```
```basic
10 gosub100:m=55296:n=1024:x=peek(211):y=peek(214):rem poke53272,23
20 p=p-rnd(.)+40.5+sin(p)and1023
40 pokem+p,0:poke1024+p,252
50 u=t:t=s:s=r:r=q:q=p:goto20

100 a$=chr$(145)+"list"+chr$(13):gosub200
105 a$="10 m=55296:n=1024:poke53272,23:printchr$(147);"+chr$(13)
110 a$=a$+"20 ifpeek(214)*peek(211)=990thenpoken+998,223:poken+999,222:?chr$(19);"
120 a$=a$+chr$(13)+"30 p=p-rnd(.)+40.5+sin(p)and1023"+chr$(13)
130 a$=a$+"40 printchr$(169+int(rnd(.)*2)*54)chr$(222+int(rnd(.)*2)*8);"+chr$(13)
131 gosub200
140 a$="50 pokem+u,14:poken+u,(48.5+rnd(1)):pokem+t,1:pokem+s,15:pokem+r,12:
150 a$=a$+"pokem+q,11"+chr$(13)+"51 pokem+p,0:poke1024+p,252"+chr$(13)
160 a$=a$+"60 u=t:t=s:s=r:r=q:q=p:goto20"+chr$(13)
161 gosub200
170 a$="run"+chr$(13):gosub200
180 return

200 forx=1tolen(a$):?mid$(a$,x,1);:forw=1to10:next:next:return
```
