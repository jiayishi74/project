https://github.com/jiayishi74/project/blob/34feff61e6df8526879c6ef3d3a14f1b9a092f18/followup.do

1. Goal
Create a Public GitHub Repository;
Document your project comprehensively using a README.md file and other necessary documentation to make your analysis accessible and understandable. Embrace the principles of Open Science which are Rigor, Reproducibility, and Responsibility.

2. Import Data

Import the survey data from the 1999-2000 National Health and Nutrition Examination Survey (NHANES):
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/DEMO.XPT", clear

Download the Mortality Data
Download the Stata.do file

3. Edit the original code

Use the Stata_ReadInProgramAllSurveys.do file from NCHS
Modify the absolute file path
Modify SURVEY to NHANES_1999_2000
Save it as followup.do
Upload it to your GitHub Project repo

4. Data Merging

//use your own username/project repo instead of the class repo below
global repo "https://github.com/tlhaksa1/project/raw/main/"
cls
do ${repo}followup.do
save followup, replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/DEMO.XPT", clear
merge 1:1 seqn using followup
lookfor follow

5. Inferences
