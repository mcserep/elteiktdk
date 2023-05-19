# ELTE IK TDK-dolgozat sablon

A [elteiktdk_hu.tex](elteiktdk_hu.tex) és a belőle előálló [elteiktdk_hu.pdf](elteiktdk_hu.pdf) szolgál kiindulási példaként.
A sablon alkalmazza a TDK-dolgozatokra vonatkozó formai előírásokat, valamint elkészíti a megadott metaadatok alapján a fedő- és a címlapot.
A formai megkötések az ELTE Informatikai Karán, valamint az OTDK Informatika Tudományi Szekcióban megszokottak, de általánosan (szükség esetén megfelelő módosításokkal) alkalmazható más szekciók és más egyetemek TDK dolgozataihoz is.

A sablon tartalmazza az egy és két oldalas nyomtatáshoz szükséges beállításokat is (ld. `twoside` paraméter), alapértelmezetten a javasolt egy oldalas nyomtatásra konfigurált. (Érdemes figyelembe venni, hogy 20-nál kevesebb lapszám kemény kötésben furcsán mutat, továbbá az ábrák könnyen átütnek az általános 80g/m<sup>2</sup> fénymásolópapíron).
A sablon magyar és angol nyelvű dokumentumok elkészítését is támogatja (ld. `\documentlang` parancs).

## Fordítás

```bash
# elteiktdk_hu.aux fájl generálása
# (PDF fájl még hibás hivatkozásokat fog tartalmazni)
pdflatex elteiktdk_hu.tex
# Irodalomjegyzék generálása
bibtex elteiktdk_hu
# Jelölésjegyzék generálása (ha szükséges)
makeindex -s nomencl.ist -t elteiktdk_hu.nlg \
  -o elteiktdk_hu.nls elteiktdk_hu.nlo
# Végleges PDF fájl generálása
pdflatex elteiktdk_hu.tex
pdflatex elteiktdk_hu.tex
```

**Megjegyzés:** az irodalomjegyzék változása esetén a `bibtex`, majd a `pdflatex` _kétszeri_ futtatása szükséges a helyes hivatkozások előállításához.

A fordításhoz tetszőleges fejlesztő környezet is használható (pl. [TexStudio](https://www.texstudio.org/)), ugyanezen utasítások kiadásával.

## Kódblokkok szintaxis kiemelése

A *minted* csomag támogatott a forráskódok szedésére és szintaxis kiemelésére, részletekért ld. a [dokumentációt](https://www.overleaf.com/learn/latex/Code_Highlighting_with_minted).
Használatához szükséges a Python interpreter és a `Pygments` csomag telepítése, majd `elteiktdk_hu.tex` fájl elején a betöltésének az engedélyezése.

## Overleaf

Az *Overleaf* egy ingyenes, könnyen használható, kollaboratív, online LaTeX szerkesztő. Hasonló, mint például a Google Docs, de LateX dokumentumokhoz.
Az ELTE IK TDK-dolgozat sablon legfrissebb kiadását [Overleafen is megtalálod](https://www.overleaf.com/latex/templates/tdk-thesis-template-elte-fi/mxnndxkmdmkd).

## Fontosabb függőségi csomagok

**Képkezelés:**

* Minimális és maximális méret: [adjustbox](https://ctan.org/pkg/adjustbox)
* Alábrák: [subcaption](https://ctan.org/pkg/subcaption)
* Forgatás: [rotating](https://ctan.org/pkg/rotating)

**Táblázatkezelés:**

* Oszlopok és sorok egyesítése: [multirow](https://ctan.org/pkg/multirow)
* Tördelhető táblázat: [longtable](https://ctan.org/pkg/longtable)
* Cellatartalom vertikális igazítása: [array](https://ctan.org/pkg/array)
* Többsoros cellák (sortörés): [makecell](https://ctan.org/pkg/makecell)

**Felsorolások:**

* Szoros térközű felsorolások: [paralist](https://ctan.org/pkg/paralist)

**Matematika és algoritmusok:**

* Matematikai formulák: [amsmath](https://ctan.org/pkg/amsmath)
* Matematikai definíciók: [amsthm](https://ctan.org/pkg/amsthm)
* Matematikai szimbólumok: [amsfonts](https://ctan.org/pkg/amsfonts)
* Algoritmusok: [algpseudocode](https://www.ctan.org/pkg/algorithmicx)
* Kódblokkok: [listingsutf8](https://ctan.org/pkg/listingsutf8)

**Egyebek:**

* Teendők: [todonotes](https://ctan.org/pkg/todonotes)

## Előre definiált tételszerű bekezdések

* *definition*: Definíció
* *theorem*: Tétel
* *remark*: Emlékeztető
* *note*: Megjegyzés
