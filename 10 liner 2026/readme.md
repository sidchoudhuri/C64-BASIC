# [10 line 10 print invader](https://stigc.dk/c64/basic/?s=2XVHbjoIwEH3vV6DZBxBZe-FmddxvcWnV4tIaMLsQ47_vVEiMvnTSk57blAaX1thrdWo_QpYW0Ub2wKkcgHPZQMKk9YcBKmvgUgGTHTDKU8KCizvrLh4WKY37peBI7OPwovU5zHLBWbS3Ko1W6SJh73AZrUrCA3Pot_R60rYHsSbC33diPQKUpJNB7Q3Msig-s7i1KmQRxjGxkuZgdqJ0rdkyz1GQKAxZx4xkr1ROsyf3JXWeoUoNA2Yy0HuVr_nt5Bp9vyn3Z-_fzjWzuURxkmO8txosj4DibMYWDfS4rSFhpMC3zQ4e6OhnvV_jt2TB4kJfUYop7LYeRZBfTnyvDQZPC_VTa2qFWl0FXRVzkdTy6K6OrMfPnCowGvwYqwOcDzgw9nevdDsLusq1Ws43XfXgsX8)
```basic
0 printchr$(147);:x=20:y=22:m=-1:n=-1:i=0:j=2:d=1:s=1024:c=55296
1 pokes+y*40+x,32:x=x+(peek(56321)and4)/4*+1-(peek(56321)and8)/8
2 ifx<0thenx=39
3 ifx>39thenx=0
4 pokes+j*40+i,77.5+rnd(1):i=i+d:ifi>38ori<1thend=-d:j=j+1
5 pokes+j*40+i,205.5+rnd(1):pokes+y*40+x,65:ifj=yandi=xthen?"{home}{down}boom!":end
6 if(peek(56321)and16)=0andm<0thenm=x:n=y-1
7 ifm>=0thenpokes+n*40+m,32:n=n-1:pokes+n*40+m,30:ifn=jandm<>ithenpokes+n*40+m,32:m=-1
8 ifm>=0andm=iandn=jthenpokes+j*40+i,32:sc=sc+23-j:goto
9 print"{home}10 line 10 print invader! score:";sc:goto1
```
# 10 line 10 print invader with sound, color, bomb evasion, bug fix past bottom of screen
```basic
0 x=20:y=22:m=-1:n=-1:i=0:j=2:d=1:s=1024:c=55296:poke53280,0:poke53281,0:print"{clear}";
1 pokes+y*40+x,32:x=x+(peek(56321)and4)/4*1-(peek(56321)and8)/8:x=x-40*int(x/40)
2 pokec+j*40+i,14:pokes+j*40+i,77.5+rnd(1):i=i+d:ifpeek(s+j*40+i)=42ori>38ori<1thend=-d:j=j+1
3 if j>yandi>38then:g=128:h=-2:gosub9:j=2:d=d-d
4 pokec+j*40+i,iand15:pokes+j*40+i,205.5+rnd(1):pokec+y*40+x,3:pokes+y*40+x,65:ifj>=yandi=xthenprint"{home}{down}{down}{yel}boom!{lblu}":g=255:h=-4:gosub9:end
5 if(peek(56321)and16)=0andm<0thenm=x:n=y-1:g=64:h=-4:gosub9
6 ifm>=0thenpokes+n*40+m,32:n=n-1:a=n*40+m:pokec+a,nand15:pokes+a,71.5+rnd(1):ifn=jandm<>ithenpokec+a,nand15:pokes+a,42:m=-1
7 ifm>=0andm=iandn=jthenpokes+j*40+i,214:sc=sc+23-j:g=128:h=-2:gosub9:goto
8 print"{home}{blu}10 line 10 print invader! {red}score:{lred}"sc"{lblu}":g=4:h=-2:gosub9:goto1
9 poke54296,15:poke54277,0:poke54278,240:poke54276,16:poke54276,129:forf=gto0steph:poke54273,f:next:poke54276,128:return
```
# 10 line 10 print invader with sound, color, bomb evasion
```basic
0 x=20:y=22:m=-1:n=-1:i=0:j=2:d=1:s=1024:c=55296:poke53280,0:poke53281,0:print"{clear}";
1 pokes+y*40+x,32:x=x+(peek(56321)and4)/4*+1-(peek(56321)and8)/8:x=x-40*int(x/40)
2 pokec+j*40+i,14:pokes+j*40+i,77.5+rnd(1):i=i+d:ifpeek(s+j*40+i)=42ori>38ori<1thend=-d:j=j+1
3 pokec+j*40+i,iand15:pokes+j*40+i,205.5+rnd(1):pokec+y*40+x,3:pokes+y*40+x,65:ifj=yandi=xthenprint"{home}{down}{down}{yel}boom!{lblu}":gosub8:end
4 if(peek(56321)and16)=0andm<0thenm=x:n=y-1:gosub8
5 ifm>=0thenpokes+n*40+m,32:n=n-1:pokec+n*40+m,nand15:pokes+n*40+m,30:ifn=jandm<>ithenpokec+n*40+m,nand15:pokes+n*40+m,42:m=-1
6 ifm>=0andm=iandn=jthenpokes+j*40+i,32:sc=sc+23-j:gosub8:goto
7 print"{home}{blu}10 line 10 print invader! {red}score:{lred}"sc"{lblu}":goto1
8 poke54296,15:poke54277,0:poke54278,240:poke54276,16:poke54276,129
9 forf=64to0step-4:poke54273,f:next:poke54276,128:return
```
# 10 line 10 print invader with sound and color
```basic
0 x=20:y=22:m=-1:n=-1:i=0:j=2:d=1:s=1024:c=55296:poke53280,0:poke53281,0:print"{clear}";
1 pokes+y*40+x,32:x=x+(peek(56321)and4)/4*+1-(peek(56321)and8)/8:x=x-40*int(x/40)
2 pokec+j*40+i,14:pokes+j*40+i,77.5+rnd(1):i=i+d:ifi>38ori<1thend=-d:j=j+1
3 pokec+j*40+i,iand15:pokes+j*40+i,205.5+rnd(1):pokec+y*40+x,3:pokes+y*40+x,65:ifj=yandi=xthenprint"{home}{down}{yel}boom!":gosub8:end
4 if(peek(56321)and16)=0andm<0thenm=x:n=y-1:gosub8
5 ifm>=0thenpokes+n*40+m,32:n=n-1:pokec+n*40+m,nand15:pokes+n*40+m,30:ifn=jandm<>ithenpokec+n*40+m,nand15:pokes+n*40+m,42:m=-1
6 ifm>=0andm=iandn=jthenpokes+j*40+i,32:sc=sc+23-j:gosub8:goto
7 print"{home}{blu}10 line 10 print invader!{red} score:{lred}";sc"{lblu}":goto1
8 poke54296,15:poke54277,0:poke54278,240:poke54276,16:poke54276,129
9 forf=64to0step-4:poke54273,f:next:poke54276,128:return
```
# 10 Line 10 print invader with sound
```basic
0 x=20:y=22:m=-1:n=-1:i=0:j=2:d=1:s=1024:c=55296:poke53280,0:poke53281,0:printchr$(147);
1 pokes+y*40+x,32:x=x+(peek(56321)and4)/4*+1-(peek(56321)and8)/8:x=x-40*int(x/40)
2 pokes+j*40+i,77.5+rnd(1):i=i+d:ifi>38ori<1thend=-d:j=j+1
3 pokes+j*40+i,205.5+rnd(1):pokes+y*40+x,65:ifj=yandi=xthen?"{home}{yel}boom!":gosub8:end
4 if(peek(56321)and16)=0andm<0thenm=x:n=y-1:gosub8
5 ifm>=0thenpokes+n*40+m,32:n=n-1:pokes+n*40+m,30:ifn=jandm<>ithenpokes+n*40+m,42:m=-1
6 ifm>=0andm=iandn=jthenpokes+j*40+i,32:sc=sc+23-j:gosub8:goto
7 print"{home}10 line 10 print invader! score:";sc:goto1
8 poke54296,15:poke54277,0:poke54278,240:poke54276,16:poke54276,129
9 forf=255to0step-j:poke54273,f:next:poke54276,128:return
```
