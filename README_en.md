# ELTE FI TDK thesis template

The [tdk.tex](tdk.tex) and the produced [tdk.pdf](tdk.pdf) serves as an example of usage.
This class template enforces the required formatting rules for TDK theses and generates the cover and title page given on the provided metadata.
The formatting rules are defined to meet the requirements for TDK theses submitted at the Eötvös Loránd University, Faculty of Informatics. This also fits the formatting requirements of the Computer Science Section of the National Conference of Scientific Students' Associations (OTDK). With sufficient modifications the template should be usable for TDK theses at other national and faculty level sections, too.

The template contains configuration both for single and double sided printing (see `twoside` option), by default it is set to the recommended single side format.
The template supports producing both Hungarian and English theses, which can be easily controlled (see `\documentlang` command).

## Compilation

```bash
# Generate tdk.aux file (PDF file contains incorrect references yet)
pdflatex tdk.tex
# Generate bibliography
bibtex tdk
# Generate nomenclature (optional)
makeindex -s nomencl.ist -t tdk.nlg -o tdk.nls tdk.nlo
# Generate final PDF file
pdflatex tdk.tex
pdflatex tdk.tex
```

**Note:** in case the bibliography changes, executing `bibtex`, then `pdflatex` _twice_ is required to generate to correct references in the PDF output.

Compilation might be carried out through a preferred IDE (e.g. [TexStudio](https://www.texstudio.org/)), given the same commands should be executed.

## Required packages (without completeness)

**Image handling:**
* Minimal and maximal size: [adjustbox](https://ctan.org/pkg/adjustbox)
* Subfigures: [subfigure](https://ctan.org/pkg/subfigure)
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
* Algorithms: [algorithmic](https://ctan.org/pkg/algorithms)
* Code blocks: [listingsutf8](https://ctan.org/pkg/listingsutf8)

**Miscellaneous:**
* Todos: [todonotes](https://ctan.org/pkg/todonotes)

## Predefined theorem-like environments

* *definition*
* *theorem*
* *remark*
* *note*
