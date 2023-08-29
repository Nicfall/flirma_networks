### Shannon sids stats - zone

```{r shannon sids rz}
#LOWER KEYS 1
#are they sig different across reef zones?
wilcox.test(Shannon~zone,data=df.div.sid.15.lk1)#p < 0.001***
#still same sig level when rarefied
wilcox.test(Shannon~zone,data=df.div.sid.17.lk1)#p < 0.1 .
#not rare:
# W = 102, p-value = 0.08873
#trend lost with rarefaction
# W = 63, p-value = 0.1564
wilcox.test(Shannon~zone,data=df.div.sid.18.lk1)#ns, rare or not

#UPPER KEYS 1
wilcox.test(Shannon~zone,data=df.div.sid.15.uk1)#ns, rare or not
wilcox.test(Shannon~zone,data=df.div.sid.17.uk1)#trend when rare
#W = 102, p-value = 0.08873
wilcox.test(Shannon~zone,data=df.div.sid.18.uk1)#ns, rare or not

#UPPER KEYS 2
wilcox.test(Shannon~zone,data=df.div.sid.15.uk2)#ns, rare or not
wilcox.test(Shannon~zone,data=df.div.sid.17.uk2)#ns, rare or not
wilcox.test(Shannon~zone,data=df.div.sid.18.uk2)#ns, rare or not
```

### Shannon sids stats - time 

```{r stats sids by year}
pairwise.wilcox.test(df.div.sid.lk1.in$Shannon, df.div.sid.lk1.in$time, p.adjust.method = "BH")
#      Pre   Irma 
# Irma 0.278 -    
# Post 0.041 0.047
#RAREFIED STATS:
#      Pre   Irma 
# Irma 0.278 -    
# Post 0.047 0.047
pairwise.wilcox.test(df.div.sid.lk1.off$Shannon, df.div.sid.lk1.off$time, p.adjust.method = "BH")
#REGULAR STATS:
#      Pre    Irma  
# Irma 0.0029 -     
# Post 0.0823 0.6009
#RAREFIED STATS:
#      Pre    Irma  
# Irma 0.0029 -     
# Post 0.0823 0.5362

pairwise.wilcox.test(df.div.sid.uk1.in$Shannon, df.div.sid.uk1.in$time, p.adjust.method = "BH")
#      Pre   Irma 
# Irma 0.512 -    
# Post 0.038 0.479
#RAREFIED STATS
#      Pre   Irma 
# Irma 0.605 -    
# Post 0.038 0.479
pairwise.wilcox.test(df.div.sid.uk1.off$Shannon, df.div.sid.uk1.off$time, p.adjust.method = "BH")
#ns, rare or not

pairwise.wilcox.test(df.div.sid.uk2.in$Shannon, df.div.sid.uk2.in$time, p.adjust.method = "BH")
#ns, rare or not
pairwise.wilcox.test(df.div.sid.uk2.off$Shannon, df.div.sid.uk2.off$time, p.adjust.method = "BH")
#ns, rare or not
```

### Shannon rads stats - zone

```{r shannon rads rz}
#LK1
wilcox.test(Shannon~zone,data=df.div.rad.15.lk1)#p < 0.05*
# data:  Shannon by zone
# W = 20, p-value = 0.04347
wilcox.test(Shannon~zone,data=df.div.rad.17.lk1)#ns
wilcox.test(Shannon~zone,data=df.div.rad.18.lk1)#ns

#UK1
wilcox.test(Shannon~zone,data=df.div.rad.15.uk1)#p = 0.089 .
# data:  Shannon by zone
# W = 27, p-value = 0.08921
#same trend with rare
#wilcox.test(Shannon~zone,data=df.div.rad.17.uk1)#can't do, missing data
#wilcox.test(Shannon~zone,data=df.div.rad.18.uk1)#can't do, missing data

#UK2
wilcox.test(Shannon~zone,data=df.div.rad.15.uk2)#ns
wilcox.test(Shannon~zone,data=df.div.rad.17.uk2)#p < 0.05 *
# data:  Shannon by zone
# W = 11, p-value = 0.01522
#same with rare
wilcox.test(Shannon~zone,data=df.div.rad.18.uk2)#ns
```

### Shannon rads stats - time 

```{r stats rads by year}
pairwise.wilcox.test(df.div.rad.lk1.in$Shannon, df.div.rad.lk1.in$time, p.adjust.method = "BH")
#      Pre    Irma  
# Irma 0.8421 -     
# Post 0.0028 0.0019
#same with rare
pairwise.wilcox.test(df.div.rad.lk1.off$Shannon, df.div.rad.lk1.off$time, p.adjust.method = "BH")
#      Pre     Irma   
# Irma 0.01340 -      
# Post 0.00031 0.03301
#same with rare
pairwise.wilcox.test(df.div.rad.uk1.in$Shannon, df.div.rad.uk1.in$time, p.adjust.method = "BH") #ns
#pairwise.wilcox.test(df.div.rad.uk1.off$Shannon, df.div.rad.uk1.off$time, p.adjust.method = "BH") #not available

pairwise.wilcox.test(df.div.rad.uk2.in$Shannon, df.div.rad.uk2.in$time, p.adjust.method = "BH")
#      Pre    Irma  
# Irma 0.0030 -     
# Post 0.0046 0.9682
#same with rare
pairwise.wilcox.test(df.div.rad.uk2.off$Shannon, df.div.rad.uk2.off$time, p.adjust.method = "BH")
#     Pre    Irma  
# Irma 0.2110 -     
# Post 0.0037 0.0079
#same with rare
```
More subsetting for stuff below

```{r more & more subsetting sids}
# within site & year
# df.div.sid.15 <- subset(df.div.sid,time=="Pre")
# df.div.sid.17 <- subset(df.div.sid,time=="Irma")
# df.div.sid.18 <- subset(df.div.sid,time=="Post")
# 
# df.div.sid.15.lk1 <- subset(df.div.sid.15,site=="LK1")
# df.div.sid.17.lk1 <- subset(df.div.sid.17,site=="LK1")
# df.div.sid.18.lk1 <- subset(df.div.sid.18,site=="LK1")
# 
# df.div.sid.15.uk1 <- subset(df.div.sid.15,site=="UK1")
# df.div.sid.17.uk1 <- subset(df.div.sid.17,site=="UK1")
# df.div.sid.18.uk1 <- subset(df.div.sid.18,site=="UK1")
# 
# df.div.sid.15.uk2 <- subset(df.div.sid.15,site=="UK2")
# df.div.sid.17.uk2 <- subset(df.div.sid.17,site=="UK2")
# df.div.sid.18.uk2 <- subset(df.div.sid.18,site=="UK2")
# 
# #by time
# df.div.sid.lk1 <- subset(df.div.sid,site=="LK1")
# df.div.sid.uk1 <- subset(df.div.sid,site=="UK1")
# df.div.sid.uk2 <- subset(df.div.sid,site=="UK2")
# 
# df.div.sid.lk1.in <- subset(df.div.sid.lk1,zone=="Inshore")
# df.div.sid.lk1.off <- subset(df.div.sid.lk1,zone=="Offshore")
# 
# df.div.sid.uk1.in <- subset(df.div.sid.uk1,zone=="Inshore")
# df.div.sid.uk1.off <- subset(df.div.sid.uk1,zone=="Offshore")
# 
# df.div.sid.uk2.in <- subset(df.div.sid.uk2,zone=="Inshore")
# df.div.sid.uk2.off <- subset(df.div.sid.uk2,zone=="Offshore")
```

Subsetting rads

```{r more & more subsetting rads}
# # within site & year
# df.div.rad.15 <- subset(df.div.rad,time=="Pre")
# df.div.rad.17 <- subset(df.div.rad,time=="Irma")
# df.div.rad.18 <- subset(df.div.rad,time=="Post")
# 
# #LK1
# df.div.rad.15.lk1 <- subset(df.div.rad.15,site=="LK1")
# df.div.rad.17.lk1 <- subset(df.div.rad.17,site=="LK1")
# df.div.rad.18.lk1 <- subset(df.div.rad.18,site=="LK1")
# 
# df.div.rad.15.uk1 <- subset(df.div.rad.15,site=="UK1")
# df.div.rad.17.uk1 <- subset(df.div.rad.17,site=="UK1")
# df.div.rad.18.uk1 <- subset(df.div.rad.18,site=="UK1")
# 
# df.div.rad.15.uk2 <- subset(df.div.rad.15,site=="UK2")
# df.div.rad.17.uk2 <- subset(df.div.rad.17,site=="UK2")
# df.div.rad.18.uk2 <- subset(df.div.rad.18,site=="UK2")
# 
# #now by time
# df.div.rad.lk1 <- subset(df.div.rad,site=="LK1")
# df.div.rad.uk1 <- subset(df.div.rad,site=="UK1")
# df.div.rad.uk2 <- subset(df.div.rad,site=="UK2")
# 
# df.div.rad.lk1.in <- subset(df.div.rad.lk1,zone=="Inshore")
# df.div.rad.lk1.off <- subset(df.div.rad.lk1,zone=="Offshore")
# 
# df.div.rad.uk1.in <- subset(df.div.rad.uk1,zone=="Inshore")
# df.div.rad.uk1.off <- subset(df.div.rad.uk1,zone=="Offshore")
# 
# df.div.rad.uk2.in <- subset(df.div.rad.uk2,zone=="Inshore")
# df.div.rad.uk2.off <- subset(df.div.rad.uk2,zone=="Offshore")
```