library('rmarkdown');

render <- function (s){
  src <- paste('src/prac-', s, '.rmd', sep = '');

  rmarkdown::render(src, output_dir = './dist/');
}
