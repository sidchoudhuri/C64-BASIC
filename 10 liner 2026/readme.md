# [10 line 10 print invader](https://stigc.dk/c64/basic/?s=2XVHbjoIwEH3vV6DZBxBZe-FmddxvcWnV4tIaMLsQ47_vVEiMvnTSk57blAaX1thrdWo_QpYW0Ub2wKkcgHPZQMKk9YcBKmvgUgGTHTDKU8KCizvrLh4WKY37peBI7OPwovU5zHLBWbS3Ko1W6SJh73AZrUrCA3Pot_R60rYHsSbC33diPQKUpJNB7Q3Msig-s7i1KmQRxjGxkuZgdqJ0rdkyz1GQKAxZx4xkr1ROsyf3JXWeoUoNA2Yy0HuVr_nt5Bp9vyn3Z-_fzjWzuURxkmO8txosj4DibMYWDfS4rSFhpMC3zQ4e6OhnvV_jt2TB4kJfUYop7LYeRZBfTnyvDQZPC_VTa2qFWl0FXRVzkdTy6K6OrMfPnCowGvwYqwOcDzgw9nevdDsLusq1Ws43XfXgsX8)
```basic
0 printchr$(147);:x=20:y=22:m=-1:n=-1:i=0:j=2:d=1:s=1024:c=55296
1 pokes+y*40+x,32:x=x+(peek(56321)and4)/4*+1+(peek(56321)and8)/8
2 ifx<0thenx=39
3 ifx>39thenx=0
4 pokes+j*40+i,77.5+rnd(1):i=i+d:ifi>38ori<1thend=-d:j=j+1
5 pokes+j*40+i,205.5+rnd(1):pokes+y*40+x,65:ifj=yandi=xthen?"{home}{down}boom!":end
6 if(peek(56321)and16)=0andm<0thenm=x:n=y-1
7 ifm>=0thenpokes+n*40+m,32:n=n-1:pokes+n*40+m,30:ifn<jthenm=-1
8 ifm>=0andm=iandn=jthenpokes+j*40+i,32:sc=sc+23-j:goto
9 print"{home}10 line 10 print invader! score:";sc:goto1
```
