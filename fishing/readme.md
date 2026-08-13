# [10 Line Fishing!](https://stigc.dk/c64/basic/?s=2ZVLbbhshFHznK05QHpLYqwDrS4ON-y2Ey7IqXlYLdSNZ_veeJW5qKy8IZs51Bg7vWvE1W0mvhPRWcRmUYDIbxWQ8Kc6kjYoLmfGUZUbHqR8KPZs4XTiD2A8OfJ9DP3QPcEwnB_rVQh61cVASGF1MoETAmH65d73wy1bIf_fG27uneLkDAt5JC9i1mAWXvS_moGwswQ11Eq_8wlvE_b5Nkz-025nCJbDulSQr6FzRjxikHxXVVA82HNgcF1RoOFnDJ2Mrs2_frtSCkw0EozYMp3qahXn-mnMZzN0KXIjmFqpr_AfCciXI9toHah_l5zYocp4XQ21R0qdsXttnfFbBmy8ER7dx384JyLTkx12l_aGWQqviqeHyJz2HdHSXs01_hks1Jw96HJ19AKDSp-lD8ZIEY3JwH4W8YTHMrYJcjb3J_zw7fXSAxk50l82Ozmajrb-7UKjEmQj-gu-pt1E1rf6UDADn6Hy53J50F08YkEfnLAbHnewSzvgX)
```basic
1 ba=1504:f=2:fd=1:h=20:sc=0:lv=10:dl=12:sl=1:tc=0:print"{clr}10 line fishing! move a/d space to catch"
2 pokeba+f,32:pokeba+f-fd,32:pokeba+f-2*fd,32:pokeba+h,32
3 tc=tc+1:iftc>=dlthentc=0:f=f+fd:iff<3orf>37thenfd=-fd:f=f+fd
4 geta$:ifa$="a"andh>0thenh=h-1
5 ifa$="d"andh<39thenh=h+1
6 hc=60-2*(fd=1):pokeba+f,hc:pokeba+f-fd,122-hc:pokeba+f-2*fd,hc:pokeba+h,42
7 ifa$=" "andh=fthensc=sc+1:sl=int(sc/3)+1:dl=12-int(sc/3):ifdl<3thendl=3
8 ifa$=" "andh<>fthenlv=lv-1:?"{home}{down}line snapped!  ":forx=1to200:next
9 iflv=0thenprint"{home}{down}{down}game over";sc;"fish caught":end
10 print"{home}{down}fish caught";sc;" lines   {left}{left}{left}";lv;" speed";sl;:goto2
```
