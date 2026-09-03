# Build estático del sitio (public/)
options(repos = c(CRAN = "https://cloud.r-project.org"))
options(blogdown.hugo.version = "0.165.0")
if (!requireNamespace("blogdown", quietly = TRUE)) install.packages("blogdown")
library(blogdown)
hugo_ok <- tryCatch({ hugo_version(); TRUE }, error = function(e) FALSE)
if (!isTRUE(hugo_ok)) install_hugo()
# Evita R/build.R recursivo: llama a hugo directamente vía blogdown
hugo_cmd <- function() {
  bin <- Sys.which("hugo")
  if (!nzchar(bin)) {
    # blogdown guarda Hugo en AppData
    candidates <- list.files(
      file.path(Sys.getenv("APPDATA"), "Hugo"),
      pattern = "^hugo(\\.exe)?$",
      recursive = TRUE,
      full.names = TRUE
    )
    if (length(candidates)) bin <- candidates[[1]]
  }
  if (!nzchar(bin)) stop("No se encontró el binario de Hugo.")
  status <- system2(bin, args = c("--cleanDestinationDir"), stdout = TRUE, stderr = TRUE)
  writeLines(status)
  invisible(paste("Hugo exit status OK. Sitio en public/"))
}
hugo_cmd()
