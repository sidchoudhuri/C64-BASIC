10 gosub100:m=55296:n=1024
11 fori=1toint(rnd(1)*500)
20 p=p-rnd(.)+40.5+sin(p)and1023
30 pokem+u,6:poken+u,(48.5+rnd(1)):pokem+t,1:pokem+s,15:pokem+r,12:pokem+q,11
40 pokem+p,0:poke1024+p,(48.5+rnd(1))
50 u=t:t=s:s=r:r=q:q=p:nexti
60 gosub200:goto11

99 rem list
100 a$=chr$(145)+"list  "+chr$(13)+chr$(13):gosub500
105 a$="10 m=55296:n=1024"+chr$(13)
110 a$=a$+"20 p=p-rnd(.)+40.5+sin(p)and1023"+chr$(13)
111 gosub500
120 a$="30 pokem+u,14:poken+u,(48.5+rnd(1)):pokem+t,1:pokem+s,15:pokem+r,12:"
150 a$=a$+"pokem+q,11"+chr$(13)+"40 pokem+p,0:poke1024+p,252"+chr$(13)
160 a$=a$+"50 u=t:t=s:s=r:r=q:q=p:goto20"+chr$(13)
161 gosub300:gosub500
170 a$="run"+chr$(13):d=300:gosub500
180 return

200 a$="break in"+str$(int(rnd(1)*5)*10+10)+chr$(13)
210 gosub300:gosub500:gosub100

220 a$="?syntax  error in"+str$(int(rnd(1)*5)*10+10)+chr$(13)
230 gosub300:gosub500

240 ifint(rnd(.)*1)=0 then a$="new"+chr$(13)+chr$(13):gosub300:gosub500

250 a$="load"+chr$(34)+"worm!"+chr$(34)+",8"+chr$(13)+chr$(13):d=300:gosub500
260 a$="searching for worm!"+chr$(13)+"loading"+chr$(13)
270 gosub300:a$=a$+chr$(13):gosub500:gosub100

280 return

300 a$=a$+"ready."+chr$(13):return

399 add corruption
400 b$="":fori=1tolen(a$):b$=b$+mid$(a$,i,1):ifint(rnd(1)*3)=0thenb$=b$+"0":next:a$=b$

500 forx=1tolen(a$):printmid$(a$,x,1);::fory=0tod:next:next:d=0:return
