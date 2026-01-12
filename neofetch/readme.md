# [neofetch](https://stigc.dk/c64/basic/?s=2hVTLbtswELzzKxZsDlasoHxItKzARX9FtuiIiCUaIh00_fouRb2cGi0vEndml7PDBTmDq33XkEtRsJSV84aHTW86D6emf9rwbJcQMZJVplKeESIZ9LqFk21bW9tew8W-WSILWCVKnlDA9W1YFIjcjzCdoyGcsSUcQrBCSb6AEzYVJGrGZggisrtDKCkeMOkgUhRJ5EySyf7BiffcFZmzB-K_sO_5_KEHnIlVfO6QM7l2NI-G3q3lClSGCdnqonLCF_te_rkoIVzFO3WfzuPHdGdL-G5VThK--Ghd-fX8Y-XMCT4Eqlg8bKzzA_OkMjj2uqqPpqM4TzPjXfedviCntQ5Uzhn8BA5t8xtZuHmz7nYE9JmVU8bt6k2rS6Cv8e-JCDGXc42-hGpRDtaQM9RrZy83b2xXghTsF4pAPJvOEOszPkytbShDX4dfPCOfiHJNdPbW1ZHoTI20ZSpb3dr-M-isjm5z7vWGJckrPX567QC3Gk9Hg3VXkzBI0f7YUhgUBh4O4A18B8XChDBoMIClNx5jUjEWBgr7a8cwxl-geR6QISvg2J-b0yYYf9rniGNbo43I6s1b4582lNGt8zhxTZKKZEtLuv2KtBOCJdS6xPj3V4ILCUjehT79re9ImILY9GAx1NrrU7geBLD7s-3BHNAFC6oMkwNVfKSyPSZuTVqVnf7lkYzO4NTGOG7RkXhnB9p5d6KlOcNV6_dNIBTJD7w_8I3uZta1uoSRzGZlIrhSV74CvpMpL1LMw3ePpxyfv71I9yo8gaN4vPaVdPkf6TwXi3S5SMc4blF6mKIDDUVVXvC1eK6y5DBKX1hFXuAYy5V6eade5KngYlBfjOL_AA)
```basic
10 poke 53280,0:poke 53281,0:print chr$(147)
20 poke 646,14

30 rem commodore logo
38 print chr$(31)"    ######" 
39 print "   #######" 
40 print "  ####    #######"
50 print " ####     ######"
60 print "####      ####"
70 print "####"
80 print "####      "chr$(28)"####"chr$(31)
90 print " ####     "chr$(28)"#####"chr$(31)
100 print "  ####    "chr$(28)"#######"chr$(31)
101 print "   #######" 
102 print "    ######"
103 print chr$(5)"                 commodore 64"
140 poke 646,5
150 print "------------------------------"

160 rem system info
170 poke 646,3
180 print "os:      commodore basic v2"
190 print "host:    c64 breadbin"
200 print "kernel:  mos 6510 @ ~1 mhz"
210 gosub 1000: print "uptime: ";uptime$
220 print "shell:   basic"
230 print "resolution: 320x200"
240 gosub 2000: print "video:   ";video$
250 gosub 3000: print "sound:   ";sid$
260 print "memory: ";abs(fre(0));"bytes free"
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
