# [10 Line Fishing!](https://stigc.dk/c64/basic/?s=2ZVLbTgMhFHznK47EB7XdCKxXWuq3IJdlI102C1aTpv_uWazaxhcCM-c6A4dXrfg9u5NeCemt4jIowWQ2ism4U5xJGxUXMuMpy4yOUz8UujdxOnAGsR8c-D6HfuguYJt2DvSthTxq46AkMLqYQImAMb25V73wy1bIn3vj7dlT3JwBAe-kBexazILL3hezUTaW4IY6iVd-4S3ift2myW_ax5nCJbDukSR30LmiLzFIXyqqqR5s2LA5LqjQcHIP34ytzLp9PlILTh4gGPXAcKqrWZjr3zmXwZytwIVoTqG6xh8QlpyRx2MfqH2Un9ugyHleDLVFSa-yuW2v8VkFb34RHN3GdTsnINOSp7NK600thVbFXcPlC92HtHWHvU0fw6Gakwc9js5eAFDp0_SpeEmCMTm4z0KesRjmVkGOxp7kf5-d3jpAYye6ymZFZ7PR1vcuFCpxJoK_4H_qaVRNqz8lA8A-Ol8OpyddxR0G5NE5i8FxJbuEM34B)
```basic
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
```
