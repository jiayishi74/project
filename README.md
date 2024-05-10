# project_hw6_Shi_Jiayi

# Objectives

## 1. Create a Public GitHub Repository:
Set up a repository named **project** on GitHub. You will be working individually, but you are encouraged to use GitHub Discussions to seek help from your peers when needed.
## 2. Utilize Publicly Available Data:
The focus will be on using public data to explore the significance of “self-reported health” as a health indicator.
## 3. Documentation and Transparency:
Document your project comprehensively using a README.md file and other necessary documentation to make your analysis accessible and understandable. Embrace the principles of Open Science which are Rigor, Reproducibility, and Responsibility.

# Import Data
- ## Survey data
```
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/DEMO.XPT", clear
```
- ## Mortality Follow-up Data:
  - [global mort_1999_2000](https://ftp.cdc.gov/pub/HEALTH_STATISTICS/NCHS/datalinkage/linked_mortality/NHANES_1999_2000_MORT_2019_PUBLIC.dat)

  - [Stata_ReadInProgramAllSurveys.do](https://ftp.cdc.gov/pub/HEALTH_STATISTICS/NCHS/datalinkage/linked_mortality/Stata_ReadInProgramAllSurveys.do)

# Edit the original code
Download, modify, and upload the provided Stata .do file for linking the DEMO.XPT data to mortality follow-up data. Rename this file to followup.do and commit it with the description: “Updated DEMO.XPT linkage .do file”. In otherwords, download, modify, and upload Stata_ReadInProgramAllSurveys.do. You may watch the week 6 video for the key items to edit. For instance, you may edit it so that it reads in the data directly from the website.

# Data Merging
Execute the following Stata code to merge the survey data with the mortality data, ensuring alignment on the unique sequence numbers:
```stata
global repo "https://github.com/jiayishi74/project/main/"
do ${repo}followup.do
save followup, replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/DEMO.XPT", clear
merge 1:1 seqn using followup
lookfor follow
```
# Inferences
Please review [documentation](https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/HUQ.htm)for the file `HUQ.XPT`, which includes the variable `huq010`
```
merge 1:1 seqn using demo_mortality, nogen
sts graph, by(huq010) fail
stcox i.huq010
```
```
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/HUQ.XPT", clear 
huq010 
desc huq010
codebook huq010
```
