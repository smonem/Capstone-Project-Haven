# Capstone-Project-Haven

### Intro 

The subject of our project is studying refugee resettlement and its outcomes within the United States. We are aiming to understand what factors influence the success of a refugee’s life post-resettlement.

### Dataset

This project uses data gathered from the Annual Survey of Refugees. This survey is conducted by the Office of Refugee Resettlement (ORR), a program within the US Department of Health and Human Services. More information on the dataset can be found on the [ORR site](https://www.acf.hhs.gov/orr/programs/refugees/annual-survey-refugees).

#### Access

Downloading the data requires an OpenICPSR account. Links to the Surveys from 2016 to 2020 can be found here:

- [2016](https://www.openicpsr.org/openicpsr/project/104642/version/V4/view)
- [2017](https://www.openicpsr.org/openicpsr/project/117581/version/V1/view)
- [2018](https://www.openicpsr.org/openicpsr/project/131025/version/V1/view)
- [2019](https://www.openicpsr.org/openicpsr/project/168641/version/V2/view)

#### Instructions
Click on "Download this Project" at the bottom of each link and download the archives into the `Data/downloads` folder. Then run `./Scripts/extract_data.sh`

### How to Run Project
Create a Python virtual environment and install packages from `requirements.txt`. Extract the files from the OpenICPSR archives if not done so already. Each notebook is listed in order in the `Notebooks` folder.

### Citations

We acknowledge that the original collector of the data, ICPSR, and the relevant funding agency bear no responsibility for use of the data or for interpretations or inferences based upon such uses.

Urban Institute. 2020 Annual Survey of Refugees. Ann Arbor, MI: Inter-university Consortium for Political and Social Research [distributor], 2023-11-27. https://doi.org/10.3886/E195403V1

Urban Institute. 2019 Annual Survey of Refugees. Ann Arbor, MI: Inter-university Consortium for Political and Social Research [distributor], 2022-04-27. https://doi.org/10.3886/E168641V2

Urban Institute. 2018 Annual Survey of Refugees. Ann Arbor, MI: Inter-university Consortium for Political and Social Research [distributor], 2021-01-29. https://doi.org/10.3886/E131025V1

Urban Institute. 2017 Annual Survey of Refugees. Ann Arbor, MI: Inter-university Consortium for Political and Social Research [distributor], 2020-02-14. https://doi.org/10.3886/E117581V1

Urban Institute. 2016 Annual Survey of Refugees. Ann Arbor, MI: Inter-university Consortium for Political and Social Research [distributor], 2020-02-19. https://doi.org/10.3886/E104642V4
