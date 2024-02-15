### Extracting B type profile info for collapsing

```{r}
tax.sid <- data.frame(ps.sid.no0@tax_table)
tax.sid.b <- subset(tax.sid,Clade=="B")
tax.sid.uniq <- unique(tax.sid.b$Majority_ITS2_sequence)
head(tax.sid.uniq)
##separating the types between the slashes
tax.sid.uniq.split <- unlist(strsplit(tax.sid.uniq,split="/"))
##unique again? I'm sure there's a better way to do all this
tax.sid.b.uniq <- unique(tax.sid.uniq.split)
##only 11 left

##saving the types I want as a .txt file to extract from the fasta file
#write.table(tax.sid.b.uniq, file="types.sids.b.txt", append = FALSE, sep = "/n", row.names = FALSE, col.names = FALSE,quote=FALSE)
```

In terminal, extracting the 11 types I want from the main symportal fasta file

```
awk -F'>' 'NR==FNR{ids[$0]; next} NF>1{f=($2 in ids)} f' types.sids.b.txt 188_20211214_03_DBV_20211215T030311.seqs_copy.fasta >> types.sids.fasta
```

Submitted fasta file to phylogeny.fr. Also added type A3 sequence as an outgroup to root the tree