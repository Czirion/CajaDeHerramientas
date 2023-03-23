#Function to only load the functions from an R script that has functions and more things

SourceFunctions<-function(file) {
  MyEnv<-new.env()
  source(file=file,local=MyEnv)
  list2env(Filter(f=is.function,x=as.list(MyEnv)),
           envir=parent.env(environment()))
}
