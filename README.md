# Plantilla para TFG con LaTeX

Este repositorio contiene una plantilla en LaTeX para trabajos académicos como TFG, TFM o doctorado.
La plantilla está preparada para generar automáticamente bibliografía, índices, glosario, anexos, código y gráficos (como puedes ver en el `main.pdf` del repositorio) de una manera modular que permite trabajar en archivos independientes.

Puedes descargártela y usarla en editores LaTeX como [Overleaf](https://www.overleaf.com) 
donde no necesitas instalar nada. O localmente con cualquier otro  editor (TeXStudio, TeXMaker..) donde tendrás que 
instalar los paquetes requeridos.
Abre y compila `main.tex`.

La forma de trabajo es: Escribir capítulos correspondientes a las distintas partes del trabajo en archivos `.tex` y luego incluirlos en el orden correspondiente en el `main.tex` para que queden seguidos y maquetados en el documento usando:

```latex
\input{Capitulos/mi_capitulo}
```
