# [neofetch](https://stigc.dk/c64/basic/?s=2hVTbctsgEH3nK3ZoHqxYmXKRsKyOO_0V2cKRJpbwCJxJ-vVddAOnnpYXi91zlrNnwZzB1bxpyKUoWMrKdcP9Zmh7B6dmeNrwbJcQwWDQHZxM15naDBou5tUQiSUCUPKEAq5v46JAZD6n6Rr14YyFsA9BlCV5SC65pSBRa25NwZTZ3WUoKR4g6ShSFMmEWSST_YMT77ExmrMH6r_CYzxnD03gIo6vLfJ7S_PJ0XEF71WGwPwOyHOZ0Jd_LkoIV9MY7ad1-NP2Z0P4br4HKlOpJDxYZ2wZO4dagoRjZdsTvAs6n77HToORjbGuvGeqDI6Drupj20ccEdx800NfXcqI0xkLKkf_fgGHrvkd8zD6auztCDgPVi41blfXdrpcS0z7p4gXXLeNvvjjwnljT_Eh6yzooK253Fxr-lCcSsE-sIGYkS2yRCzrva21iY8aA7GsfOHJmGfNra9jnm3rmBXeQ6c7M3wGbdXRbs6D3rAk-UGPn05bwK2OpeLYdV8Tf6GnSzGZhXv01sEBXAvfQTEMoGkNBvCkjcOYVIz5h4D2dHMY4y_QPI-ZkeXzaIZdaUsaP7rnKY9NzwNC1NC-Nu5pQxndWocimyQVyZaWdPs10y0ZLKHiEvPXXwTrCQje-T7dbeiJv3dT0-MkoNZOn_x0MYHdn80A7QFdMKBKf2mhmv4dsz0St21alb3-cAhGZ_AtTXHcoiPTaA-0d_ZEy_YMV63fNh5QJD9xuuAa3a-oa3WhyMtWZcK7UleuAr6TKS9S5KU84ylXKd-LdK8IkYt4vA6RdPkf6TwXQboM0jGOW5Tub9eB-qIqL3gsnqssOczSA6rIC0aRGtTLO_UiTwUXo_piFv8H)
```basic
10 poke 53280,0:poke 53281,0:print chr$(147)
20 rem commodore logo
30 print chr$(31)"    ######" 
35 print "   #######" 
40 print "  ####    #######"
50 print " ####     ######"
60 print "####      ####"
70 print "####"
80 print "####      "chr$(28)"####"chr$(31)
90 print " ####     "chr$(28)"######"chr$(31)
100 print "  ####    "chr$(28)"#######"chr$(31)
110 print "   #######" 
120 print "    ######"
130 print chr$(5)"         commodore 64"
150 print chr$(153)"------------------------------"

160 rem system info
170 poke 646,3
180 print "os:      "chr$(5)"commodore basic v2"chr$(159)
190 print "host:    "chr$(5)"c64 breadbin"chr$(159)
200 print "kernal:  "chr$(5)"mos 6510 @ 1 mhz"chr$(159)
210 gosub 1000: print "uptime: "chr$(5)uptime$chr$(159)
220 print "shell:   "chr$(5)"basic"chr$(159)
230 print "resolution: "chr$(5)"320x200"chr$(159)
240 gosub 2000: print "video:   "chr$(5)video$chr$(159)
250 gosub 3000: print "sound:   "chr$(5)sid$chr$(159)
260 print "memory: "chr$(5)abs(fre(0));"bytes free"chr$(159)
270 end

1000 rem uptime
1010 t = ti / 60
1020 h = int(t / 3600)
1030 m = int((t - h*3600) / 60)
1040 s = int(t - h*3600 - m*60)
1050 uptime$ = right$("0"+str$(h),2)+":"+right$("0"+str$(m),2)+":"
1060 uptime$ = uptime$+right$("0"+str$(s),2)
1070 return

2000 rem video detection
2010 for i=0 to 6:read a:poke 49200+i,a:next
2020 sys 49200
2030 video$="ntsc":if peek(49208)>300 then video$="pal"
2040 return
2050 data 173,18,208,141,16,192,96

3000 rem sid detection
3010 for i=0 to 6:read a:poke 49152+i,a:next
3020 sys 49152
3030 sid$="sid 6581":if peek(49164)=0 then sid$="sid 8580"
3040 return
3050 data 173,25,212,141,8,192,96
```
