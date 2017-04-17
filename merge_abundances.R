args <- commandArgs(trailingOnly = TRUE)

print(args)

merged_table <- read.table(args[1], header=TRUE, sep="\t")
length(args)

for(i in 2:length(args)){

    new_table <- read.table(args[i], header=TRUE, sep="\t")
    label<-as.character(names(merged_table)[1])
    #print(label)
    #print(head(merged_table))
    #print(head(new_table))

    merged_table <- merge(merged_table, new_table, by=label, all=TRUE)
    #head(merged_table)

}
merged_table[is.na(merged_table)] <- 0
names(merged_table)[2:(length(args)+1)] <- args


write.table(file="merged_results.txt",merged_table, quote=FALSE, sep="\t", row.names=FALSE, col.names=TRUE)