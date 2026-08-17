1 b=1504:f=2:d=1:h=20:c=0:v=10:y=12:s=1:t=0:pO54296,15:pO54277,9:pO54278,0:?"{clr}{white}10 line fishing! move a/d space to catch"
2 g=b+f:pOg,32:pOg-d,32:pOg-2*d,rnd(0)*4+67:pOg-5*d,32:pOb+h,32
3 t=t+1:ift>=ytHt=0:f=f+d:iff<3orf>37tHd=-d:f=f+d
4 geta$:ifa$="a"andh>0tHh=h-1:pOb+h+1,rnd(0)*4+67:pOb+h+3,32
5 ifa$="d"andh<39tHh=h+1:pOb+h-1,rnd(0)*4+67:pOb+h-3,32
6 q=60-2*(d=1):g=b+f:pOg,q:pOg-d,122-q:pOg-2*d,q:pOb+h,10
7 ifa$=" "andh=ftHc=c+1:s=int(c/3)+1:pO54273,80:pO54276,0:pO54276,17:y=12-int(c/3):ify<3tHy=3
8 ifa$=" "andh<>fthenv=v-1:pO54273,20:pO54276,128:pO54276,129:?"{home}{down}line snapped!  ":fOx=1to450:nE
9 ifv=0tH?"{home}{down}{down}game over";c;"fish caught":end
10 ?"{home}{down}fish caught";c;" lines   {left}{left}{left}";v;" speed";s;:gO2