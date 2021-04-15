#uc gwas sum stats to fusion input
awk '{print $3 FS $4 FS $5 FS $7/($8+0.001)}' uc_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv > uc_fusion_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv
#must have column names: SNP, A1, A2, Z

#chol
awk '{print $1 FS $5 FS $4 FS $7/($8+0.001)}' Prins_28887542_chol > Prins_28887542_chol_fusion.txt

#asthma
awk '{print $1 FS $4 FS $5 FS $8/($9+0.001)}' Shrine_30552067_moderate-severe_asthma.txt > Shrine_30552067_moderate-severe_asthma_fusion.txt

#covid-19
