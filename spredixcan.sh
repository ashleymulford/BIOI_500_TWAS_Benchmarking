

for db in /home/wheelerlab3/Data/PrediXcan_db/GTEx-V7_HapMap-2017-11-29/*.db
  do
  prefix=${db#/homes/amulford/elastic_net_models/en_}
  prefix=${prefix%.db}
  python3 /homes/amulford/MetaXcan/software/SPrediXcan.py \
  --model_db_path $db \
  --covariance /homes/amulford/elastic_net_models/en_${prefix}.txt.gz \
  --gwas_folder /homes/amulford/sum_stats_b37 \
  --gwas_file_pattern "uc_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv.gz" \
  --snp_column rsid \
  --effect_allele_column effect_allele \
  --non_effect_allele_column other_allele \
  --beta_column beta \
  --pvalue_column p \
  --output_file /homes/amulford/spred_output/uc_${prefix}_twas.txt
done


declare -a tissues=("Whole_Blood" "Vagina")
for tiss in ${tissues[@]}
  do
  python3 /homes/amulford/MetaXcan/software/SPrediXcan.py \
  --model_db_path /homes/amulford/elastic_net_models/en_${tiss}.txt.gz \
  --covariance /homes/amulford/elastic_net_models/en_${tiss}.txt.gz \
  --gwas_folder /homes/amulford/sum_stats_b37 \
  --gwas_file_pattern "uc_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv.gz" \
  --snp_column rsid \
  --effect_allele_column effect_allele \
  --non_effect_allele_column other_allele \
  --beta_column beta \
  --pvalue_column p \
  --output_file /homes/amulford/spred_output/uc_gtex_v8_en_${tiss}_twas.txt
done




python3 /homes/amulford/MetaXcan/software/SPrediXcan.py 
--model_db_path /homes/amulford/elastic_net_models/en_Whole_Blood.db 
--covariance /homes/amulford/elastic_net_models/en_Whole_Blood.txt.gz 
--gwas_folder /homes/amulford/sum_stats_b37 
--gwas_file_pattern "uc_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv.gz" 
--snp_column rsid 
--effect_allele_column effect_allele 
--non_effect_allele_column other_allele 
--beta_column beta 
--pvalue_column p 
--output_file /homes/amulford/spred_output/uc_twas.txt













