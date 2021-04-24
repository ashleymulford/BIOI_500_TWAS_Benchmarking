#run in /homes/amulford/TIGAR

#Ulcerative Colitis Phenotype:

#Train DPR Model
/usr/bin/time -v /homes/amulford/TIGAR/TIGAR_Model_Train.sh \
--model DPR \
--Gene_Exp /homes/amulford/GTEx_Analysis_v8_eQTL_expression_matrices/Whole_Blood.v8.normalized_expression.bed \
--sampleID /homes/amulford/TIGAR/GTEx_Analysis_v8_eQTL_expression_matrices/samples_wb_onecol.txt \
--chr 1 \
--genofile_type vcf --genofile /homes/amulford/TIGAR/example_data/Genotype/example.vcf.gz --Format GT \
--out /homes/amulford/TIGAR/Result/uc_test

#Generate Covariance file
/usr/bin/time -v /homes/amulford/TIGAR/TWAS/Covar/TIGAR_Covar.sh \
--block /homes/amulford/TIGAR/example_data/block_annotation_EUR.txt \
--genofile_type vcf --genofile /homes/amulford/TIGAR/example_data/Genotype/example.vcf.gz \
--chr 1 \
--Format GT \
--out /homes/amulford/TIGAR/Result

#Run Association Test
/usr/bin/time -v /homes/amulford/TIGAR/TIGAR_TWAS.sh --asso 2 \
--Gene_Exp /homes/amulford/GTEx_Analysis_v8_eQTL_expression_matrices/Whole_Blood.v8.normalized_expression.bed \
--Zscore /homes/amulford/sum_stats_b37/uc_tigar_anderson_2011_21297633_efo0000729_gwas.sumstats_1_pos.tsv.gz \
--Weight /homes/amulford/TIGAR/Result/DPR_CHR1/CHR1_DPR_training_weight.txt \
--Covar /homes/amulford/TIGAR/Result/reference_cov/CHR1_reference_cov.txt.gz \
--chr 1 \
--out /homes/amulford/TIGAR/Result/uc_test


#Cholesterol Phenotype:

#Asthma Phenotype:

#COVID-19 Phenotype:
