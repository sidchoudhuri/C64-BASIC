0 x=20:y=2:l=l+1:m=-1:n=-1:i=0:j=21-l:d=1:s=1024:c=55296:js=56321:h=205.5:t=77.5:u=71.5:poke53280,0:poke53281,0:print"{clear}"
1 pokes+y*40+x,32:x=x+(peek(js)and4)/4*1-(peek(js)and8)/8:x=x-40*int(x/40):y=(y+(peek(js)and1)-(peek(js)and2)/2)and7
2 pokec+j*40+i,14:pokes+j*40+i,t+rnd(1):i=i+d:ifpeek(s+j*40+i)=42ori>38ori<1thend=-d:j=j-l
3 a=j*40+i:pokec+a,iand15:pokes+a,h+rnd(1):ifj<yand(i>38ori<1)thenv=8:f=128:g=-2:gosub9:j=21:i=0:d=1
4 b=y*40+x:pokec+b,3:pokes+b,83:ify>=jor(j=yandi=x)thenprint"{home}{down}{down}{yel}boom!{lblu}":v=15:f=255:g=-4:gosub9:end
5 z=rnd(1):sn=s+n*40+m:o=nand15:if(peek(js)and16)=0andm<0thenm=x:n=y+1:v=5:f=64:g=-4:gosub9
6 ifm>=0thenpokesn,32:n=n+1:a=n*40+m:pokec+a,o:pokes+a,u+z:ifn>=jandm<>ithenpokec+a,o:pokes+a,42:m=-1
7 ifm>=0andm=iandn=jthenpokes+j*40+i,214:pokec+j*40+i,jand7:v=10:f=128:g=-4:gosub9:sc=sc+abs(y-j):goto0
8 print"{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{blu}10 line{down}{left}{left}{left}{left}{left}{left}{left}10 print invader! {red}score:{lred}"sc"{red}lvl:{lred}"l"{lblu}":v=1:f=4:g=-4:gosub9:goto1
9 poke54296,v:poke54277,0:poke54278,240:poke54276,16:poke54276,129:fore=fto0stepg:poke54273,e:next:poke54276,128:return:
