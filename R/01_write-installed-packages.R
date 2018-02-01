## deja vu from yesterday!


# 1. Load Packages  -------------------------------------------------------

  require(tidyverse)
  require(here)

## create a data frame of your installed packages

  df <- installed.packages() %>%
    as.tibble()


## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

  df <- df %>% select(Package, LibPath, Version, Priority, Built)

## write it to data/installed-packages.csv

  write_csv(x = df, path = "data/installed-packages.csv")
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

## when this script works, stage & commit it and the csv file
## PUSH!
