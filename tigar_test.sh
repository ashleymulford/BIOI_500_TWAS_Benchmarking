#Test Data
#must all run in dir: /homes/amulford/TIGAR/
#needed to edited .sh file so it calls python3 - done

#Train DPR Model
/usr/bin/time -v /homes/amulford/TIGAR/TIGAR_Model_Train.sh \
--model DPR \
--Gene_Exp /homes/amulford/TIGAR/example_data/Gene_Exp.txt \
--sampleID /homes/amulford/TIGAR/example_data/sampleID.txt \
--chr 1 \
--genofile_type vcf --genofile /homes/amulford/TIGAR/example_data/Genotype/example.vcf.gz --Format GT \
--out /homes/amulford/TIGAR/Result

#Generate Covariance file
/usr/bin/time -v /homes/amulford/TIGAR/TWAS/Covar/TIGAR_Covar.sh \
--block /homes/amulford/TIGAR/example_data/block_annotation_EUR.txt \
--genofile_type vcf --genofile /homes/amulford/TIGAR/example_data/Genotype/example.vcf.gz \
--chr 1 \
--Format GT \
--out /homes/amulford/TIGAR/Result

#Run Association Test
/usr/bin/time -v /homes/amulford/TIGAR/TIGAR_TWAS.sh --asso 2 \
--Gene_Exp /homes/amulford/TIGAR/example_data/Gene_Exp.txt \
--Zscore /homes/amulford/TIGAR/example_data/example_Zscore/CHR1_GWAS_Zscore.txt.gz \
--Weight /homes/amulford/TIGAR/Result/DPR_CHR1/CHR1_DPR_training_weight.txt \
--Covar /homes/amulford/TIGAR/Result/reference_cov/CHR1_reference_cov.txt.gz \
--chr 1 \
--out /homes/amulford/TIGAR/Result



