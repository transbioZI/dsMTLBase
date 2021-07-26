# dsMTLBase: dsMTL server site functions
dsMTL (Federated Multi-Task Learning based on DataSHIELD) provided federated, privacy-preserving MTL analysis. dsMTL was developed based on DataSHIELD, an ecosystem supporting the federated analysis of sensitive individual-level data that remains stored behind the data owner’s firewall throughout analysis. Multi-task Learning (MTL) aimed at simultaneously learning the outcome (e.g. diagnosis) associated patterns across datasets with dataset-specific, as well as shared, effects. MTL has numerous exciting application areas, such as comorbidity modeling, and has already been applied successfully for e.g. disease progression analysis.  

<p align="center"> 
<img src="inst/overview.png" style="width: 70%; height: 70%"/>​
</p>


dsMTL currently includes three supervised and one unsupervised federated multi-task learning as well as one federated machine learning algorithms. Each algorithm contained a specific assumption of cross-cohort heterogeneity, which could be linked to different application scenario in molecular studies.
| Name  | Type | Aim | Effect |
| --- | --- |
| dsMTL_L21  | MTL | Classification/Regression | Screen out unimportant features to all tasks |
| dsMTL_trace  | MTL | Classification/Regression | Identify models represented in low-dimentional spcae |
| dsMTL_net  | MTL | Classification/Regression | Incorporate task-relatedness described as a graph |
| dsMTL_iNMF  | MTL | Matrix factorization | Factorize matrices into shared and specific components |
| dsLasso  | ML | Classification/Regression | Train a Lasso model on the conbained cohorts |




# Installation
## Requirements
dsMTLBase was successfully tested with these server-side softwares
```
Opal 3.0.3
dsBase 6.1.0
resourcer 1.0.1
R >= 3.5.0
```

## Install dsMTLBase on the DataSHIELD (or opal) server

### Install an opal server 

* Install a well-configured server using Virtualbox. This [training course](https://data2knowledge.atlassian.net/wiki/spaces/DSDEV/pages/931069953/Installation+Training+Hub+-+DataSHIELD+v6.1) was provided by DataSHIELD  team
* Install and configure opal server from scratch. This is from the [doccument](https://opaldoc.obiba.org/en/latest/admin/installation.html) of opal server
* Quick test using the [opal test server](https://opal-test.obiba.org). Please note this server was upgraded frequently so it might not work (see the suooprted opal server above)
    1. username: administrator
    1. password: password

### Install package dsMTLBase

* Install using DataSHIELD web-GUI on Client computer
    1. The entire tutorial can be found [here](https://isglobal-brge.github.io/resource_bookdown/tips-and-tricks.html#how-to-install-datashield-packages-into-opal-server)
    1. After login of web-GUI, go to "Administration -> DataSHIELD -> Add Package". In the dialog, selected the installation from github, and then filled with the repository information, i.e. organization name: transbioZI; package name: dsMTLBase; git branch: main 
<p align="center"> 
<img src="inst/Install.PNG" style="width: 70%; height: 70%"/>​
</p>

* Install using command line on Client computer
    1. Be sure your DataSHIELD server account has administration permision
    2. Install R opal management package opalr
        ```shell
        install.packages("opalr")
        ```
    4. Perform these on shell command line
    ```shell
    git clone https://github.com/transbioZI/dsMTLBase.git
    cd dsMTLBase
    # open ./inst/uploadFunctions.R, change the server information to yours (server IP, user name and passowrd)
    Rscript ./inst/uploadFunctions.R
    ```



# Contact
Han Cao (hank9cao@gmail.com)
