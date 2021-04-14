#Test - works
Rscript /homes/amulford/fusion_twas-master/FUSION.assoc_test.R \
--sumstats /homes/amulford/PGC2.SCZ.sumstats \
--weights /homes/amulford/fusion_weights/GTEx.Whole_Blood.pos \
--weights_dir /homes/amulford/fusion_weights/ \
--ref_ld_chr /homes/amulford/fusion_twas-master/LDREF/1000G.EUR. \
--chr 1 \
--out /homes/amulford/fusion_output/uc_Whole_Blood_1_assoc.txt


#Ulcerative Colitis Phenotype:

declare -a tissues=("Adipose_Subcutaneous" "Adipose_Visceral_Omentum" "Adrenal_Gland" "Artery_Aorta" "Artery_Coronary" "Artery_Tibial" "Brain_Amygdala" "Brain_Anterior_cingulate_cortex_BA24" "Brain_Caudate_basal_ganglia" "Brain_Cerebellar_Hemisphere" "Brain_Cerebellum" "Brain_Cortex" "Brain_Frontal_Cortex_BA9" "Brain_Hippocampus" "Brain_Hypothalamus" "Brain_Nucleus_accumbens_basal_ganglia" "Brain_Putamen_basal_ganglia" "Brain_Spinal_cord_cervical_c-1" "Brain_Substantia_nigra" "Breast_Mammary_Tissue" "Cells_Cultured_fibroblasts" "Cells_EBV-transformed_lymphocytes" "Colon_Sigmoid" "Colon_Transverse" "Esophagus_Gastroesophageal_Junction" "Esophagus_Mucosa" "Esophagus_Muscularis" "Heart_Atrial_Appendage" "Heart_Left_Ventricle" "Liver" "Lung" "Minor_Salivary_Gland" "Muscle_Skeletal" "Nerve_Tibial" "Ovary" "Pancreas" "Pituitary" "Prostate" "Skin_Not_Sun_Exposed_Suprapubic" "Skin_Sun_Exposed_Lower_leg" "Small_Intestine_Terminal_Ileum" "Spleen" "Stomach" "Testis" "Thyroid" "Uterus" "Vagina" "Whole_Blood")

for chr in {1..22}
  for tiss in ${tissues[@]}
    do
    Rscript /homes/amulford/fusion_twas-master/FUSION.assoc_test.R \
    --sumstats /homes/amulford/sum_stats_b37/uc_anderson_2011_21297633_uc_efo0000729_1_gwas.sumstats.tsv.gz \
    --weights /homes/amulford/fusion_weights/GTEx.Whole_Blood.pos \
    --weights_dir /homes/amulford/fusion_weights/ \
    --ref_ld_chr /homes/amulford/fusion_twas-master/LDREF/1000G.EUR. \
    --chr ${chr} \
    --out /homes/amulford/fusion_output/uc_${tiss}_${chr}_assoc.txt
  done
done


#Cholesterol Phenotype:

#Asthma Phenotype:

#COVID-19 Phenotype:



