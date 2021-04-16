#Ulcerative Colitis Phenotype:

declare -a tissues=("Adipose_Subcutaneous" "Adipose_Visceral_Omentum" "Adrenal_Gland" "Artery_Aorta" "Artery_Coronary" "Artery_Tibial" "Brain_Caudate_basal_ganglia" "Brain_Cerebellar_Hemisphere" "Brain_Cerebellum" "Brain_Cortex" "Brain_Frontal_Cortex_BA9" "Brain_Hippocampus" "Brain_Hypothalamus" "Brain_Nucleus_accumbens_basal_ganglia" "Brain_Putamen_basal_ganglia" "Breast_Mammary_Tissue" "Cells_Transformed_fibroblasts" "Cells_EBV-transformed_lymphocytes" "Colon_Sigmoid" "Colon_Transverse" "Esophagus_Gastroesophageal_Junction" "Esophagus_Mucosa" "Esophagus_Muscularis" "Heart_Atrial_Appendage" "Heart_Left_Ventricle" "Liver" "Lung" "Muscle_Skeletal" "Nerve_Tibial" "Ovary" "Pancreas" "Pituitary" "Prostate" "Skin_Not_Sun_Exposed_Suprapubic" "Skin_Sun_Exposed_Lower_leg" "Small_Intestine_Terminal_Ileum" "Spleen" "Stomach" "Testis" "Thyroid" "Uterus" "Vagina" "Whole_Blood")
for tiss in ${tissues[@]}
  do
  date
  for chr in {1..22}
    do
    Rscript /homes/amulford/fusion_twas-master/FUSION.assoc_test.R \
    --sumstats /homes/amulford/sum_stats_b37/uc_fusion_anderson_2011_21297633_efo0000729_gwas.sumstats_${chr}_rs.tsv \
    --weights /homes/amulford/fusion_weights/GTEx.${tiss}.pos \
    --weights_dir /homes/amulford/fusion_weights/ \
    --ref_ld_chr /homes/amulford/fusion_twas-master/LDREF/1000G.EUR. \
    --chr ${chr} \
    --out /homes/amulford/fusion_output/uc_${tiss}_${chr}_assoc.txt
  done
  date
done

#Cholesterol Phenotype:

declare -a tissues=("Adipose_Subcutaneous" "Adipose_Visceral_Omentum" "Adrenal_Gland" "Artery_Aorta" "Artery_Coronary" "Artery_Tibial" "Brain_Caudate_basal_ganglia" "Brain_Cerebellar_Hemisphere" "Brain_Cerebellum" "Brain_Cortex" "Brain_Frontal_Cortex_BA9" "Brain_Hippocampus" "Brain_Hypothalamus" "Brain_Nucleus_accumbens_basal_ganglia" "Brain_Putamen_basal_ganglia" "Breast_Mammary_Tissue" "Cells_Transformed_fibroblasts" "Cells_EBV-transformed_lymphocytes" "Colon_Sigmoid" "Colon_Transverse" "Esophagus_Gastroesophageal_Junction" "Esophagus_Mucosa" "Esophagus_Muscularis" "Heart_Atrial_Appendage" "Heart_Left_Ventricle" "Liver" "Lung" "Muscle_Skeletal" "Nerve_Tibial" "Ovary" "Pancreas" "Pituitary" "Prostate" "Skin_Not_Sun_Exposed_Suprapubic" "Skin_Sun_Exposed_Lower_leg" "Small_Intestine_Terminal_Ileum" "Spleen" "Stomach" "Testis" "Thyroid" "Uterus" "Vagina" "Whole_Blood")
for tiss in ${tissues[@]}
  do
  date
  for chr in {1..22}
    do
    Rscript /homes/amulford/fusion_twas-master/FUSION.assoc_test.R \
    --sumstats /homes/amulford/sum_stats_b37/Prins_28887542_chol_fusion_${chr}_rs.txt \
    --weights /homes/amulford/fusion_weights/GTEx.${tiss}.pos \
    --weights_dir /homes/amulford/fusion_weights/ \
    --ref_ld_chr /homes/amulford/fusion_twas-master/LDREF/1000G.EUR. \
    --chr ${chr} \
    --out /homes/amulford/fusion_output/chol_${tiss}_${chr}_assoc.txt
  done
  date
done

#Asthma Phenotype:

declare -a tissues=("Adipose_Subcutaneous" "Adipose_Visceral_Omentum" "Adrenal_Gland" "Artery_Aorta" "Artery_Coronary" "Artery_Tibial" "Brain_Caudate_basal_ganglia" "Brain_Cerebellar_Hemisphere" "Brain_Cerebellum" "Brain_Cortex" "Brain_Frontal_Cortex_BA9" "Brain_Hippocampus" "Brain_Hypothalamus" "Brain_Nucleus_accumbens_basal_ganglia" "Brain_Putamen_basal_ganglia" "Breast_Mammary_Tissue" "Cells_Transformed_fibroblasts" "Cells_EBV-transformed_lymphocytes" "Colon_Sigmoid" "Colon_Transverse" "Esophagus_Gastroesophageal_Junction" "Esophagus_Mucosa" "Esophagus_Muscularis" "Heart_Atrial_Appendage" "Heart_Left_Ventricle" "Liver" "Lung" "Muscle_Skeletal" "Nerve_Tibial" "Ovary" "Pancreas" "Pituitary" "Prostate" "Skin_Not_Sun_Exposed_Suprapubic" "Skin_Sun_Exposed_Lower_leg" "Small_Intestine_Terminal_Ileum" "Spleen" "Stomach" "Testis" "Thyroid" "Uterus" "Vagina" "Whole_Blood")
for tiss in ${tissues[@]}
  do
  date
  for chr in {1..22}
    do
    Rscript /homes/amulford/fusion_twas-master/FUSION.assoc_test.R \
    --sumstats /homes/amulford/sum_stats_b37/Shrine_30552067_moderate-severe_asthma_fusion_${chr}_rs.txt \
    --weights /homes/amulford/fusion_weights/GTEx.${tiss}.pos \
    --weights_dir /homes/amulford/fusion_weights/ \
    --ref_ld_chr /homes/amulford/fusion_twas-master/LDREF/1000G.EUR. \
    --chr ${chr} \
    --out /homes/amulford/fusion_output/asthma_${tiss}_${chr}_assoc.txt
  done
  date
done

#COVID-19 Phenotype:



