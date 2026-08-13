# [10 Line Fishing](https://stigc.dk/c64/basic/?s=2ZVHLboMwELz7Kxwrh1YEBUOSNgbTb3H8wKgORtilkaL8exeImlS9rNYzO6PZNaL4JDjdZztmOGVGQbE8z1iQPGNu5AVTjtOcBagsTmA_tF0kV-mGm2mDbbtmhVMstmqDQy9x9FiKKC1BOe79pz6JxGyKnN17Cz0qMDhFmVDWmihrrly0upvdDTeJUYCbivrB1MVxoiBXCuhCoh1udBRrGBJrTgQRnbJ1Ns1ZblOK9nhh1MxUiwVQCUWHR6ZD9si0y9HbXYRnETeTBo4QppSwPOz8EuS2eIXnfJH0F4EcylXFJACmQO9_nKp6toJTujGl7INcrT_r21X57-7m2k7j0Im-12pFmPHDhdPo8yxjnb5EdAQrUM673e_-pF5qI84a-1EPpAyyJNOfwA98NTYSBokQzfB_6fPULMNTlEBKN0Ifeq0V4K5kjYc4Pw)
```basic
1 ba=1504:f=1:fd=1:h=20:sc=0:lv=10:dl=12:sl=1:tc=0:print"{clr}10 line fishing! - a/d, spc to catch"
2 pokeba+f,32:pokeba+h,32
3 tc=tc+1:iftc>=dlthentc=0:f=f+fd:iff<1orf>39thenfd=-fd:f=f+fd
4 geta$:ifa$="a"andh>0thenh=h-1
5 ifa$="d"andh<39thenh=h+1
6 pokeba+f,60:pokeba+h,42
7 ifa$=" "andh=fthensc=sc+1:sl=int(sc/3)+1:dl=12-int(sc/3):ifdl<3thendl=3
8 ifa$=" "andh<>fthenlv=lv-1:?"{home}{down}line snapped!":forx=1to200:next
9 iflv=0thenprint"{home}{down}{down}game over";sc;"fish caught":end
10 print"{home}{down}fish caught";sc;" lines";lv;" speed";sl;:goto2
```
