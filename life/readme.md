# [life (1d cellular automaton - fast copy)](https://stigc.dk/c64/basic/?s=2XVLRkuIgEHznK6ZSPsCqd0ASdfHip1wVJuSkTCBFYq3-_Q0kune-hDBMd0_PjOAw-KuBMpcHvuHqdRHPy67YbYQagnUT1JewoqLYMyIRl0KZaKA2XXfrdAB9m3yvJ--yGUDyV1q4dQYo38qyZMsrZBTf64v2k603sOMwWhMG68ar3Xb2ajJScLBuuEUZganefelHemLZMSjbQvjFwQcIJ-SF6WIc_PGTh4KTkkMYKz5LqYUlaNf4HsZJhwno46eLPOMqMY2rKntkMwkiBSkF_Adutasfsd6g68mE8UnQ1itSShjEqpobdGDrDNCkfAaKXYqQMgdUwvxvpReqZOt0Sl6yf6Df4R0j6PF9ENi1xvagaSHY5py-A90z1WJXbMUBm7FXA7Wskr-tcuY-kT2H5De-xhI0krNKqNQ5wTk5cJjhIsLzT6UjXp9HGlxDBTv9wBITFcF0CKaHXlsHnfcDiYOK6PsTTYRMgpre2eI5eUDnx0UTxyVeq4LejwRDEBWWPcJ9m3Vq3-MsTHqD4L-IRDlNsX5N80-m0hf_BVMx_exvrtEhTs3UVyLle20SZR3m37eCfRTrWOOHjMcaGc54S7YprrZrYKCOsRPH7V-qI7jgc12tHnEqfniQ_N2_iqRV5Jp7lmMRr1YT8hc)
```basic
10 poke 53280,0:poke 53281,0:poke 646,1:print chr$(147)
20 print "1d cellular automaton":print
30 print "rule (0-255)":print "(30 chaotic, 60 sierpinski-like"
40 input "110 conway-like)";r:if r<0 or r>255 then goto 40
50 rs=0:print:input "random start (y/n)";rs$:if rs$="y" then rs=1
51 print:print "fancy characters (y/n)":input "y = 10 print, n = blocks";fc$
53 p1$=chr$(18)+" ":p2$=chr$(146)+" "
54 if fc$="y" then p1$=chr$(5)+chr$(205):p2$=chr$(15)+chr$(206)
55 print chr$(147)
60 dim a(41),b(41),p(7):for i=0 to 7:p(i)=2^i:next
70 if rs=0 then a(20)=1:goto 100
80 for i=1 to 39:a(i)=abs(rnd(1)>.5):next

100 rem main loop
110 for x=1 to 39
120 if a(x) then print p1$;:goto 140
130 print p2$;
140 next:print

200 rem compute next row
210 a(0)=a(39):a(39)=a(1):rem boundary check
220 for x=1 to 39
230 n=a(x-1)*4+a(x)*2+a(x+1):b(x)=abs((r and p(n))>0)
240 next

300 rem fast copy
310 for x=1 to 39:a(x)=b(x):next
320 goto 100
```
# life (single page)
```basic
10 rem 1d cellular automaton
20 poke 53280,0:poke 53281,0:poke 646,1:print chr$(147)
30 print "1d cellular automaton"
40 input "rule (0-255)";r
50 if r<0 or r>255 then 40
60 rs$="":rs=0:input "random start? (y/n)";rs$:if rs$="y"thenrs=1
70 dim a(39),b(39)

80 rem init row
90 ?chr$(147):for i=0 to 39:a(i)=0:next
100 if rs=0 then a(19)=1:goto 170
110 for i=0 to 39:a(i)=abs(rnd(1)>.5):next

170 rem draw generations
180 for y=2 to 24
190 for x=0 to 39
200 p=1024+y*40+x:c=55296+y*40+x
210 if a(x)=1 then poke p,160:poke c,1:goto 230
220 poke p,32:poke c,1
230 next x

240 rem compute next row
250 for x=0 to 39
260 l=x-1:if l<0 then l=39
270 rr=x+1:if rr>39 then rr=0
280 n=a(l)*4+a(x)*2+a(rr)
290 b(x)=(r and (2^n))/ (2^n)
300 next x

310 for x=0 to 39:a(x)=b(x):next
320 next y

330 print:input "again (y/n)";q$
340 if q$="y" then goto 20
```
# life (10 print, infinite)
```basic
10 rem infinite 1d cellular automaton (fixed)
20 poke 53280,0:poke 53281,0:poke 646,1:print chr$(147)
30 print "1d cellular automaton"
40 input "rule (0-255)";r
50 if r<0 or r>255 then 40
60 input "random start (0/1)";rs
70 dim a(39),b(39)
80 for i=0 to 38:a(i)=0:next
90 if rs=0 then a(19)=1:goto 120
100 for i=0 to 38:a(i)=abs(rnd(1)>.5):next

110 rem main infinite loop
120 poke 211,0:rem force cursor to left
130 for x=0 to 38
140 rem if a(x)>0 then print chr$(18)" "chr$(146);:goto 160
141 if a(x)>0 then print chr$(205);:goto 160
150 rem print " ";
151 ?chr$(206);
160 next x:?

170 rem compute next row
180 for x=0 to 38
190 l=x-1:if l<0 then l=39
200 rr=x+1:if rr>39 then rr=0
210 n=a(l)*4+a(x)*2+a(rr)
220 rem use int and bit masking for accuracy
230 b(x)=0:if (r and (2^n))>0 then b(x)=1
240 next x

250 rem copy next state to current state
260 for x=0 to 38:a(x)=b(x):next
270 goto 120
```
# life (array swap using peeks and pokes to casette buffer)
```basic
10 rem ultra-fast double-buffered automaton
20 poke 53280,0:poke 53281,0:poke 646,1:print chr$(147)
30 print "1d cellular automaton"
40 input "rule (0-255)";r
50 input "random start (0/1)";rs
60 ca=828:cb=870:rem two memory buffers
70 for i=0 to 80:poke 828+i,0:next
80 for i=0 to 7:poke 950+i,2^i:next
90 if rs=0 then poke ca+20,1:goto 120
100 for i=0 to 39:poke ca+i,abs(rnd(1)>.5):next

110 rem main loop
120 for x=0 to 38:rem 38 to prevent double-line spacing
130 if peek(ca+x) then print chr$(18)" "chr$(146);:goto 150
140 print " ";
150 next x:print

160 rem compute next row
170 for x=0 to 38
180 l=x-1:if l<0 then l=38
190 rr=x+1:if rr>38 then rr=0
200 n=peek(ca+l)*4+peek(ca+x)*2+peek(ca+rr)
210 v=0:if (r and peek(950+n))>0 then v=1
220 poke cb+x,v
230 next x

240 rem the "magic" swap
250 t=ca:ca=cb:cb=t
260 goto 120
```
