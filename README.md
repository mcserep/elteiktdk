![CI status](https://github.com/mcserep/elteiktdk/workflows/Build%20LaTeX%20document/badge.svg)
[![Overleaf template](https://img.shields.io/badge/Overleaf-TDK%20Thesis%20Template%20(ELTE%20FI)-brightgreen)](https://www.overleaf.com/latex/templates/tdk-thesis-template-elte-fi/mxnndxkmdmkd)


See [Hungarian version](README_hu.md).

# ELTE FI TDK thesis template

The [elteiktdk_en.tex](elteiktdk_en.tex) and the produced [elteiktdk_en.pdf](elteiktdk_en.pdf) serves as an example of usage.
This class template enforces the required formatting rules for TDK theses and generates the cover and title page given on the provided metadata.
The formatting rules are defined to meet the requirements for TDK theses submitted at the Eötvös Loránd University, Faculty of Informatics. This also fits the formatting requirements of the Computer Science Section of the National Conference of Scientific Students' Associations (OTDK). With sufficient modifications the template should be usable for TDK theses at other national and faculty level sections, too.

The template contains configuration both for single and double sided printing (see `twoside` option), by default it is set to the recommended single side format.
The template supports producing both Hungarian and English theses, which can be easily controlled (see `\documentlang` command).

## Compilation

```bash
# Generate elteiktdk_en.aux file
# (PDF file contains incorrect references yet)
pdflatex elteiktdk_en.tex
# Generate bibliography
bibtex elteiktdk_en
# Generate nomenclature (optional)
makeindex -s nomencl.ist -t elteiktdk_en.nlg \
  -o elteiktdk_en.nls elteiktdk_en.nlo
# Generate final PDF file
pdflatex elteiktdk_en.tex
pdflatex elteiktdk_en.tex
```

**Note:** in case the bibliography changes, executing `bibtex`, then `pdflatex` _twice_ is required to generate to correct references in the PDF output.

Compilation might be carried out through a preferred IDE (e.g. [TexStudio](https://www.texstudio.org/)), given the same commands should be executed.

## Syntax highlighting of code blocks

The minted package is also supported for syntax  highlighting, for details see the [documentation](https://www.overleaf.com/learn/latex/Code_Highlighting_with_minted).
For its usage the Python interpreter and the `Pygments` package must be installed as a prerequisite, then you should uncomment its loading at the beginning of `elteiktdk_en.tex`.

## Overleaf

*Overleaf* is a free, easy to use online, collaborative LaTeX editor; similar like e.g. Google Docs, but for LateX documents.
You can also find the latest release of this thesis template [on Overleaf](https://www.overleaf.com/latex/templates/tdk-thesis-template-elte-fi/mxnndxkmdmkd).

## Required packages (without completeness)

**Image handling:**

* Minimal and maximal size: [adjustbox](https://ctan.org/pkg/adjustbox)
* Subfigures: [subcaption](https://ctan.org/pkg/subcaption)
* Rotation: [rotating](https://ctan.org/pkg/rotating)

**Table management:**

* Multirow and multicolumn support: [multirow](https://ctan.org/pkg/multirow)
* Breakable tables: [longtable](https://ctan.org/pkg/longtable)
* Vertical positioning of cells: [array](https://ctan.org/pkg/array)
* Multiline cells (line breaks): [makecell](https://ctan.org/pkg/makecell)

**Lists:**

* Lists with narrow spacing: [paralist](https://ctan.org/pkg/paralist)

**Mathematical formulas and algorithms:**

* Mathematical formulas: [amsmath](https://ctan.org/pkg/amsmath)
* Mathematical definitions: [amsthm](https://ctan.org/pkg/amsthm)
* Mathematical symbols: [amsfonts](https://ctan.org/pkg/amsfonts)
* Algorithms: [algpseudocode](https://www.ctan.org/pkg/algorithmicx)
* Code blocks: [listingsutf8](https://ctan.org/pkg/listingsutf8)

**Miscellaneous:**

* Todos: [todonotes](https://ctan.org/pkg/todonotes)

## Predefined theorem-like environments

* *definition*
* *theorem*
* *remark*
* *note*
