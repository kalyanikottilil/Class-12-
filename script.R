library(bio3d)
file.name <- get.pdb("1hsg")
hiv <- read.pdb(file.name)

prot <- trim.pdb(hiv, "protein")
lig <- trim.pdb(hiv, "ligand")
write.pdb(prot, file="1hsg_protein.pdb")
write.pdb(lig, "1hsg_ligand.pdb")

res <- read.pdb("all.pdbqt", multi=TRUE)
write.pdb(res, "results.pdb")