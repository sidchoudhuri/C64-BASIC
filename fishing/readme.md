# [10 Line Fishing!](https://stigc.dk/c64/basic/?s=2ZVLbTgMhEH3nK0big9puBLbeaKnfglyWjbhsFqwmTf_dWazaxpfJMGcuZ87A4UUrfsdW0isuvUUTlGAyG8Vk3CnOpI2KC5nRyjJHx6kfCt2bOB04g9gPDnyfQz90F9CAvrVLyKOBksDoYgIlAsb06l70wi9bIX_8xtuzp7g5CwT0SQs4sZgFl70vZqtsLMENlYVXfuEtxv1GpMlv24cZwgWw7xEkK-hc0ZeYpC8V1VQPNmzZnBdUaDi5g2_EVmTTPh2hBSf3EIy6Z8jqahbl-pfnMpizFbgQzWmorvEXCMuVIA_HOVDnKD-PQYHzvBjqinJeZXPbXuOzit38RpC6jZt2LkCkJY9nnTbb2grPFHcNl890H9KbO-xt-hgO9TB50OPo7AUAlT5Nn4qXJBiTg_ss5AmbYW0V5HjUk_pv2-k3B2nnJrrOZk3nQ-NZ37tQqEROBH_A_9LTrFpWf0kGgH10vhxOLV3HHSbk0TmLyXEtu4QcvwA)
```basic
1 ba=1504:f=1:fd=1:h=20:sc=0:lv=10:dl=12:sl=1:tc=0:print"{clr}10 line fishing! - move a/d, space to catch"
2 pokeba+f,32:pokeba+f-fd,32:pokeba+f-2*fd,32:pokeba+h,32
3 tc=tc+1:iftc>=dlthentc=0:f=f+fd:iff<2orf>37thenfd=-fd:f=f+fd
4 geta$:ifa$="a"andh>0thenh=h-1
5 ifa$="d"andh<39thenh=h+1
6 hc=60-2*(fd=1):pokeba+f,hc:pokeba+f-fd,122-hc:pokeba+f-2*fd,hc:pokeba+h,42
7 ifa$=" "andh=fthensc=sc+1:sl=int(sc/3)+1:dl=12-int(sc/3):ifdl<3thendl=3
8 ifa$=" "andh<>fthenlv=lv-1:?"{home}{down}line snapped!  ":forx=1to400:next
9 iflv=0thenprint"{home}{down}{down}game over";sc;"fish caught":end
10 print"{home}{down}fish caught";sc;" lines   {left}{left}{left}";lv;" speed";sl;:goto2
```
