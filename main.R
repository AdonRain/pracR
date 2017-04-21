import <- function (pkgs){
  new_pkgs <- pkgs[!(pkgs %in% installed.packages()[, "Package"])]

  if (length(new_pkgs)) install.packages(new_pkgs, dependencies = TRUE)

  sapply(pkgs, require, character.only = TRUE)
}

import(c('rmarkdown', 'knitr'));

render <- function (s){
  src <- paste('src/prac-', s, '.rmd', sep = '');
  dist <- paste('dist/prac-', s, '.md', sep = '');

  knit(src, dist);
}
