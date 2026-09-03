# DATA LAB · Página web (blogdown + Hugo)

Sitio del **Laboratorio de Datos (DATA-LAB)** · Pontificia Universidad Javeriana Cali.

**URL pública (GitHub Pages):** https://owoc9103.github.io/p_w_dl/

Repositorio: https://github.com/owoc9103/p_w_dl

## Activar GitHub Pages (solo la primera vez)

1. Entra a [Settings → Pages](https://github.com/owoc9103/p_w_dl/settings/pages)
2. En **Build and deployment → Source** elige **GitHub Actions**
3. Espera a que termine el workflow [Deploy Hugo site to Pages](https://github.com/owoc9103/p_w_dl/actions)

Cada `git push` a `main` vuelve a publicar el sitio automáticamente.

## Desarrollo local

```r
source("R/serve.R")
```

## Build local

```r
source("R/build.R")
```
