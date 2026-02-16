# [oneliner64.com](oneliner64.com)
## [A complete arcade action game for the C64 in one single line of code...](https://stigc.dk/c64/basic/?s=2M7QvcSzy0zDQ1DK21FTSUrJKd822KrAt0NbItjXU1AWSlppWBf6GRhYm2gU6RkZW-XkFNiZGBol-GgWuGobGRkBhTVsTI01to3R_HUMA)
use 1 and 9 to move your ship left and right
```basic
1?tArN(0)*39)"*":gEk:p=p+(k=1)-(k=9):pO1284+p,22:onp<420aN(pE(1324+p)=42)+2gO,1
```
# Drip
```basic
0q=p+40:c=32or128:poke55296+q,qand15:forx=0to5:r=q*xand1023:poke55296+r,rand15:poke1024+r,c:next:p=p+1and1023:goto
```
```basic
0FOR I=0 TO 4:READ A:poke55296+995+i,6:POKE1024+995+I,A:NEXT:DATA 13,48,14,4,5
1forx=0to5.5+rnd(1):r=q*xand1023:poke55296+r,14:poke1024+r,peek(1024+r)or128:next:q=q+1:goto1```