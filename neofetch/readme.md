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
# [fastfetch](https://stigc.dk/c64/basic/?s=2hZXftqIgFMbveQoXq4somwP4J2UWs-ZVTCk9pXhEm-rpZytZ2mnWeCEinz82394gpYlk_lbspB9zSkU6tJHIpAc9BT0WcETZvn8KfXGRXggDVxlS0cq2-LiKXBZVu2w_LgRRfpAeE5-SBZ44wp2JE9wjUUkeCS3ZVjSSRYh6X5KLcvhw2W7y1YV8XIkwltT3N-XqCjy_YwvZFIe8XSwxxWvTNotlTtwvIjoZiBrgMaJBx7-rykF1BkUokgSWg2jY1QsJxDUWeA3f9K243STjANkOg_Vi_QoyPQjR6FwsJK5ak2Jh-kdTZE4YRAwjGu91U0ja6lA0KsluotZHtVsX7k1U6tIiRs3V7ESxr5U6LlPyK2tzVQ3AOjlhxNg7gJoAOADUCNgTkALgEUYURBQo3m6_kEPMyc4s941aUkLIwAo8HlGXIuaPPeZSUTdgeJr3H5ChORDsOA7-iVgwjEFvtXKGCw-CT4IPRVKdujTpVeGTcCT490OT6rLUmW5U6ENc26fKTrBazalHAqzIzrh5cwEjfmGsXhknYHBqGdqMXCycRywOvEaczUGWYu8TELegXJv2LapfF_deUY4z-jVB-RZ1VE0FuX7Cdn2md_oCoGAGuq9r9bo4azbu6rYo1QQEbxaIb98xvhl0N9nk6jSLJTFF6pw5xBK_41hpBX3IukfH2piwcVaY-pRcp3GB1LqNPU4vcLxg8d2xXsVH4HOemYs4rbte583KTTilNrAFGXV-O8wp8xtGnv8uvRNsj7nX9jTl-FxkSr8Ebw2HbSr-VXy9ajsPHlhGd1U2ZcFGRV70v13QJ8iz9uNSlbqZmIlha2Nnd22VcfYwq3_PQaPUq6ljEfYq9szUI7qTTpPTpH563ZgAVW1U9aNWcMoVxR2MMfKt8aZOl9oeFI1tOjJJGnD8uRf1c_g8PIJkUutJ8hw_EDz1wQ8fJPGce_M1zg6KScHfbiM9goP0D_zR4lazIJg488cq7HHqx_MgsFBVhgKaJW3Ctp7LIhd-gi7zmctCl8XcjUMUsHGYBy5nfBiO7qN_AQ) by Gianluca Cherubini
```basic
00a=147:b=49200:c=49208:d=300:e=49152
01f=49164:x=3600:y=60:t=ti/y:h=int(t/x)
02g=31:j=153:k=151:l=158:n=28:o=17:r=18
03q=2:m=int((t-h*x)/y):s=int(t-h*x-m*y)
04u1$=right$("0"+str$(h),q):u=5:p=159
05u2$=right$("0"+str$(m),q):v=156:aa=30
06up$=u1$+":"+u2$+":":zz=129
07up$=up$+right$("0"+str$(s),q)
08vi$="ntsc":si$="sid 6581"
09fori=0to6:readz:pokeb+i,z:next
10sysb:ifpeek(c)>dthenvi$="pal"
11fori=0to6:readz:pokee+i,z:next
12syse:ifpeek(f)=0thensi$="sid 8580"
13bf$=str$(abs(fre(0))):poke53280,0
14poke53281,0:printchr$(a)chr$(g)"   ";
15print"  **      "chr$(j)"gianluca";
16printchr$(k)"@"chr$(j)"commodore64"
17printchr$(g)"   ****      "chr$(k);
18print"--------------------"
19printchr$(g)"  *****      "chr$(l);
20print"os"chr$(k)": commodore os"
21printchr$(g)" ***   ***   "chr$(l);
22print"host"chr$(k)": commodore 64"
23printchr$(g)" **    **    "chr$(l);
24print"kernal"chr$(k)": breadbox"
25printchr$(g)"**     *     "chr$(l);
26print"uptime"chr$(k)": "up$
27printchr$(g)"**           "chr$(l);
28print"shell"chr$(k)": basic v2"
29printchr$(g)"**     "chr$(n)"*";
30print"     "chr$(l)"display"chr$(k)": ";
31print"320x200":printchr$(g)" **  ";
32print"  "chr$(n)"**    "chr$(l)"cpu";
33printchr$(k)": mos 6510 @ 1 mhz"
34printchr$(g)" ***   "chr$(n)"**";
35print"*   "chr$(l)"video"chr$(k)": ";
36printvi$:printchr$(g)"  *****    ";
37print"  "chr$(l)"sound"chr$(k)": "si$
38printchr$(g)"   ****      "chr$(l);
39print"memory"chr$(k)":"bf$" bytes f";
40print"ree":printchr$(g)"     **  ";
41print"    "chr$(l)"locale"chr$(k)":";
42print" en-en.petscii":print""
43printspc(o)chr$(r)chr$(u)"  "chr$(n);
44print"  "chr$(p)"  "chr$(v)"  ";
45printchr$(aa)"  "chr$(g)"  "chr$(l);
46print"  ":printspc(o-q)chr$(r);
47printchr$(zz)"  ";
48forw=149to155:printchr$(w)"  ";:next
49printchr$(aa)"":end
50data173,18,208,141,16,192,96
51data173,25,212,141,8,192,96
```
