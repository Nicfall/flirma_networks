# Checking out the data

Read in data & packages

```{r read in data}
library(ggplot2)
library(vegan)
library(phyloseq)

setwd("/Volumes/GoogleDrive/My Drive/Flirma/flirma_networks/fl_16s/01.generate_asv_table/")

ps.temp <- readRDS("fl16s.23.ps.cleaner.rds")
ps.cleaner <- subset_samples(ps.temp,site!="UK3")
taxa <- readRDS("fl16s.23.taxid.newids.rds")
samdf <- read.csv("fl_sample_info - 16s_all_newvars.csv")
row.names(samdf) <- samdf$sample_num

sum(sample_sums(ps.cleaner))
```

## Raw

```{r raw data}
ps.cleaner.ord <- ordinate(ps.cleaner, method="PCoA",distance="bray")
plot_ordination(ps.cleaner,ps.cleaner.ord,color="year")
plot_ordination(ps.cleaner,ps.cleaner.ord,color="lib_size")
```

## Relative abundance

Doesn't change much

```{r rel abun raw}
ps.cleaner.rel = transform_sample_counts(ps.cleaner, function(x) x / sum(x))

ps.cleaner.rel.ord <- ordinate(ps.cleaner.rel, method="PCoA",distance="bray")
plot_ordination(ps.cleaner.rel,ps.cleaner.rel.ord,color="year")
```