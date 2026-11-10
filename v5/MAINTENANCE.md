# Karbantartás

## Tartalom

Az `app.js` elején található `DEFAULT_DATA` tartalmazza a megjelenéseket, TV-referenciákat, csomagokat és elérhetőségeket. Új állítást csak ellenőrzött forrásból adj hozzá. Követőszám, elérés, ár vagy fellépésdátum nincs kitalálva; a közönségblokk érvényes adatok nélkül rejtett.

Az általános e-mailt az `app.js` és az `index.html` közvetlen kapcsolatai, illetve az `enhancements.js` másolási funkciója használja. Cseréjük együtt történjen. A DJ-kivétel az űrlap stabil opcióértékéhez kapcsolódik, nem a lefordított felirathoz.

## Fordítás

Az eredeti magyar szöveghez a `languages.js` `dictionary` objektumában add meg az angol párját. Dal-, márka- és műsorneveket nem fordítunk önkényesen. Új képek alternatív szövegeit is ellenőrizd. Minden változtatás után válts HU → EN → HU irányban; nézd meg az űrlap és a galéria működését is.

## Képek és sebesség

A képek helyi fájlok. Új fotónál általában 1200–1400 képpont hosszú oldal és WebP/AVIF ajánlott; az átlátszó logó maradjon átlátszó. A legfelső portré elsőbbséget kap, a többi kép késleltetve töltődik. Ne cseréld a webes csomagot egy többmegabájtos, beágyazott HTML-re: az utóbbi csak hordozható előnézet.

## Megjelenés, SEO és tárhely

Domain vagy útvonal cseréjénél frissítsd a canonical, Open Graph, Twitter, JSON-LD, sitemap és 404-visszalink címeket. A megosztókép jelenleg a meglévő portré; a közösségi szolgáltató saját arányra vághatja.

Ne tegyél titkos kulcsot a JavaScriptbe. A jelenlegi statikus oldalnak nincs szerveroldali titka. A beérkező leveleket a cím tulajdonosa kezeli. A weboldalon lévő technikai adatkezelési leírás nem helyettesít egy szervezetre és tényleges levelezési gyakorlatra szabott jogi tájékoztatót; az adatkezelő üzleti adatait és megőrzési szabályait a tulajdonosnak kell meghatároznia.

## Kiadás előtti lista

1. `npm run check`.
2. 360 és 390 px mobilnézet, valamint széles asztali nézet.
3. HU/EN, frissítés utáni nyelvmegőrzés, mobilmenü, Escape, galériaszűrők.
4. Spotify betöltés, közvetlen számhivatkozások, képek.
5. Általános és DJ űrlap-címzés: tesztadatokkal, levelet ténylegesen ne küldj.
6. Közzététel után a GitHub Pages munkafolyamat sikerét és a nyilvános URL-t ellenőrizd.

Visszaállítás: a v5 módosító commit visszavonható, vagy a korábbi v4 külön címe tovább használható. A nyilvános verziók frissítése nem történik a böngészőben: az éles fájlokat kell módosítani.

