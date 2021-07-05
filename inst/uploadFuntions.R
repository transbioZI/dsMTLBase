library("opalr")

options(opal.opts=list(ssl.verifypeer=0, ssl.verifyhost=0))
opals=c(opal.login(url = "http://192.168.56.100:8080/", user = "administrator", password = "datashield_test&"),
        opal.login(url = "http://192.168.56.101:8080/", user = "administrator", password = "datashield_test&"))
####
#note: set func=null. 
####
#calculate variables' updates per iterations 
dsadmin.set_method(opal = opals, name = "LS_iter_updateDS", func=NULL, path = "./dsMTLBase/LS_iter_updateDS.R", type = "aggregate")
dsadmin.set_method(opal = opals, name = "LR_iter_updateDS", func=NULL, path = "./dsMTLBase/LR_iter_updateDS.R", type = "aggregate")
dsadmin.set_method(opal = opals, name = "LS_funcVal_evalDS", func=NULL, path = "./dsMTLBase/LS_funcVal_evalDS.R", type = "aggregate") 
dsadmin.set_method(opal = opals, name = "LR_funcVal_evalDS", func=NULL, path = "./dsMTLBase/LR_funcVal_evalDS.R", type = "aggregate") 
dsadmin.set_method(opal = opals, name = "updateHDS", func=NULL, path = "./dsMTLBase/updateHDS.R", type = "aggregate") #for inmf
dsadmin.set_method(opal = opals, name = "updateOtherMatsDS", func=NULL, path = "./dsMTLBase/updateOtherMatsDS.R", type = "assign") #for inmf

#initialize the matrix
dsadmin.set_method(opal = opals, name = "addInterceptDS", func=NULL, path = "./dsMTLBase/addInterceptDS.R", type = "assign") # for lasso and mtl
dsadmin.set_method(opal = opals, name = "initMatricesDS", func=NULL, path = "./dsMTLBase/initMatricesDS.R", type = "assign") # for inmf
dsadmin.set_method(opal = opals, name = "initRanMatsWithSeedsDS", func=NULL, path = "./dsMTLBase/initRanMatsWithSeedsDS.R", type = "assign") #inmf


#calculate mean squared error and miss classification rate
dsadmin.set_method(opal = opals, name = "calcMSEDS", func=NULL, path = "./dsMTLBase/calcMSEDS.R", type = "aggregate")
dsadmin.set_method(opal = opals, name = "calcMCRDS", func=NULL, path = "./dsMTLBase/calcMCRDS.R", type = "aggregate")


#matrix calculate t(X)%*%Y 
dsadmin.set_method(opal = opals, name = "xtyDS", func=NULL, path = "./dsMTLBase/xtyDS.R", type = "aggregate")

#get/set my data with key
dsadmin.set_method(opal = opals, name = "getMyServerDataDS", func=NULL, path = "./dsMTLBase/getMyServerDataDS.R", type = "aggregate") 
dsadmin.set_method(opal = opals, name = "setMyServerDataDS", func=NULL, path = "./dsMTLBase/setMyServerDataDS.R", type = "assign") 
dsadmin.set_method(opal = opals, name = "subsetSubjestsDS", func=NULL, path = "./dsMTLBase/subsetSubjestsDS.R", type = "assign") 



opal.logout(opals)