# Ducks in a Row by Bobby Brightling
The C64 BASIC V2 program below is a puzzle game that is a combination of the classic sliding block and "Lights Out" puzzles.
I wrote it  so that it could be easily ported to other BASICs.  The code's comments contain some porting details and a subroutine contains the puzzle's instructions.  I will post a screenshot in a FB comment.
```basic
1 rem ducks in a row.
2 rem coding notes:
3 rem this code was written to make it easy to port to other basic dialects.
4 rem it uses petscii characters to draw ducks.  to port the code, replace
5 rem the characters used for the head/eye (ey$), neck (nk$), feet (fl$/fr$),
6 rem and tail (t1$/t2$).  this code uses c64 control characters to position
7 rem the cursor (up$=up, dn$=down, lf$=left), to set colors (og$=orange,
8 rem wt$=white, gy$=gray), to clear the screen (cl$), to draw spaces (s3$,
9 rem s4$, s5$), and to turn reverse off and on (r0$=off, r1$=on).
10 rem when porting, draw the ducks any way you like.  they don't even have
11 rem to be ducks.  any two objects can be used.
12 rem the puzzle array (p(r,c)) is small enough that it does not need to be
13 rem dimensioned in c64 basic. if another dialect requires dimensioning,
14 rem use dim p(6,6).  this is a 7 by 7 grid.  the largest puzzle
15 rem is 5 by 5.  the extra elements are always zero, and are used to make
16 rem the logic simpler when neigboring ducks are reversed.  all variables
17 rem contain integer values.  the puzzles are created by starting with
18 rem a solution and scrambling it by selecting random ducks (like when
19 rem solving a puzzle). this ensures that all puzzles can be solved. any
20 rem move can be undone in 1 or 3 moves (3 when the empty space is
21 rem involved).
22 poke 53280,0:poke 53281,0
23 rem define several useful strings for drawing the puzzles.
24 cl$=chr$(147):dn$=chr$(17):up$=chr$(145):lf$=chr$(157):nk$=chr$(161)
25 wt$=chr$(5):og$=chr$(129):gy$=chr$(152):ey$=chr$(119):r0$=chr$(146)
26 r1$=chr$(18):t1$=chr$(169):t2$=chr$(127):fl$=chr$(189):fr$=chr$(173)
27 l5$=lf$+lf$+lf$+lf$+lf$:u3$=up$+up$+up$:dl$=dn$+l5$:
28 s3$="   ": s4$=s3$+" ": s5$=s4$+" ": rt$=chr$(29)
29 rem define strings used to draw the ducks. the strings are in two parts.
30 rem one is used before the duck letter, the second used after.
31 rem define the characters used in the left-facing duck:
32 a$=og$+"-"+wt$+ey$+s3$+dl$+" "+r1$+nk$+r0$+s3$+dl$
33 a$=a$+" "+r1$+nk$+" "+r0$+t1$+" "+dl$+gy$: b$=r0$+" "+og$+fl$+" "+u3$
34 rem define the characters used in the right-facing duck:
35 c$=wt$+s3$+ey$+og$+"-"+dl$+wt$+s3$+nk$+" "+dl$+" "+t2$+r1$+" "+r0$
36 c$=c$+nk$+" "+dl$+gy$: d$=og$+" "+fr$+"{2space}"+u3$
37 rem define characters used to draw the empty space:
38 g$=s5$+dl$+s5$+dl$+s5$+dl$+gy$: h$=s4$+u3$
39 rem clear the screen and print the rules.
40 gosub 98
41 print cl$;
42 rem get the pond size.
43 input"puzzle size (2-5)";k$:q=val(k$):if q>1andq<6 then 46
44 if q=0 then end
45 print"invalid size": goto 43
46 q2=q*q: print chr$(147);: gosub 66
47 forf=1toq:r=int(rnd(.)*q)+1:c=int(rnd(.)*q)+1:gosub70:next
48 gosub 83: ifs=0or s=q2-1 then 47
49 rem redraw the whole pond.
50 a=10:gosub 83:a=1
51 rem get the duck selection letter.
52 getk$:k$=k$+" ":n=asc(k$)-64:if n<0 or n>q2 then 52
53 rem convert letter to row and column.
54 r=int((n-1)/q):c=n-q*r:r=r+1
55 rem flip the ducks around the selected duck.
56 gosub71
57 rem redraw the pond around the selected duck.
58 gosub83
59 rem check if all the ducks face the same way.  if so, proclaim success.
60 if (s=q2-1) or (s=0) then print "{down}{green}success!{down}{white}":goto 43
61 rem not all ducks face the same way, so keep trying.
62 goto 52
63 end
64 rem dim p(6,6) : rem 7x7 pond row/col=0 and row/col=6 are empty.
65 rem fill the pond with -1 or 1.
66 o=2*(rnd(.)>.5)+1:forr=1toq:forc=1toq:p(r,c)=o:next:next
67 rem remove a duck.
68 p(rnd(.)*q+1,rnd(.)*q+1)=-2: rem -2 is used for the empty space.
69 return
70 rem reverse the ducks next to the duck at r,c.
71 v=p(r,c):if v=0 or v=-2 then return
72 fori=r-1tor+1:forj=c-1toc+1
73 ifp(i,j)=-2thenp(i,j)=p(r,c):p(r,c)=-2:i=9:j=9
74 next:next
75 fori=c-1toc+1step2:ifp(r,i)<>-2 then p(r,i)=-p(r,i)
76 next
77 forj=r-1tor+1step2:ifp(j,c)<>-2 then p(j,c)=-p(j,c)
78 next
79 ifp(r,c)<>-2 then p(r,c)=-p(r,c)
80 return
81 rem redraw the pond. if a=10 then redraw everything, otherwise just redraw
82 rem the neighboring ducks.
83 printchr$(19);:l=65
84 fori=1toq: if abs(i-r)>a then l=l+q:goto92
85 forj=1toq
86 if abs(j-c)>a then printrt$rt$rt$rt$rt$;:goto90
87 e$=a$:f$=b$:if p(i,j) >0 then e$=c$:f$=d$
88 ifp(i,j)=-2 then printg$chr$(l)h$;:goto90
89 print e$chr$(l)f$;
90 l=l+1
91 next
92 print dn$dn$dn$
93 next
94 rem count the right-facing ducks.
95 s=0:fori=1toq:forj=1toq:s=s-(p(i,j)=1):next:next
96 return
97 rem print the rules.
98 printchr$(147)chr$(5);
99 printtab(10)"'ducks in a row'":print
100 print"this is a puzzle game. the objective"
101 print"is to get all of the ducks facing the"
102 print"same way. the player selects a duck "
103 print"by entering its letter. the selected"
104 print"duck and the neigboring ducks will"
105 print"turn around and face the opposite"
106 print"direction. if there is an empty space"
107 print"nearby, the selected duck will move"
108 print"into that space. the puzzle size can"
109 print"be set from 2x2 (easy) up to 5x5 (hard)."
110 print"press any key to begin..."
111 getk$:ifk$=""then 111
112 return
```