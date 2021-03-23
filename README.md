# BIOI_500_TWAS_Benchmarking

## Install MetaXcan

    git clone https://github.com/hakyimlab/MetaXcan
    
### Weights for MetaXcan:

    wget https://zenodo.org/record/3519321/files/elastic_net_eqtl.tar
    tar xjvf elastic_net_eqtl.tar
    
    
## Install FUSION

    wget https://github.com/gusevlab/fusion_twas/archive/master.zip
    unzip master.zip
    cd fusion_twas-master
    wget https://data.broadinstitute.org/alkesgroup/FUSION/LDREF.tar.bz2
    tar xjvf LDREF.tar.bz2
    wget https://github.com/gabraham/plink2R/archive/master.zip
    unzip master.zip
    
### Weights for FUSION:
    
    wget https://storage.googleapis.com/broad-alkesgroup-public/FUSION/WGT/GTEx.ALL.tar
    tar xf GTEx.ALL.tar
    #unzip subsequent files using tar xjf

## Install TIGAR

    git clone https://github.com/xmeng34/TIGAR
    
    
## Other Requirements

 - HTSlib http://www.htslib.org/download/

### Python packages:

 - numpy (>=1.11.1)
 - scipy (>=0.18.1)
 - pandas (>=0.18.1)
 - sqlalchemy
 - patsy (>=0.5.0)
 - statsmodels (>=0.8.0)
 - h5py (>=2.7.1)
 - h5py-cache (>=1.0.0) 
 - bgen_reader (>=3.0.3)
 - cyvcf2 (>=0.8.0)
 - dfply
 - io
 - subprocess
 - multiprocess

### R packages:

 - optparse
 - RColorBrewer
 - plink2R-master/plink2R/


    


