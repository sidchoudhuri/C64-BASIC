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
```
# 10 PRINT Random Fill
```basic
0p=p-rnd(.)*40and1023:poke1024+p,77.5+rnd(1):goto
```
# Simple Diagonal 10 PRINT
```basic
0p=p-rnd(.)+40and1023:poke1024+p,77.5+rnd(1):goto
```
