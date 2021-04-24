#uc gwas sum stats to tigar input
awk '{print $1 FS $3 FS $2 FS $4 FS $5 FS $7/($8+0.001)}' uc_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv > uc_tigar_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv

#split by chr
grep "1 rs" uc_tigar_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv > uc_tigar_anderson_2011_21297633_efo0000729_gwas.sumstats_1_rs.tsv
awk '{print $1 FS $3 FS $4 FS $5 FS $6}' uc_tigar_anderson_2011_21297633_efo0000729_gwas.sumstats_1_rs.tsv > uc_tigar_anderson_2011_21297633_efo0000729_gwas.sumstats_1_pos.tsv
#add column names: CHROM POS REF ALT Zscore
#gzip when done

#chol
awk '{print $2 FS $1 FS $3 FS $5 FS $4 FS $7/($8+0.001)}' Prins_28887542_chol > Prins_28887542_chol_tigar.txt
#split by chr
grep "1 rs" Prins_28887542_chol_tigar.txt > Prins_28887542_chol_tigar_1_rs.txt
awk '{print $1 FS $3 FS $4 FS $5 FS $6}' Prins_28887542_chol_tigar_1_rs.txt > Prins_28887542_chol_tigar_1_pos.txt
#add column names: CHROM POS REF ALT Zscore
#gzip when done

#asthma
awk '{print $2 FS $1 FS $3 FS $4 FS $5 FS $8/($9+0.001)}' Shrine_30552067_moderate-severe_asthma.txt > Shrine_30552067_moderate-severe_asthma_tigar.txt
#split by chr
grep "1 rs" Shrine_30552067_moderate-severe_asthma_tigar.txt > Shrine_30552067_moderate-severe_asthma_tigar_1_rs.txt
awk '{print $1 FS $3 FS $4 FS $5 FS $6}' Shrine_30552067_moderate-severe_asthma_tigar_1_rs.txt > Shrine_30552067_moderate-severe_asthma_tigar_1_pos.txt
#add column names: CHROM POS REF ALT Zscore
#gzip when done




#other files:
#downloaded data:
wget https://storage.googleapis.com/gtex_analysis_v8/single_tissue_qtl_data/GTEx_Analysis_v8_eQTL_expression_matrices.tar
#unzip:
tar -xf GTEx_Analysis_v8_eQTL_expression_matrices.tar
#unzip files within this dir - need expression data for models
#rename first four columns: CHROM GeneStart GeneEnd TargetID
#make samples: grep then run samples.py
grep "GTEX-" Whole_Blood.v8.normalized_expression.bed > samples_wb.txt
python samples.py 
#outputs samples_wb_onecol.txt








