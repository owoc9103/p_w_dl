# Demo local del sitio DATA LAB (blogdown + Hugo)
options(repos = c(CRAN = "https://cloud.r-project.org"))
options(blogdown.hugo.version = "0.165.0")

if (!requireNamespace("blogdown", quietly = TRUE)) {
  install.packages("blogdown")
}

library(blogdown)

hugo_ok <- tryCatch({
  hugo_version()
  TRUE
}, error = function(e) FALSE)

if (!isTRUE(hugo_ok)) {
  install_hugo()
}

message("Sirviendo el sitio... (Ctrl+C para detener)")
serve_site(port = 4321, host = "127.0.0.1")
