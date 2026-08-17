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
1 ba=1504:f=2:fd=1:h=20:sc=0:lv=10:dl=12:sl=1:tc=0:?"{clr}{white}10 line fishing! move a/d space to catch"
2 g=ba+f:pOg,32:pOg-fd,32:pOg-2*fd,rnd(0)*4+67:pOg-5*fd,32:pOba+h,32
3 tc=tc+1:iftc>=dltHtc=0:f=f+fd:iff<3orf>37tHfd=-fd:f=f+fd
4 j=ba+h:gEa$:ifa$="a"andh>0tHh=h-1:pOj+1,rnd(0)*4+67:pOj+3,32
5 ifa$="d"andh<39tHh=h+1:pOj-1,rnd(0)*4+67:pOj-3,32
6 hc=60-2*(fd=1):pOg,hc:pOg-fd,122-hc:pOg-2*fd,hc:pOj,10
7 ifa$=" "andh=ftHsc=sc+1:sl=int(sc/3)+1:dl=12-int(sc/3):ifdl<3tHdl=3
8 ifa$=" "andh<>ftHlv=lv-1:?"{home}{down}line snapped!  ":fOx=1to450:nE
9 iflv=0tH?"{home}{down}{down}game over";sc;"fish caught":end
10 ?"{home}{down}fish caught";sc;" lines   {left}{left}{left}";lv;" speed";sl;:gO2
```
