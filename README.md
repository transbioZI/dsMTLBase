# dsMTLBase: dsMTL server site functions

dsMTL: 

dsMTL (Federated Multi-Task Learning based on DataSHIELD) provided federated, privacy-preserving MTL analysis. dsMTL was developed for DataSHIELD, a platform supporting the federated analysis of sensitive individual-level data that remains stored behind the data owner’s firewall throughout analysis. Federated machine learning assumed the data of each geo-distributed cohort can be seen as drawn from the identical distribution, which was too strong in fields i.e. molecular biology. Federated multi-task learning relaxed the assumption that the data distribution of geo-distributed cohorts were only required to share common properties.  The aim of dsMTL was to account for the heterogeneity of the geo-distributed data cohorts by the cross-task regularization particularly in applications of molecular studies. 

dsMTL currently includes three supervised and one unsupervised federated multi-task learning algorithms. Specifically, the **dsMTL_L21** approach allows for screening out unimportant features to all tasks. The **dsMTL_trace** approach constrains the models’ representation in a low-dimensional space during the training procedure, in order to penalize the complexity of task-relationships, resulting in an improved generalizability of the models. **dsMTL_net** incorporates the task-relationships that can be described as a graph, in order to incorporate the domain koowledge. The **dsMTL_iNMF** approach is an unsupervised, integrative non-negative matrix factorization method that aims at factorizing the cohorts’ data matrices into homogeneous (i.e. shared across all datasets) and heterogeneous (i.e. specific to any given dataset) components. In addition to the FeMTL methods, we also included in dsMTL a federated implementation of the conventional Lasso (**dsLasso**) due to its wide usage in biomedicine.



## Installation
### Requirements
dsMTLBase was successfully tested with these required server-side softwares

Opal 3.0.3

dsBase 6.1.0

resourcer 1.0.1

R >= 3.5.0

### Install dsMTLBase on the DataSHIELD (or opal) server

#### Install a DataSHIELD (or opal) server 

1, A training course: Install a well-configured server using Virtualbox 

https://data2knowledge.atlassian.net/wiki/spaces/DSDEV/pages/931069953/Installation+Training+Hub+-+DataSHIELD+v6.1

2, Opal Document: Install and configure opal server from scratch

https://opaldoc.obiba.org/en/latest/admin/installation.html

3, Quick test using the opal test server (please note this server upgraded frequently such that it might not be successed)

https://opal-test.obiba.org

username: administrator

password: password

#### Install dsMTLBase

1, Install using DataSHIELD web-GUI

The entire tutorial can be found: https://isglobal-brge.github.io/resource_bookdown/tips-and-tricks.html#how-to-install-datashield-packages-into-opal-server

After login, go to Administration -> DataSHIELD -> Add Package. In the dialog, select the installation from github, then filled with repository information, i.e. organization name: transbioZI; package name: dsMTLBase; git branch: main 

<p align="center"> 
<img src="inst/Install.png" style="width: 70%; height: 70%"/>​
</p>





## Contact
Han Cao (hank9cao@gmail.com)
