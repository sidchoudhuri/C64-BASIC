10 poke 53280,0:poke 53281,0:poke 646,1:print chr$(147)
20 print "1d cellular automaton":print
30 print "rule (0-255)":print "(30 chaotic, 60 sierpinski-like"
40 input "110 conway-like)";r:if r<0 or r>255 then goto 40
50 rs=0:print:input "random start (y/n)";rs$:if rs$="y" then rs=1
51 print:print "fancy characters (y/n)":input "(y = 10 print, n = blocks)";fc$
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
