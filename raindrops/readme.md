# [raindrops](https://stigc.dk/c64/basic/?s=2fZAxbsMgGEZ3TuEiBmidCoOJEiwPGDtN1cpElEi5UPdGGZIO7UHMnThDQaSqs1T6hg94PzxR0WJnXoZlvSypTE1wtqpmncauUAvDdPwnUOrE-HPwlzB9p_jPv0zvwX9AubPPo4vUCQJGC9XGFbZjjym5ZzWR3XyDr4nUNwRfKJK1araOuoBH93zjdILN67BxCCtURmpjbN9SZ3R-0qkOd-RKaFT2pAFcFE_mbd8JetW6C_4LNqCmRZw-pOl4NA4HJ284vbUIi9WjeEheFSG_jDOMApG_MxtWYq4r7eD2dvwB)
```basic
   10 poke646,0:poke53281,0:poke53280,0:a$="{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}":c$="{gry1}{gry2}{grn}{grn}{lgrn}{lgrn}{lgrn}{lgrn}{wht}{blk}":print"{clr}"
   20 a=int(rnd(0)*24):b=int(rnd(0)*39):c=int(rnd(0)*23-a):poke54296,0
   30 print"{home}";left$(a$,a):ford=0toc:printtab(b);left$(c$,d);
   40 gosub50:print"!{left}";:forx=0to50:next:gosub50:printchr$(58.5+rnd(1)):next:goto20
   50 poke54296,15:poke54296,0:return
```
