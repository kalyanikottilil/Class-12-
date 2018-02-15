Class 12
================

GitHub Documents
----------------

``` r
library(bio3d)
file.name <- get.pdb("1hsg")
```

    ## Warning in get.pdb("1hsg"): ./1hsg.pdb exists. Skipping download

``` r
hiv <- read.pdb(file.name)

prot <- trim.pdb(hiv, "protein")
lig <- trim.pdb(hiv, "ligand")
write.pdb(prot, file="1hsg_protein.pdb")
write.pdb(lig, "1hsg_ligand.pdb")

res <- read.pdb("all.pdbqt", multi=TRUE)
write.pdb(res, "results.pdb")
```
