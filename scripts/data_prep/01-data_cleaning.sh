#!/bin/bash

# Author: Zhongyi (James) Guo
# Date: 02/04/2025

# This script renders all RMD files for data preparation and generates their HTML reports.

exec > ./log/01-data_cleaning_log.txt 2>&1


echo '@ start rendering 01a-metadata.Rmd...'
Rscript -e "rmarkdown::render('01a-metadata.Rmd', output_dir = './html/')" > ./log/01a-metadata_log.txt 2>&1
echo '@ 01a-metadata.Rmd rendered'

echo '@ start rendering 01b-nmr_processing.Rmd...'
Rscript -e "rmarkdown::render('01b-nmr_processing.Rmd', output_dir = './html/')" > ./log/01b-nmr_processing_log.txt 2>&1
echo '@ 01b-nmr_processing.Rmd rendered'

echo '@ start rendering 01c-nmr_metabolomics.Rmd...'
Rscript -e "rmarkdown::render('01c-nmr_metabolomics.Rmd', output_dir = './html/')" > ./log/01c-nmr_metabolomics_log.txt 2>&1
echo '@ 01c-nmr_metabolomics.Rmd rendered'

echo '@ all 01 files rendered.'
