# DATA LAB · Página web (blogdown + Hugo)

Sitio del **Laboratorio de Datos (DATA-LAB)** de la Pontificia Universidad Javeriana Cali, con estructura y estética alineadas al SharePoint interno `laboratorio-datos`.

## Navegación (como SharePoint)

- **¿Quiénes somos?** → inicio (hero DATA-LAB, qué es, por qué, objetivos, comunidad)
- **Docencia** → banda gris + cursos por área
- **Servicios** → Consultorías / Investigación / Visualizaciones + lanzamiento
- **Más...** → Recursos, Equipo, Proyectos, Capacitaciones, Contacto

## Colores

| Token | Hex |
|-------|-----|
| Azul institucional (nav) | `#2C5697` |
| Azul oscuro | `#1A2744` |
| Cyan títulos en fondos oscuros | `#7EC8E3` |
| Amarillo institucional | `#F8CD00` |
| Gris banda docencia | `#6B6B6B` |

## Cómo servir

```r
source("R/serve.R")
```

## Build estático

```r
source("R/build.R")
# o: hugo --cleanDestinationDir
```

Salida en `public/`.
