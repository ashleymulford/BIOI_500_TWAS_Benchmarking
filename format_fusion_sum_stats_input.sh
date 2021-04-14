#uc gwas sum stats to fusion input

awk '{print $3 FS $4 FS $5 FS $7/($8+0.001)}' uc_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv > uc_fusion_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv
