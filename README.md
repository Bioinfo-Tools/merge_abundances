# merge_abundances
R script for merging abundances from contingency tables such as blast results




Run this script if you want to combine many contingency tables, like blast results, into one unique table.
All the tables will be merged using the first column as reference.


Input example:

output_sample.txt_summary_GO_Function1.txt

Function	count
antioxidant activity,oxidoreductase activity	2
DNA-directed RNA polymerase activity,DNA binding	2
electron transporter, transferring electrons within the cyclic electron transport pathway of photosy	23
enzyme regulator activity	2
hydrolase activity, hydrolyzing O-glycosyl compounds	2

output_sample.txt_summary_GO_Function2.txt

Function	count
ketol-acid reductoisomerase activity	2
methionine adenosyltransferase activity	2
oxidoreductase activity	2
structural molecule activity	2
transporter activity	2
Unknown	16

output_sample.txt_summary_GO_Function3.txt

Function	count
antioxidant activity,oxidoreductase activity	2
DNA-directed RNA polymerase activity,DNA binding	2
electron transporter, transferring electrons within the cyclic electron transport pathway of photosy	23
enzyme regulator activity	2
hydrolase activity, hydrolyzing O-glycosyl compounds	2
ketol-acid reductoisomerase activity	2
methionine adenosyltransferase activity	2
oxidoreductase activity	2
structural molecule activity	2
transporter activity	2
Unknown	16

All these tables in the example would be merged by the column named "Function". Since Function is the first column, it will be used as reference for merging.



The result will be saved as "merged_results.txt", and should look like this:
Function	output_sample.txt_summary_GO_Function1.txt	output_sample.txt_summary_GO_Function2.txt	output_sample.txt_summary_GO_Function3.txt
antioxidant activity,oxidoreductase activity	2	0	2
DNA-directed RNA polymerase activity,DNA binding	2	0	2
electron transporter, transferring electrons within the cyclic electron transport pathway of photosy	23	0	23
enzyme regulator activity	2	0	2
hydrolase activity, hydrolyzing O-glycosyl compounds	2	0	2
ketol-acid reductoisomerase activity	0	2	2
methionine adenosyltransferase activity	0	2	2
oxidoreductase activity	0	2	2
structural molecule activity	0	2	2
transporter activity	0	2	2
Unknown	0	16	16



How to run:

Rscript merge_abundances.R file1.txt file2.txt file3.txt

where each fileX.txt is one table to be marged.


Another example:

Rscript merge_abundances.R output_sample.txt_summary_GO_Function1.txt output_sample.txt_summary_GO_Function2.txt output_sample.txt_summary_GO_Function3.txt
