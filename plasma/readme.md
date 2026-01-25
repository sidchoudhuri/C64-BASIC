Visitors: click links to run code in online emulator

# [plasma with color cycling showing color codes](https://stigc.dk/c64/basic/?s=2fZDBboMwEETv_opV1IMNFO06dgJIVCKOE6wQQEAl-P8fqakhai69eWa9s09DCH33sKCPMsMEi5egXZzUKaGiH1w7gamHD07qLJhEuLonjFxqLbbp4fLtmqtr7zC61sJUXRqbpumBHRFu3QCuRJg68BvFyJ0o_Q7P4nPkf3MXYYpSaSGK1s4TI0QY7BN-I6FvqvFZMaIQtGxBqljVHNQxZ-SpTMlHzucoE1C11_WYiL2x_DXCizQjT1aXKotN4W5gvnKYatt6y3z6NLV3o2V-ipdIYTwnJrRCHna3akYaYcUO7HJjN4tp7M4u6a2EPM-ZDLi9tQ8ebjgR0wtO_gcn3-HcG5fzSHJHundrVYQ_)
```basic
10 poke 53280,0:poke 53281,0:poke 646,1:print chr$(147)
20 dim s(255):print "building sine table..."
30 for i=0 to 255:s(i)=int(8+7*sin(i*0.0245)):next

100 rem build plasma
110 for y=0 to 24:for x=0 to 39
120 c=(s((x*8) and 255)+s((y*8) and 255)) and 15
130 h=48+c:if c>9 then h=c-9
140 poke 55296+y*40+x,c:poke 1024+y*40+x,h
150 next:next

200 rem cycle plasma
210 for i=0 to 999
220 c=(peek(55296+i)+1) and 15
230 h=48+c:if c>9 then h=c-9
240 poke 55296+i,c:poke 1024+i,h
250 next:goto 210
```
# [plasma 10 print w/ color cycling (4 liner)](https://stigc.dk/c64/basic/?s=2TU9LDoMgEN17ilkOYsxAGT8kHMYU2xBTaKoLvH1R06S7eS_vN4rAh9eKmlnYR_oER1sqwK4YhAtxw0H29Roihppa0oaFsHHOW6UJih52R7Al0OZwQ77QbbR3hytirgcBU_Rw5MtC7P_EdSmubgSTd6rEy702JLN9p2WefIN937L8RI-q9F6kZKN73dzPGbnZK3MtCY5Zj93Rz50e-ZRDaPA9z0v5Rqpf3-m0z1SUhr4)
```basic
10 dims(255):fori=0to255:s(i)=int(8+7*sin(i*0.0245)):next
20 for y=0 to 24:for x=0 to 39:c=(s((x*8) and 255)+s((y*8) and 255)) and 15
30 ad=1024+y*40+x:pokead,(77.5+rnd(1)):pokead+54272,c:nextx,y
40 for i=55296 to 56295:poke i,(peek(i)+1) and 15:next:goto 40
```
# [plasma with color cycling - no color codes](https://stigc.dk/c64/basic/?s=2ZZHdbqNADIXv_RRWtNJCIO14hiFAy0rJZJqMSiACIiWXVdu7qJG6f-rb1wS6pdobND62jz8bErir7i1qJRMRiqwLujcN7ziKQ8o-SuYylBzVrmzRbOpvHkVzH6TA2m5xuXfFChtXWmwXy8KCYu9L6eSScuV6lJ3cQCRw5bbYeFJrH7TAu6pGlwtsK2QJYsE55-ds4SXBfMrNnpvGVzJRlFxLHfv-wDK5Yru5wNIe2v_wgMQYcFcsmu0CiPp5x2FelHXRoY9UCsRbmbzxvMM08XFRrjokP2DhOBaAeEtTFbnWMo2D4zQSwSFrTJ2TkNEQA_Gq66rZL1EJAaSHo3NfaPrjckeYUHbhPL-c3vDp9eEvnv88nIDiYbHuA3ztfhtzNIX92EbSl-ulaQpSjsHcJ5PLTL6z9t7jrB8QSDWGk9EXuG7SP8ANzmb4dH75_gsf3x5Pz8h4v59_gtQD4brqTsku_O97Sm6ztmSzlW1AMaW7Q_ODNLabTs7NjGJQstdvOX_RN3mUBAaUGurzz4SZpaCizrzd1-U7)
```basic
10 POKE 53280,0:POKE53281,0:POKE646,1:POKE 53272,21:PRINT CHR$(147)
20 REM BUILD SINE TABLE
30 PRINT "BUILDING SINE TABLE";
40 DIM S(255)
50 FOR I=0 TO 255
60 S(I)=INT(8+7*SIN(I*6.28318/256)):PRINT ".";
70 NEXT:PRINT CHR$(147)

100 REM BUILD PLASMA
110 FOR Y=0 TO 24:FOR X=0 TO 39
120 C=S((X*8) AND 255)+S((Y*8) AND 255)
130 COL=55296+Y*40+X:SCR=1024+Y*40+X
140 GOSUB 300
150 POKE COL,C:POKE SCR,81: REM only draw oval
160 NEXT:NEXT

200 REM CYCLE PLASMA
210 FOR I=0 TO 999
220 COL=55296+I:SCR=1024+I:C=PEEK(COL)+1
230 GOSUB 300
240 POKE COL,C:REM POKE SCR,H -- don't cycle values
250 NEXT:GOTO 200

300 REM SCREEN CODES
310 IF C>15 THEN C=C-16
320 IF C<10 THEN H=48+C
330 IF C>=10 THEN H=C-9
340 RETURN
```

# [simple plasma](https://stigc.dk/c64/basic/?s=2TVDRboMwDHz3V_hhD4R0W2xImlaiEk3piNZCBTyE__-RmUK1RorknC--85HBR__b2IK92Znjq6atdqXb0fExxG4K7fCRUblXAGxwaO54rscYcIxdg1N9vjVQGLzEO44ZW6ugNHjtB4yVwalHgcAa6UVVybTM630uX7OYuy_2Bflvtk4pcAa7Jk0AZN5VeNV53OrxXgOR2G6pkqvpGK_L4yQKOLVN9-wYIF44LBzWvHL4ncMLRxynKq0z0qk4rM20tDb782a_BBL7oRqzLOVei4bCursseykt4PwE-R8EklVkbDjRphmq8EkOaL9mjmS41HNeGp12np55o7V8cC8wAPk1DpyBDgZ_erEiwcBy_gA)
```basic
10 POKE53280,0:POKE53281,0:POKE646,1:PRINTCHR$(147)

20 REM BASIC SINE TABLE
30 DIM S(255)
40 FOR I=0 TO 255
50 S(I)=INT(8+7*SIN(I*6.28318/256))
60 NEXT

100 REM BASIC 2 SINE PLASMA
110 PH1=PH1+1:IF PH1>255 THEN PH1=0
120 PH2=PH2+2:IF PH2>255 THEN PH2=0
130 X=X+1:IF X>39 THEN X=0
140 FOR Y=0 TO 24
150 C=S((X*8+PH1) AND 255)+S((Y*8+PH2) AND 255)
160 IF C>15 THEN C=C-16
170 POKE 1024+Y*40+X,81:POKE 55296+Y*40+X,C
180 NEXT Y
190 GOTO 100
```
# [plasma with machine language stub](https://stigc.dk/c64/basic/?s=2dVLbbqswEHz3V2xRHoBY0a5jc3GbSq5xE9QEIuxKyf__SE0MOTqV-gLsenY8MwshXMcvB2ovGuSonwWtRSUrTvo69UMAe5o2Ocm6YAKh6y_gc6FUsZxmRze4yYR-OILvBwfBfJzdbrfL2B7hc5ygPyCEEeKM9nlfHOJU3mzrMqLzvsQdCqmKQg_uFpiMyhLteTTdzHkx9jTT2rFLrArBHlAnZtmSEjO7bAWSnpzpoEsWet5pe7DbLjFXCP0n2Ld3WdcKwskN60325OyX_76Am6Zxesmexsags1f7msHgXKdhHsy0GzpWP1V-fPfnh8zr2fiLeQhsku37Yls-pN5StW9ZO-vPfZ7fyqYAM3RzMsU2Nu4liX-d9EWKES7ropjU9l5K3N54Q8vWlGirtWkZEcJsN3mmuLDJXVaxczr3l1g578FfjXWzJB_MFDJG-4Q9ugBmo2NWZvP2nkGWsorHcf0I_u7hEbqO8UR3iCxuJP4XJhigSnDk1LTxKajiQnJCxYlL4hTfql4OVkj9C8IUrVQLtuawgpu_-JonX_uEMCUWpv-xEbEXXGAkw5a31Q8) - optimized by Gemini
```basic
10 poke 53280,0:poke 53281,0:poke 646,1:print chr$(147)
20 dim s(255):print "generating sine table..."
30 for i=0 to 255:s(i)=int(8+7*sin(i*0.0245)):next
40 print "loading machine code..."
50 c=0:for i=49152 to 49201:read d:poke i,d:c=c+d:next
60 if c<>4775 then print "checksum error!":print "got:";c;" need: 4775":end
70 print "building plasma..."
80 for y=0 to 24:for x=0 to 39
90 c=(s((x*8) and 255)+s((y*12) and 255)) and 15
100 poke 1024+y*40+x,81:poke 55296+y*40+x,c
110 next:next
200 sys 49152:goto 200
500 data 162,0,189,0,216,24,105,1,41,15,157,0,216,189,0,217,24,105,1,41,15
510 data 157,0,217, 189,0,218,24,105,1,41,15,157,0,218,189,0,219,24,105,1
520 data 41,15,157,0,219,232,208,209,96
```
# [simple plasma](https://stigc.dk/c64/basic/?s=2RZDLboQwDEX3-Qpr1EUCiNohCQ-JBYJ0Gs0MIGABy35BR1318xte012uc319bELou5sFncgMIyxegk5hlImo6AfXTlB_Dm-cVCqYRGjcA0YutRbH7-VqWztUk2uvcRxfWILw0Q3gSoSpA28sRu5E6a08C9NgdC13AcYolRaiaO08QTHYB5hYZu9SG_h6Pn--f2FzMLWnLUeaKlY17yrJmUaoSz5yPgeZgKpt1oEi9IUlIPlf2V-kmTk2J58eLoHCcI4yOg6gZW7OYs1ShJVuQ2SECCvlUPWugbq7e4x6qe-WEZ0Lb_0rmDYy14zkMctFvLf25q8Q0guEkiP-2vkOH_IH) - optimized by Gemini
```basic
10 POKE 53280,0:POKE 53281,0:POKE 646,1:PRINT CHR$(147)
20 DIM S(255):PRINT "GENERATING..."
30 FOR I=0 TO 255:S(I)=INT(8+7*SIN(I*0.0245)):NEXT :REM 6.28/256 approx .0245
40 FOR Y=0 TO 24:FOR X=0 TO 39
50 C=(S((X*8) AND 255)+S((Y*12) AND 255)) AND 15
60 POKE 1024+Y*40+X,81:POKE 55296+Y*40+X,C
70 NEXT:NEXT
100 REM RAPID COLOR CYCLE
110 FOR I=55296 TO 56295
120 POKE I,(PEEK(I)+1) AND 15
130 NEXT:GOTO 110
```
