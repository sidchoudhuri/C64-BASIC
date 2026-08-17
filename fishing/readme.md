# [10 Line Fishing! - Enhanced With Sound](https://stigc.dk/c64/basic/?s=2bVLLjqMwELzzFR40hySAxjavYNLZ00rc8g0E2xgpARI8zEYR_77mMZtkNRdTqnZ1Ue4m6AgkxAGTQBkHwhRQzArArAeC2Q0IZZ2htWHaQxjQJHJJOMM4dpMFbV3Mftn34nQd7l-q0mIgGJ2qWiBZdaqqyzd0bnqB8g-OujYvBNINKnJdKNuiqISjI02n0vXp-PH4N6Ab7l5rvsLrTeBE8cSFm6V8dJQBlo80aIewSuo93HQ2_qoE6XDDyJ3fXOXej3XGweMzbwWoFDp_N_X8Hezczmuu9lhnCpRH5sYO-c935PzRLkSzjE-ynZ9MOmfReT_ovEkXoQtE2CRamWdes0fmyxKZUOpd_qW-LAEJtuLFEU2OIHVWQGEMO6hqvSo-_PXkPs7Bd7fLnOLIfSAST5P0vu-b5Ledr7Mb-Nb2pftuL7USdQ-99-hJnzrR7RNOxqGr5iyGO2--6mGaeFfnbSv4G0I2k4c_QHQThJjVv63EWPVgHvpVNZ9lfhbI7MjVTovUHtfGLMhnqbTNRM0ts0-vqucbo2Jatw4hdD8JqYfn0057U-9aIbiddikrD_Qv)
```basic
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
```

# [10 Line Fishing!](https://stigc.dk/c64/basic/?s=2bVLbbuMgEH33V0ytPiRxrIKdy5aE7LdQLsZaYixD00qR_71jms1F7QuCM3OGMzOHwpvgdE1WzPCKGcUps7wiLEhOmDtxSphynFYs4MnihPZD28X8LN0wnj9sG_VICbi202DaYNuueYKjP2kQLwpCL6SG6EGKKG2eVdD7f_pNFGZZV-z_vTTq4VktEBg6NSPzxarYbG-R9eIh1eI9qwFlRVlQ1pooD1y5aHWXpBpuCqMQN_vaD-ZQb6cQdok_XoLZChodxTMmiWeei1x0yh7IlGe5Len1q4L-JskW9aRhDd90lej7-vXCL2788nd-mfgbsJJvCHY-m3Ywv3a8tPJhTLSqynsojeoG2CUl2fYiBpIYbiYtuM8wjQjXiNubBflSz_GZdlteERyCcvt6ImCkzv48VNofUil0hTvhYP7mZ-uPejwr_9GNyQChE32v1RNAzowfPjmNfrUmrNOfMXvFYshNo7146I7_fTbiqAHNM-S7IHf5ZCi0zntjY85QU4ZO-0m9z0q05MYAAGenTRzvz3znTpgQeq0VJrsda3z01Rc)

## [https://m0nde.itch.io/10-line-fishing](https://m0nde.itch.io/10-line-fishing)
```basic
1 ba=1504:f=2:fd=1:h=20:sc=0:lv=10:dl=12:sl=1:tc=0:print"{clr}{white}10 line fishing! move a/d space to catch"
2 pokeba+f,32:pokeba+f-fd,32:pokeba+f-2*fd,rnd(0)*4+67:pokeba+f-5*fd,32:pokeba+h,32
3 tc=tc+1:iftc>=dlthentc=0:f=f+fd:iff<3orf>37thenfd=-fd:f=f+fd
4 geta$:ifa$="a"andh>0thenh=h-1:pokeba+h+1,rnd(0)*4+67:pokeba+h+3,32
5 ifa$="d"andh<39thenh=h+1:pokeba+h-1,rnd(0)*4+67:pokeba+h-3,32
6 hc=60-2*(fd=1):pokeba+f,hc:pokeba+f-fd,122-hc:pokeba+f-2*fd,hc:pokeba+h,10
7 ifa$=" "andh=fthensc=sc+1:sl=int(sc/3)+1:dl=12-int(sc/3):ifdl<3thendl=3
8 ifa$=" "andh<>fthenlv=lv-1:?"{home}{down}line snapped!  ":forx=1to450:next
9 iflv=0thenprint"{home}{down}{down}game over";sc;"fish caught":end
10 print"{home}{down}fish caught";sc;" lines   {left}{left}{left}";lv;" speed";sl;:goto2
```
## compressed
```basic
1 b=1504:f=2:d=1:h=20:c=0:v=10:y=12:s=1:t=0:?"{clr}{white}10 line fishing! move a/d space to catch"
2 g=b+f:pOg,32:pOg-d,32:pOg-2*d,rnd(0)*4+67:pOg-5*d,32:pOb+h,32
3 t=t+1:ift>=ytHt=0:f=f+d:iff<3orf>37tHd=-d:f=f+d
4 geta$:ifa$="a"andh>0tHh=h-1:pOb+h+1,rnd(0)*4+67:pOb+h+3,32
5 ifa$="d"andh<39tHh=h+1:pOb+h-1,rnd(0)*4+67:pOb+h-3,32
6 q=60-2*(d=1):g=b+f:pOg,q:pOg-d,122-q:pOg-2*d,q:pOb+h,10
7 ifa$=" "andh=ftHc=c+1:s=int(c/3)+1:y=12-int(c/3):ify<3tHy=3
8 ifa$=" "andh<>fthenv=v-1:?"{home}{down}line snapped!  ":fOx=1to450:nE
9 ifv=0tH?"{home}{down}{down}game over";c;"fish caught":end
10 ?"{home}{down}fish caught";c;" lines   {left}{left}{left}";v;" speed";s;:gO2
```
