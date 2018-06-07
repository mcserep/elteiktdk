# ELTE IK TDK-szakdolgozat és sablon

A [tdk.tex](tdk.tex) és a belőle előálló [tdk.pdf](tdk.pdf) szolgál kiindulási példaként.
A sablon alkalmazza a TDK-dolgozatokra vonatkozó formai előírásokat, valamint elkészíti a megadott metaadatok alapján a fedő- és a címlapot.
A formai megkötések az ELTE Informatikai Karán, valamint az OTDK Informatika Tudományi Szekcióban megszokottak, de általánosan (szükség esetén megfelelő módosításokkal) alkalmazható más szekciók és más egyetemek TDK dolgozataihoz is.

A sablon alapértelmezetten a javasolt egy oldalas nyomtatásra konfigurált, de előkészítetten (kikommentlve) tartalmazza a két oldalas nyomtatáshoz szükséges beállításokat. A sablon magyar és angol nyelvű dokumentumok elkészítését támogatja (ld. `\documentlang`).

## Fontosabb kiegészítő csomagok

**Képkezelés:**
* Minimális és maximális méret: [adjustbox](https://ctan.org/pkg/adjustbox)
* Alábrák: [subfigure](https://ctan.org/pkg/subfigure)
* Forgatás: [rotating](https://ctan.org/pkg/rotating)

**Táblázatkezelés:**
* Oszlopok és sorok egyesítése: [multirow](https://ctan.org/pkg/multirow)
* Tördelhető táblázat: [lontable](https://ctan.org/pkg/longtable)
* Cellatartalom vertikális igazítása: [array](https://ctan.org/pkg/array)

**Egyebek:**
* Kódblokkok: [listingsutf8](https://ctan.org/pkg/listingsutf8)
* Teendők: [todonotes](https://ctan.org/pkg/todonotes)

## Tételszerű bekezdések

* definition: Definíció
* theorem: Tétel
* remark: Emlékeztető
* note: Megjegyzés