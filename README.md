Diagnostic Agreement Study

This repository contains the R script and associated documentation for the diagnostic agreement study. 
Overview

The project applies statistical techniques to evaluate diagnostic agreement between visual dental examinations and teh on-screen assessment of intraoral scans with and without fluorescence. Specifically, it uses multilevel modeling to account for clustering at various levels, such as teeth within a patient, and surfaces within a tooth. 
Repository Structure

repository-name/
├── README.md           # Project description and instructions (this file)
├── scripts/            # R scripts for analysis
│   └── diagnostic_agreement_analysis.R  # Main R script
└── .gitignore          # Files to ignore in GitHub

Key Files

scripts/diagnostic_agreement_analysis.R: Contains the R code for result generation.

How to Use

Prerequisites

R: Version 4.0 or later

R Packages:

lme4 for multilevel modeling
tidyverse for data manipulation and visualization
ggplot2 for creating plots

Install necessary packages using the following R code:
install.packages(c("lme4", "tidyverse", "ggplot2"))

Running the Analysis

Clone the repository:

git clone https://github.com/yourusername/repository-name.git
cd repository-name

Open diagnostic_agreement_analysis.R in your R editor.

Replace any placeholder file paths (e.g., data/example_data.csv) with the path to your data.

Run the script.

Expected Data Structure

The input dataset should be a CSV file with the following columns:

participantid: Unique identifier for each patient

method: the method of caries assessment, either visual examination, on-screen assessment in colour (OSA) or on-screen assessment supplemented with fluorescence.

time: time point of on-screen assessment, either 1- baseline, or 2- more than 4 weeks later

rater: person examinaing the scans

tooth: Unique identifier for each tooth, FDI notation used. 

surface: tooth surface examined. 

value: ICDAS score ra nges from 0-6. 

init_caries: Diagnosis outcome (binary)- data dichotimised >= ICDAS 01

mod_caries: Diagnosis outcome (binary)- data dichotimised >= ICDAS 03

ext_caries: Diagnosis outcome (binary)- data dichotimised >= ICDAS 05


Notes

The dataset is not included in this repository to maintain privacy and comply with ethical standards. Users should provide their data in the specified format.

For assistance, contact bree.jones@unimelb.edu.au.

License

This project is licensed under the MIT License. See the LICENSE file for details.

Acknowledgments

Special thanks to the research team for their contributions to the study design and analysis framework.
