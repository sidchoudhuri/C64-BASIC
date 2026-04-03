# ["One Gun" by Bobby Brightling](https://stigc.dk/c64/basic/?s=2M1QICPL0C1F6t3vyu10TlUIcnTSMDDSV4pSs3PyDImx1jc1D_I3NrSJsI7TNTbQ0ImyNzTWtoFp2TQarj9AKdvfTiNDUdLRydw3xtnK0ddQGKjS01NTS8LY11LTyc40IAQA&fbclid=IwY2xjawQ80iZleHRuA2FlbQIxMABicmlkETE0MHdsWDRVSzUwd0xhQjllc3J0YwZhcHBfaWQQMjIyMDM5MTc4ODIwMDg5MgABHoo4SJKpYYenimBWKXpWwiahu5IY06U3zD5qIdvJIPIgLoud_QNkh01ZGrDg_aem_rDeP_nNFtZSEVSL1oP1-XA)
The code below is a simple "one-line" action game written in C64 BASIC V2.  Its purpose is just to demonstrate some techniques that may be useful in short games (20 lines and under).  If you stay up all night playing it, seek counseling. 🙂  
You must use keyboard shortcuts to enter it using the C64 editor (e.g., use "fO" to enter "FOR").  Special C64 characters are shown in curly braces ({clr} is clear key, {down} is cursor down key, {home} is the home key, and {arrow up} is the arrow character, not the cursor up key). 
Rules: Press the "1" key when the left edge of the score passes over the arrow.
```basic
1 print"{clr}{down}"tab(20)"{arrow up}":forx=-37to37:x=x+74*(x=37):print"{home}"tab(x*sgn(x))a:getk:a=a+(x=19)*(k=1):next
```
I don't know what happens when the score exceeds 9 points. I have never had the patience to find out. 😉
The game is loosely based on an action game I played on my HP 67 programmable calculator.  It was one of the only _action_ games I played on the calculator.  The display digits increased and deceased on the calculator's LED display.  The goal was to hit the A-E function key beneath the left-most digit.  In the 1970s, it was just as fun to play the HP 67 game as playing this game today. 😉 

# ["The Garbage Game" by Bobby Brightling](https://stigc.dk/c64/basic/?s=2DctLCoAgEADQq4QrPxlOWosBg2AkIhhFvVm36VCdofbvuaHkK4Gbg-GxnzuTB6RoZWWSk9omULqkdMl18Qo5siETnJZgSf34jx5bbBaw1JO7eJ9bNDxyzx8)
The goal of this game is to completely fill the C64 screen with "garbage" text (no spaces).  It is a "one-liner" written in C64 BASIC V2.  

As the game is played, garbage text streams down the screen.  The first five columns can be filled without doing anything.  After that, use the shift-key to shift columns.*   You lose points as the game runs.  The score is shown in the upper-left corner as a negative number.  The best score is the one closest to zero (least negative). 

This version is an experiment in developing "one-liner" game techniques.  It does not halt when the screen is completely filled.  If you can figure out a way to get the game to stop when the screen is filled, and keep the game under 80 characters, let me know.  Other suggestions are also welcome.

*A note about playing the game in the VICE emulator on Windows.: 
Windows may see repetitive shift-keys as an attempt to turn on "Sticky Keys".  To avoid this, you can use "cursor up" or "cursor left".  This works because the VICE emulator sets the shift-state when these keys are used.

The code is below.  The code can be entered into one 80-character line using the C64 editor if keyboard shortcuts are used (e.g., 'pO" for "poke").  Use the C64 home key to enter {home}.
```basic
0 poke1024+n,tiand31:d=-(rnd(.)>.1)*peek(653):n=n+d+40*(1-d)and1023:s=s-1:print"{home}"s:goto
```

# ["Ducks in a Row" by Bobby Brightling](https://stigc.dk/c64/basic/?s=2jVjrkps6Ev6vp9C6qArElxgMGJMw7yJjYTPDAJbAjpPKu-_XkrA9k3O2tmoSW1Lf1P31RQ65ku_8MJZvmtctF1x11xWLzG7ZHer2yNtukDpnG7M3nGpNB5JfheZXVQ-DbPnQ8XfxJnk9cCn0jdZ9pwb67IaTVHwvdF3yQy0aWQ56xWIjDOSjlpr3ctBlXfPyJJQoB6k0cR6UuFrLVvwh8SSN-gUE9I0oJUucXfKZHWIPvOqU2T9Jcfgmb5L78uYFC97K8o377Rt9r6QcuF813rdKYc1SI020Bz6IuuH-EHrfhsgLyIT71Y3RZRpj1Q6qaz4Z3ne6HuquZduHaaPSsMYfe68Y-wU_tF5x6K7tgjeVVzSyGmALWDWsKbumgyC_O3pFp0R7lAuWGUnXwSuup3rA7Y83rzgqcbNsZSOFvasulURA_LLx7JHxou7hKYjUG2_BdkaWjr0F1wlRmdt2fBhVi6MLbiF5V1Vmv4MstYYhVQWXh_jSBisWrq09J6iisAAmC6uJbLBoEu0NGLnxWzfypn6TxoPyxg9d-wUwuYD1JC6ShaH1Usf38h5uYh6uQM_-lQDDS9HSMYUV2qO7X_vx169GcqHgCu73vlqUQcARJ_0umobLthuPJ1CKgcB26OAEwBkIkAerkYUW14f6XbYaQcMB8oCCazC74jU5wqLY4RcM57FWkHXnIgew0KIaRtIB7_10kd6Bgz_Bt3x_w39HVR-sO3gj1FHqwV2EhRbNIE6INHFU8uegBJeNhDp4QyhcuYFzNf8lVWcjSJsG9i4ZWZje3dR0R6Sfrt_7BtcwYWtlfdx3ihLcxQv8LvpkHLnvIlQt9o3ULNy6itAiLVp4aJBHSLqIZpTaGWmvYAUBhWKALbiDHoQBCL_Ww4mFFsmC664ZKUmM7UCteN83RIUwEZMkR9MaCXDopgrlE5CM_Sx0MO6aC5EJpx7-Nu5GWEaKkAk93WWyziGJ-OieABqLLJrfu4u8Aw1KW0lICDnydmMOoX9jnWdi8t4PN5tZiBeLLIzr9mIkI0miCLkBc5NNlK0X6_y-CBdrFjnYyaqGHk1-Fw3FrxobuIziok0Bo6yiCz55GKJRehqvKE_K88N4G-RUT-wKCyoy7igJciowdpXgDFXPrdIwYFFiaorZAClVHHsY7YKcSoxjjIJc3lchzqgkOBUpxKSmNNiNLMiH-yIFLcrnJBUGVHe7M5yh6E52byBny5sE5bDy5p_-5eOGCqc3d__yA8Tg0nPQ5yzKOCpbMeOcz3KqbAWW85lZQB427EJNd8X1WLT7EAHn8imDPhazla2tjoYADmRQfeqBbcRjYxFkIONk7CWiJ-8ieCPRKdXCCpJIpIOlExW2ISF8tuafulltYUe9YlmJckpcNOaIC9TlIy65nM0RzzliNScPwEl08TmCM0fg54jatM82G-ISHwnMdxAhgOY7CQAMcr73CtqnPVJUOcGICtvE_6flqj6ePpue8BItbbBmkdnTNUjztD9ZNl0HgDIWO2vZJiUp5UdCY_bB-QV7QNp89jsy-frHWb59tvyz1c8geMp1GJ1x5AmAZfR8_jR6TxZ0RomF2V8dmspeDzzZkUaNJq_jNT92etzzXcbi0J0j07-z2Pa8o7T0PeFH178keDZwcD8OM9cLaZf70TIJZt_fvPxcoEj7mHVyNLLzSwi95x8pCWl5nLI4pgZ3LtZ2R7YHFidW8Qy1TDS11YPsOXZwSbxhccrPUXH-es4nA6cy9D135qcQvKXyVRXh0J1zVYDOV-3BXwVfz8E8zMu_dgzndp23aHYszpykbJPDQF2sUQp1cY6WoTN9y2LrWSXvYbqeusb6ZsWSNRdFuM7vYrBiSfjBiyYxXatBJ7IpCtaIKOA71EqLqLwthC7Ji8s0Jke2P9bUF9qXc2TtSSKWbKYeiWI-OGkEI4zUJtwY7Mb3FvKRMeb6frsMg2_nAN5ol-evCn5Sc1hph4CqqfvneUp1Iw1qpn6QycAonUBeap21Bev2s08MUv4Hr3N0tmGJQ-qJxmOaetA1H-or6nNGgHin4f-Grg8ijemjV13ZCEw8eiwxZgLH6ZrOfBuwgDyF7-vAusqCZvab5t8_v4-UDX8c53_cphly_8zyCXKpjRuNbmTVv1iEebbjb1LCa-qGIgM7IotaRCfdGHCn8TTuufmM52Zj-3NrXYVgfUOgkBDiaZWaom_KAKS6-NTOQYaPphu-NNNCCJKUd0X01QH8ZZUQwpEPyuYDvpX2mx1Zi87A3mI_nWJoBhLhApVmMHjKl3m4eHwNimVkL7GM7u1nevs8VS7IoAjTmM-2a6fDTvuPMJMF5jEwpQfGJ1i4YtuQXwprLSXApTAJcIFuG9VJcESq60ItcT1lL_1alLQqAe0tilXV-_XilawmRrdwkp07cKG62OWvxY5tY_5wzTax0id5epA9SCtiq4MfL5Mxdl0s7Sfbptyym5r0ejfuwf4Krc_sr8YK-8m2mWPfcauq_KSqdKpAm60nT2ThP6WifU-gME1eM6cUhhvmVnpGmafGtUZUXkc9OAqWPd48NLmfnkf3Fcs2NqtsJd6hEAOyCcti6y6DNKN4r_16qYIXYdU3RTM_myzbRSxLrHeImmXpRP-6LO_0RgmmqOe_75Z_zbItlzRR5Bg49x6BxMaWv0zNhZo0nR48lmXPQHiSfvTMJZrg9CR554qGnA4rtMTd2tgfsl1o47OLHBkGQ_vHdht3FLvaPE4N9_MwAi_uErSYdf5w2d0duS700nfmhsFTsu7SKd47m7Z_9fRd9hwbdEk3beMC7lqD2PvhOph9-fgzzJdZbo7x2l67jvx4Sbpmf0Tps8OpfSnXFzkDfTh1cPN7BLU7Kptd9bGeu2cFMTjPzR7F3QC2ETe0MNsytCtFnOgd3mZ4quFFKpV9uemphX7oNEQfO3pbUlwr-usJekVFJeppADG_SLjeRUz3it_15jcWY3o6icaL3PRxk2KURGYYx3vuqQYSw9YxtJjI9rfF313R2GFefESe3achUxZRD201ff79wcxceDoS_W5yjTS_5lQKr9foZ8R9-mUs4GNPIUl-JtzHwIl3InjCKb49nqz2l5M3ebM_UBzrdrUyRKGbSuoKc8lsZlIGuziJHAb_Cw)
The C64 BASIC V2 program below is a puzzle game that is a combination of the classic sliding block and "Lights Out" puzzles.
I wrote it  so that it could be easily ported to other BASICs.  The code's comments contain some porting details and a subroutine contains the puzzle's instructions. 
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
