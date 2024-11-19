## This preparation script will install all the necessary R packages into your
## environment at once
## check which packages need to be loaded/installed
# adapted from Jochem Tolsma
fpackage_check <- function(packages) {
  for (package in packages){
    if (!require(package, character.only = TRUE)) {
      install.packages(package, dependencies = TRUE)
      library(package, character.only = TRUE)
    }
  }
}

package_list <- c("tidytext",  # helpful for various text analysis pipelines
                  "dplyr",  # useful for data wrangling in R
                  "stringr", # operations on strings/texts
                  "readr",  # reading in .csv files
                  "remotes", # needed to install packages from github
                  "quanteda", # working with textual corpora
                  "randomForest", # random forest R package
                  "httr", # for making requests
                  "semgram", # for semantic parsing
                  "spacyr", # also for semantic parsing
                  "janeaustenr", # for loading an example dataset
                  "topicmodels", # function for the LDA
                  "keyATM", # function for keyATM
                  "tm", # for document-term matrices
                  "ggplot2" # plotting words and topics
) 

# installing the packages
fpackage_check(package_list)
