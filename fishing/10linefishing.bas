1 ba=1504:f=2:fd=1:h=20:sc=0:lv=10:dl=12:sl=1:tc=0:print"{clr}10 line fishing! move a/d space to catch"
2 pokeba+f,32:pokeba+f-fd,32:pokeba+f-2*fd,32:pokeba+h,32
3 tc=tc+1:iftc>=dlthentc=0:f=f+fd:iff<3orf>37thenfd=-fd:f=f+fd
4 geta$:ifa$="a"andh>0thenh=h-1
5 ifa$="d"andh<39thenh=h+1
6 hc=60-2*(fd=1):pokeba+f,hc:pokeba+f-fd,122-hc:pokeba+f-2*fd,hc:pokeba+h,10
7 ifa$=" "andh=fthensc=sc+1:sl=int(sc/3)+1:dl=12-int(sc/3):ifdl<3thendl=3
8 ifa$=" "andh<>fthenlv=lv-1:?"{home}{down}line snapped!  ":forx=1to200:next
9 iflv=0thenprint"{home}{down}{down}game over";sc;"fish caught":end
10 print"{home}{down}fish caught";sc;" lines   {left}{left}{left}";lv;" speed";sl;:goto2
