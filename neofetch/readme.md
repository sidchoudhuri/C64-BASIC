# [neofetch](https://stigc.dk/c64/basic/?s=2hVTLbtswELzzKxZsDlasoHxItKzARX9FtuiIiCUaIh00_fouRb2cGi0vEndml7PDBTmDq33XkEtRsJSV84aHTW86D6emf9rwbJcQMZJVplKeESIZ9LqFk21bW9tew8W-WSILWCVKnlDA9W1YFIjcjzCdoyGcsSUcQrBCSb6AEzYVJGrGZggisrtDKCkeMOkgUhRJ5EySyf7BiffcNZuzB-q_0u_4_KEJnIlVfG6RM7m2NI-O3q3lDlSGCdnqpnLCF_9e_rkoIVzFS3WfzuPHdGdL-G5VThK-GGld-fX8Y-XMCT4EqlhMbKzzA_OkMjj2uqqPpqM4UDPjXfdddUFOax2onDP4CRza5jeycPNm3e0I6DMrp4zb1ZtWl0Bf498TEWIu5xp9CdWiHKwhZ6jXzl5u3tiuBCnYLxSBeDadIdZnfJha21CGvg6_eEY-EeWa6OytqyPRmRppy1i2urX9Z9BZHd3m3OsNS5JXevz02gFuNZ6OBuuuJmGQov2xpTAoDDwcwBv4DoqFCWHQYABLbzzGpGIsDBT2145hjL9A8zwgQ1bAsT83p00w_rTPEce2RhuR1Zu3xj9tKKNb53HimiQVyZaWdPsVaScES6h1ifHvrwQXEpC8C336W9-RMAWx6cFiqLXXp3A9CGD3Z9uDOaALFlQZJgeq-Eple0zcmrQqO_3LIxmdwamNcdyiI_HODrTz7kRLc4ar1u-bQCiSH3h_4BvdzaxrdQkjmc3KRHClrnwFfCdTXqSYhw8fTzm-f3uR7lV4A0fxeO0r6fI_0nkuFulykY5x3KL0MEUHGoqqvOBr8VxlyWGUvrCKvMAxliv18k69yFPBxaC-GMX_AQ)
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
90 print " ####     "chr$(28)"######"chr$(31)
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
200 print "kernal:  mos 6510 @ 1 mhz"
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
