# Rebi Media Kit · v5

Éles cím: https://jtdevzero.github.io/rebi-mediakit/v5/

Magyar–angol, statikus médiakit Szőke Rebeka / Sz_Becca számára. A v5 a repó külön mappája; a főoldal és a v2–v4 nem változik.

## Kapcsolatok

- Általános megkeresések, márkaegyüttműködés: **szokerebus@gmail.com**.
- Kizárólag DJ-fellépés: **booking@himusic.hu** (H! Music).
- Az űrlap `mailto:` hivatkozást készít. A felhasználó levelezőprogramja nyílik meg; az oldal nem küld levelet, nem rendelkezik saját űrlap-adatbázissal.

## Fájlok

| Fájl | Feladat |
| --- | --- |
| `index.html` | Oldalszerkezet, statikus szöveg, kereső- és megosztási metaadatok |
| `styles.css` | Reszponzív megjelenés, billentyűzetfókusz, csökkentett mozgás és nyomtatás |
| `app.js` | Tartalmi adatok, megjelenítések, navigáció, ajánlatkérő |
| `languages.js` | Magyar–angol szótár, nyelvválasztás és helyi megjegyzés |
| `gallery.js` | Instagram-galéria szűrése |
| `backtop.js` | Vissza az oldal tetejére gomb |
| `enhancements.js` | E-mail másolása, menü bezárása, navigációs fókusz |
| `assets/` | Optimalizált, helyben kiszolgált fotók és borítók |
| `favicon.svg` | Böngészőikon |
| `sitemap.xml` | A v5 kanonikus címe |
| `404.html` | Önálló hibaoldal-sablon; lásd a telepítési megjegyzést |
| `tools/check.cjs` | Függőségmentes ellenőrzések |

## Helyi megtekintés és ellenőrzés

Node.js 18+ szükséges az ellenőrzéshez, az oldalhoz nincs fordítás vagy csomagtelepítés.

```sh
npm run check
python -m http.server 8080
```

A böngészőben nyisd meg a `http://localhost:8080` címet. Az iframe-ek és a betűkészletek internetet igényelnek. A `file://` előnézetben külső szolgáltatásokat a böngésző korlátozhat.

## Közzététel

A mappa teljes tartalma kerüljön a `main` ág `v5/` könyvtárába. A meglévő GitHub Pages munkafolyamat szolgálja ki. Nem kell új repó, almodul vagy backend.

A `v5/404.html` nem helyettesíti automatikusan a GitHub Pages gyökérszintű 404-oldalát. A gyökérszintű `robots.txt`, 404-kezelés és HTTP-fejlécek közös tárhelybeállítások; ez a verzió nem írja felül őket. A `sitemap.xml` külön is megadható egy igazolt Search Console-tulajdonhoz.

## Nyelvválasztás

Alapértelmezés: magyar. A választás `rebi-language` néven helyben tárolódik. A `?lang=en` és `?lang=hu` paraméter megosztható és felülírja a tárolt választást. A két nyelv ugyanazon oldal változata; külön indexelhető angol útvonal nincs.

## Külső szolgáltatások

A Spotify-lejátszó automatikusan betöltődik, de nem indul automatikusan a hang. A lejátszás és a teljes számok elérhetősége a Spotify szabályaitól és a látogató munkamenetétől függ. A beágyazott felület saját nyelvét a Spotify határozza meg. A Google Fonts `display=swap` móddal töltődik, helyi tartalék betűkkel.

További leírások: [karbantartás](MAINTENANCE.md), [ellenőrzések](CHECKS.md), [források és jogok](SOURCES.md), [változások](CHANGELOG.md).

