library(maftools)

# view available TCGA cohorts, check that LGG is there
tcgaAvailable()

# load the available LGG cohort
lgg <- tcgaLoad(study = "LGG")

# view a summary of this file
lgg

#1. An oncoplot of the top five mutated genes
oncoplot(lgg, top=5)

#2. A boxplot of the transistion-to-transversion ratio
lgg_titv <- titv(lgg)
boxplot(lgg_titv$TiTv.fractions$Ti/lgg_titv$TiTv.fractions$Tv, 
        main = "Transition-to-Transversion Ratio",
        ylab = "Ti/Tv")

#3. A plot comparing the mutation load in this LGG cohort to other TCGA cohorts. Use log scale
tcgaCompare(lgg, logscale = TRUE)
