10 poke 53280,0:poke 53281,0:poke 646,1:print chr$(147)
20 dim s(255):print "building sine table..."
30 for i=0 to 255:s(i)=int(8+7*sin(i*0.0245)):next

100 rem build plasma
110 for y=0 to 24:for x=0 to 39
120 c=(s((x*8) and 255)+s((y*8) and 255)) and 15
130 h=48+c:if c>9 then h=c-9
140 poke 55296+y*40+x,c:poke 1024+y*40+x,h
150 next:next

200 rem cycle plasma
210 for i=0 to 999
220 c=(peek(55296+i)+1) and 15
230 h=48+c:if c>9 then h=c-9
240 poke 55296+i,c:poke 1024+i,h
250 next:goto 210
