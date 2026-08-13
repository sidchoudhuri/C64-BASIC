# [10 Line Fishing](https://stigc.dk/c64/basic/?s=2ZVFdbwIhEHznV6ykD230UrhTW1Hsb6F8HJficTmobWL8791DU236soGdmWXY4fCuJF-xpXCSC2eweFkzkbRkIhwlZ8IEyWuRsIo8dYex6zM96TCeOYPQ9RZcl3zXtzOoQD2bBaRBQ46gVdaekhqG-GHf1dwtmlpczx7PpAGcmPWci85lvZcmZG_78oqTbu4M9t2Ox9Htm80EocEKuxeQLKG1WT0gST1Iqqjqjd-zieelrzhZwQUxBdldRiA052R987RmN0_LmrxcRVBE0k0a3EaaXOIS8O-PST83T3gtm6l-O-jDhF0zCRBpyOufSbt9GYU7DceKizd68vFgzycTv_pz2WLq1TBYMwOgwsXxW_Ica8ZEb78z2eAw1JbfXRO4019qqw4W4tGOdJv0lk6pYAafrc9UoCeCcf2X3rOKrESaAOAUrMvn-0q34YiENFhrkBy2oo3o8Qc)
```basic
1 ba=1504:f=1:fd=1:h=20:sc=0:lv=10:dl=12:sl=1:tc=0:print"{clr}10 line fishing! - a/d, spc to catch"
2 pokeba+f,32:pokeba+h,32
3 tc=tc+1:iftc>=dlthentc=0:f=f+fd:iff<1orf>39thenfd=-fd:f=f+fd
4 geta$:ifa$="a"andh>0thenh=h-1
5 ifa$="d"andh<39thenh=h+1
6 pokeba+f,60:pokeba+h,42
7 ifa$=" "andh=fthensc=sc+1:sl=int(sc/3)+1:dl=12-int(sc/3):ifdl<3thendl=3
8 ifa$=" "andh<>fthenlv=lv-1:?"{home}{down}line snapped!  ":forx=1to200:next
9 iflv=0thenprint"{home}{down}{down}game over";sc;"fish caught":end
10 print"{home}{down}fish caught";sc;" lines   {left}{left}{left}";lv;" speed";sl;:goto2
```
