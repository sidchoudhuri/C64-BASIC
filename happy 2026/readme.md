# [happy new year 2026.prg](https://stigc.dk/c64/basic/?s=2jVTBkpswDL3zFdpMDpCQqe0YEtih_0LAJJ4Fk7GhS_6-soGG0M5ucyBISHrP0pMpgXv7ISA6sjMJSfrHoNbQUnVQ3PTWp_wUeIxAJ4Zum212ux1cRQda5OXjDdDcpNfW9BdICPGOBKpWQ5dR6FqghJBUYZ7HR3-RUfeBgenEHQ7Ui5DFK1a6YFUsWRVePLMwHQYXBxosoE8jRDlC8xn5TMD9J98e93la5D0BgTuvEp9wEVeplFRX8waMsBikgZvQAg7wKc0NP8DGo3ROdM_95tH20N0EZpsOpHLvttpD5PrNJrBVQncbLP28rufwIuaQqxIuuZEFNqu96rxpJrzjKh2Ktml6JTspkGfd_hK2GrLQUOWNrB9I18gS_IaoUgQAtggOZ5AZTS99hQOG__xh4mp4CXYORzRk6PK1Kn0a7DgJ0sfSwThGnaZhUML4_oFB-yHkbJpJxJJ4di4SaYyJOM1x4lZaHsWhWi3m21RW-Mw2G9syhTFWfRFB3RIQqsTpv1CNgndzL3xb3efkUAvluwYGwQ8WBO_uPdWi67WyYiCo9gYqqcVnqz-MdUXOVee9Km5o01ldHMmHcTobp1NIF9Y5ZJw8zTikLLHZdDoVc6cibJRylVl14EHwz-0Lf6YewyodhU3J8QnuSp7Tl2p8pH9v72hEL0RptGRKvia6BGeucrTiHX9N5DQSufTaWNrnRfQanPyjS-cVWjJ3KXZdYlE0dil-7dLUpGSdzb7iSqeZm3vuBm4X24LJ6WJjS4yluqMo-Iu5nd8KayLFXknZdZ5Ux2bVmUK3dS00euh63VJLST8p2Y9jaWY15Pa5keXWt28hC_bOcOoOBxlSe68f56I25j3Fi2CQe2r3aZA_n4sx7pW9JjCHzzR_Aw)
```basic
10 poke 53280,0:poke 53281,0:print chr$(147)
20 text$="*** get ready! ***":gosub 900
30 for t=1 to 1000:next
40 for c=11 to 2 step -1
50 print chr$(147):poke 53280,c:poke 53281,c
60 text$=str$(c-1):gosub 900
70 for d=1 to 400:next
80 next
90 poke 53280,0:poke 53281,0:printchr$(147)
100 text$= "*** new beginnings! 2026 is here - wishing "
110 text$=text$+"you the best in the new year! "
120 text$=text$+"thx to all in the c64 and basic programming "
130 text$=text$+" communities! love to your family - sid (m0nde)   "
140 xi=1:buf$="                                        "
150 print chr$(19)
160 x=int(rnd(1)*40):y=int(rnd(1)*24)
170 poke 1024+y*40+x,42:poke 55296+y*40+x,int(rnd(1)*16)
180 gosub 1000
190 get a$:if a$="" then goto 150
200 end
900 print chr$(5);spc(int((40-len(text$))/2));text$:return
1000 rem fireworks
1005 rem launch
1010 poke 54296,6:poke 54277,16:poke 54278,240:poke 54276,129
1011 gosub 2000
1020 for f=20 to 120 step 4:poke 54273,f: next
1030 poke 54276,128:gosub 2000
1040 rem pop
1050 poke 54296,15:poke 54277,0:poke 54278,240:poke 54276,129:poke 54273,200
1051 gosub 2000
1060 poke 54276,128:gosub 2000
1070 rem burst
1080 poke 54277,0:poke 54278,200:poke 54276,129
1081 gosub 2000
1090 for f=60 to 255 step 6:poke 54273,f:next
1091 gosub 2000
1092 poke 54276,128:gosub 2000
1100 rem sparks
1110 for i=1 to 12:poke 54273,int(rnd(1)*255):poke 54276,129
1120 poke 54276,128:next
1021 gosub 2000
1130 return
2000 rem scroller
2010 print chr$(19):for r=1 to 12:print:next
2020 buf$=mid$(buf$,2)+mid$(text$,xi,1)
2030 print buf$;:xi=xi+1:if xi>len(text$) then xi=1
2040 return
```
