1 b=1504:f=2:d=1:h=20:c=0:v=10:y=12:s=1:t=0:p=0:n=0:j=0:k=1:pO54296,15:pO54277,9:pO54278,0:?"{clr}{white}10 line fishing! move a/d space to catch"
2 geta$:ifa$="a"andh>0tHh=h-1:pOb+h+1,rnd(0)*4+67:pOb+h+3,32
3 ifa$="d"andh<39tHh=h+1:pOb+h-1,rnd(0)*4+67:pOb+h-3,32
4 j=f:k=d:t=t+1:ift>=ytHt=0:f=f+d:pOb-40*n+p,32:n=n+1:n=n+3*(n=4):p=p+(f-p)*(-(n=1)):pOb-40*n+p,46-41*(n=2)+31*(n=3):iff<3orf>37tHd=-d:f=f+d
5 pOb+j,32:pOb+j-k,32:pOb+j-2*k,rnd(0)*4+67:pOb+j-5*k,32
6 q2=60-2*(d=1):g=b+f:pOg,q2:pOg-d,122-q2:pOg-2*d,q2:pOb+h,10
7 ifa$=" "andh=ftHc=c+1:s=int(c/3)+1:pO54273,80:pO54276,0:pO54276,17:y=12-int(c/3):ify<3tHy=3
8 ifa$=" "andh<>fthenv=v-1:pO54273,20:pO54276,128:pO54276,129:?"{home}{down}line snapped!  ":fOx=1to450:nE
9 ifv=0tH?"{home}{down}{down}game over";c;"fish caught":end
10 ?"{home}{down}fish caught";c;" lines   {left}{left}{left}";v;" speed";s;:gO2
