# [neofetch](https://stigc.dk/c64/basic/?s=2hVTbbqMwEH33V4y8fQgN1foChCBltb9CglOsBhxhp2r363cMAZtu1PVL8Mw54zNn7HAGV_OmIJeiZCmrlg33m0H3Dk7t8LTh2S4hgsGgOjiZrjONGRRczKshEksEoOQJBVw_xkWBZHOaLlEfzqOwD0GUJUVIzrm5INktuSUFU6ZcZSjZP0DSUaQokwkzSyacPThyDV7B-QP5X-ExXjx2gcs4vvTIs5Wn-WTpuIL5RYbAfAXkuUzoy7eL3oH7hBBeTAO1n9bhj-7PhvDgr7FVbBqqCIcfa6tP8C6icjz43xrrqjWzyOA4qLo56j7mhBm9qaGvL1XE6YyFIkenfwOHrv0T8QSO69XY2xFwcKyaa9yuTneqWkpM-6eIF-ZmW3Xxx4Xzxp7iQ8LQBmXN5ea06UNxKgX7QCExQ86yRCzrXTfKxEeNgVhWNvNkzLPm1jcxz-omZoU31KnODJ9BW320m_OgNizBtj6dsoA7FSvF0au-If7iT5dg8gr3aJGDAzgNP6FgGEAbWgzgQRuHMVkw5h8M9trdwxh_gfZ5zIwsn8ee7EKb0_jRPU95VH-fD6IG_dq6pw1ldGsdimyTVCRbWtHt10w3Z7BEEZe4f_1DsJ6A4J3v092GnvjrMzU9DgIa5dTJDxcT2P3ZDKAP6IKBovJ3FurpfzHbI3Gr07rq1YdDMDqDb2eK4xYdmSZ7oL2zJ1rpM1yVett4QJn8wuGCa1W_oK71hSIvW5QJ70pTuxr4Tqa8TJGX8oynvEj5XqT7ghA5i8fbEEmX_5HOcxGkyyAd47hF6f5yHagvWuQlj8XzIksOd-kBVeYlo0gN6uVKvchTwcWovryL_ws)
```basic
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
```
