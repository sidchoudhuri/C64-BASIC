10 poke 53280,0:poke 53281,0:print chr$(147)
20 rem commodore logo
30 print chr$(31)"    ######" 
40 print "   #######" 
50 print "  ####    #######"
60 print " ####     ######"
70 print "####      ####"
80 print "####"
90 print "####      "chr$(28)"####"chr$(31)
100 print " ####     "chr$(28)"######"chr$(31)
110 print "  ####    "chr$(28)"#######"chr$(31)
120 print "   #######" 
130 print "    ######"
140 print chr$(5)"         commodore 64"
150 print chr$(153)"------------------------------"chr$(159)

160 rem system info
170 print "os:      "chr$(5)"commodore basic v2"chr$(159)
180 print "host:    "chr$(5)"c64 breadbin"chr$(159)
190 print "kernal:  "chr$(5)"mos 6510 @ 1 mhz"chr$(159)
200 gosub 1000: print "uptime: "chr$(5)uptime$chr$(159)
210 print "shell:   "chr$(5)"basic"chr$(159)
220 print "resolution: "chr$(5)"320x200"chr$(159)
230 gosub 2000: print "video:   "chr$(5)video$chr$(159)
240 gosub 3000: print "sound:   "chr$(5)sid$chr$(159)
250 print "memory: "chr$(5)abs(fre(0))"bytes free"chr$(159)
260 end

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
