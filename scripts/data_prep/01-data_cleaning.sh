#!/bin/bash

# Author: Zhongyi (James) Guo
# Date: 02/04/2025

# This script renders all RMD files for data preparation and generates their HTML reports.

Rscript -e "rmarkdown::render('01a-metadata.Rmd', output_dir = './html/')" > ./log/01a-metadata_log.txt 2>&1

Rscript -e "rmarkdown::render('01b-nmr_processing.Rmd', output_dir = './html/')" > ./log/01b-nmr_processing_log.txt 2>&1

Rscript -e "rmarkdown::render('01c-nmr_metabolomics.Rmd', output_dir = './html/')" > ./log/01c-nmr_metabolomics_log.txt 2>&1