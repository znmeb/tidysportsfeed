#! /usr/bin/env Rscript

# create personal library if it doesn't exist
CRAN <- "https://cloud.r-project.org/" # CRAN URL
LIB <- Sys.getenv("R_LIBS_USER") # library path
if (!dir.exists(LIB)) {
  dir.create(LIB, recursive = TRUE, mode = '0755')
}
.libPaths(LIB) # add to search path

update.packages(ask = FALSE, lib = LIB, repos = CRAN, quiet = TRUE)
install.packages(c("devtools", "pkgdown"), lib = LIB, repos = CRAN,
                 quiet = TRUE)
devtools::install(
  lib = LIB,
  dependencies = TRUE,
  quiet = TRUE,
  build_vignettes = TRUE
)
pkgdown::clean_site()
pkgdown::build_site(lazy = FALSE)

# flag this as a non-Jekyll site for GitHub Pages
file.create("./docs/.nojekyll")
