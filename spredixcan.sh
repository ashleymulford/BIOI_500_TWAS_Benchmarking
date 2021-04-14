#Ulcerative Colitis Phenotpye:

declare -a tissues=("Adipose_Subcutaneous" "Adipose_Visceral_Omentum" "Adrenal_Gland" "Artery_Aorta" "Artery_Coronary" "Artery_Tibial" "Brain_Amygdala" "Brain_Anterior_cingulate_cortex_BA24" "Brain_Caudate_basal_ganglia" "Brain_Cerebellar_Hemisphere" "Brain_Cerebellum" "Brain_Cortex" "Brain_Frontal_Cortex_BA9" "Brain_Hippocampus" "Brain_Hypothalamus" "Brain_Nucleus_accumbens_basal_ganglia" "Brain_Putamen_basal_ganglia" "Brain_Spinal_cord_cervical_c-1" "Brain_Substantia_nigra" "Breast_Mammary_Tissue" "Cells_Cultured_fibroblasts" "Cells_EBV-transformed_lymphocytes" "Colon_Sigmoid" "Colon_Transverse" "Esophagus_Gastroesophageal_Junction" "Esophagus_Mucosa" "Esophagus_Muscularis" "Heart_Atrial_Appendage" "Heart_Left_Ventricle" "Liver" "Lung" "Minor_Salivary_Gland" "Muscle_Skeletal" "Nerve_Tibial" "Ovary" "Pancreas" "Pituitary" "Prostate" "Skin_Not_Sun_Exposed_Suprapubic" "Skin_Sun_Exposed_Lower_leg" "Small_Intestine_Terminal_Ileum" "Spleen" "Stomach" "Testis" "Thyroid" "Uterus" "Vagina" "Whole_Blood")
for tiss in ${tissues[@]}
  do
python3 /homes/amulford/MetaXcan/software/SPrediXcan.py \
--model_db_path /homes/amulford/elastic_net_models/en_${tiss}.db \
--covariance /homes/amulford/elastic_net_models/en_${tiss}.txt.gz \
--gwas_folder /homes/amulford/sum_stats_b37 \
--gwas_file_pattern "uc_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv.gz" \
--snp_column rsid \
--effect_allele_column effect_allele \
--non_effect_allele_column other_allele \
--beta_column beta \
--pvalue_column p \
--output_file /homes/amulford/spred_output/uc_en_${tiss}_twas.txt
done


#Cholesterol Phenotpye:

declare -a tissues=("Adipose_Subcutaneous" "Adipose_Visceral_Omentum" "Adrenal_Gland" "Artery_Aorta" "Artery_Coronary" "Artery_Tibial" "Brain_Amygdala" "Brain_Anterior_cingulate_cortex_BA24" "Brain_Caudate_basal_ganglia" "Brain_Cerebellar_Hemisphere" "Brain_Cerebellum" "Brain_Cortex" "Brain_Frontal_Cortex_BA9" "Brain_Hippocampus" "Brain_Hypothalamus" "Brain_Nucleus_accumbens_basal_ganglia" "Brain_Putamen_basal_ganglia" "Brain_Spinal_cord_cervical_c-1" "Brain_Substantia_nigra" "Breast_Mammary_Tissue" "Cells_Cultured_fibroblasts" "Cells_EBV-transformed_lymphocytes" "Colon_Sigmoid" "Colon_Transverse" "Esophagus_Gastroesophageal_Junction" "Esophagus_Mucosa" "Esophagus_Muscularis" "Heart_Atrial_Appendage" "Heart_Left_Ventricle" "Liver" "Lung" "Minor_Salivary_Gland" "Muscle_Skeletal" "Nerve_Tibial" "Ovary" "Pancreas" "Pituitary" "Prostate" "Skin_Not_Sun_Exposed_Suprapubic" "Skin_Sun_Exposed_Lower_leg" "Small_Intestine_Terminal_Ileum" "Spleen" "Stomach" "Testis" "Thyroid" "Uterus" "Vagina" "Whole_Blood")
for tiss in ${tissues[@]}
  do
python3 /homes/amulford/MetaXcan/software/SPrediXcan.py \
--model_db_path /homes/amulford/elastic_net_models/en_${tiss}.db \
--covariance /homes/amulford/elastic_net_models/en_${tiss}.txt.gz \
--gwas_folder /homes/amulford/sum_stats_b37 \
--gwas_file_pattern "Prins_28887542_chol.gz" \
--snp_column rsid \
--effect_allele_column effect_allele \
--non_effect_allele_column other_allele \
--beta_column beta \
--pvalue_column p \
--output_file /homes/amulford/spred_output/chol_en_${tiss}_twas.txt
done


#Asthma Phenotype:

declare -a tissues=("Adipose_Subcutaneous" "Adipose_Visceral_Omentum" "Adrenal_Gland" "Artery_Aorta" "Artery_Coronary" "Artery_Tibial" "Brain_Amygdala" "Brain_Anterior_cingulate_cortex_BA24" "Brain_Caudate_basal_ganglia" "Brain_Cerebellar_Hemisphere" "Brain_Cerebellum" "Brain_Cortex" "Brain_Frontal_Cortex_BA9" "Brain_Hippocampus" "Brain_Hypothalamus" "Brain_Nucleus_accumbens_basal_ganglia" "Brain_Putamen_basal_ganglia" "Brain_Spinal_cord_cervical_c-1" "Brain_Substantia_nigra" "Breast_Mammary_Tissue" "Cells_Cultured_fibroblasts" "Cells_EBV-transformed_lymphocytes" "Colon_Sigmoid" "Colon_Transverse" "Esophagus_Gastroesophageal_Junction" "Esophagus_Mucosa" "Esophagus_Muscularis" "Heart_Atrial_Appendage" "Heart_Left_Ventricle" "Liver" "Lung" "Minor_Salivary_Gland" "Muscle_Skeletal" "Nerve_Tibial" "Ovary" "Pancreas" "Pituitary" "Prostate" "Skin_Not_Sun_Exposed_Suprapubic" "Skin_Sun_Exposed_Lower_leg" "Small_Intestine_Terminal_Ileum" "Spleen" "Stomach" "Testis" "Thyroid" "Uterus" "Vagina" "Whole_Blood")
for tiss in ${tissues[@]}
  do
python3 /homes/amulford/MetaXcan/software/SPrediXcan.py \
--model_db_path /homes/amulford/elastic_net_models/en_${tiss}.db \
--covariance /homes/amulford/elastic_net_models/en_${tiss}.txt.gz \
--gwas_folder /homes/amulford/sum_stats_b37 \
--gwas_file_pattern "Shrine_30552067_moderate-severe_asthma.txt.gz" \
--snp_column SNP \
--effect_allele_column Coded \
--non_effect_allele_column Non_coded \
--beta_column beta \
--pvalue_column P_GC \
--output_file /homes/amulford/spred_output/asthma_en_${tiss}_twas.txt
done


#COVID-19 Phenotype:

declare -a tissues=("Adipose_Subcutaneous" "Adipose_Visceral_Omentum" "Adrenal_Gland" "Artery_Aorta" "Artery_Coronary" "Artery_Tibial" "Brain_Amygdala" "Brain_Anterior_cingulate_cortex_BA24" "Brain_Caudate_basal_ganglia" "Brain_Cerebellar_Hemisphere" "Brain_Cerebellum" "Brain_Cortex" "Brain_Frontal_Cortex_BA9" "Brain_Hippocampus" "Brain_Hypothalamus" "Brain_Nucleus_accumbens_basal_ganglia" "Brain_Putamen_basal_ganglia" "Brain_Spinal_cord_cervical_c-1" "Brain_Substantia_nigra" "Breast_Mammary_Tissue" "Cells_Cultured_fibroblasts" "Cells_EBV-transformed_lymphocytes" "Colon_Sigmoid" "Colon_Transverse" "Esophagus_Gastroesophageal_Junction" "Esophagus_Mucosa" "Esophagus_Muscularis" "Heart_Atrial_Appendage" "Heart_Left_Ventricle" "Liver" "Lung" "Minor_Salivary_Gland" "Muscle_Skeletal" "Nerve_Tibial" "Ovary" "Pancreas" "Pituitary" "Prostate" "Skin_Not_Sun_Exposed_Suprapubic" "Skin_Sun_Exposed_Lower_leg" "Small_Intestine_Terminal_Ileum" "Spleen" "Stomach" "Testis" "Thyroid" "Uterus" "Vagina" "Whole_Blood")
for tiss in ${tissues[@]}
  do
python3 /homes/amulford/MetaXcan/software/SPrediXcan.py \
--model_db_path /homes/amulford/elastic_net_models/en_${tiss}.db \
--covariance /homes/amulford/elastic_net_models/en_${tiss}.txt.gz \
--gwas_folder /homes/amulford/sum_stats_b37 \
--gwas_file_pattern "COVID19_HGI_ANA_C1_V2_20200701.txt.gz" \
--snp_column rsid \
--effect_allele_column REF \
--non_effect_allele_column ALT \
--beta_column all_inv_var_meta_beta \
--pvalue_column all_inv_var_meta_p \
--output_file /homes/amulford/spred_output/covid19_en_${tiss}_twas.txt
done





