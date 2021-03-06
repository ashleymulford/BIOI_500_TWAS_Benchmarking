#uc gwas sum stats to fusion input
awk '{print $1 FS $3 FS $4 FS $5 FS $7/($8+0.001)}' uc_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv > uc_fusion_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv
#split by chr
grep "1 rs" uc_fusion_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv > uc_fusion_anderson_2011_21297633_efo0000729_gwas.sumstats_1_rs.tsv
#add column names: CHR SNP A1 A2 Z

#chol
awk '{print $2 FS $1 FS $5 FS $4 FS $7/($8+0.001)}' Prins_28887542_chol > Prins_28887542_chol_fusion.txt
#split by chr
grep "1 rs" Prins_28887542_chol_fusion.txt > Prins_28887542_chol_fusion_1_rs.txt
#add column names: CHR SNP A1 A2 Z

#asthma
awk '{print $2 FS $1 FS $4 FS $5 FS $8/($9+0.001)}' Shrine_30552067_moderate-severe_asthma.txt > Shrine_30552067_moderate-severe_asthma_fusion.txt
#split by chr
grep "1 rs" Shrine_30552067_moderate-severe_asthma_fusion.txt > Shrine_30552067_moderate-severe_asthma_fusion_1_rs.txt
#add column names: CHR SNP A1 A2 Z

