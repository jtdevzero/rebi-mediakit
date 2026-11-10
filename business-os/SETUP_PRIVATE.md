# REBI Business OS — privát Supabase integráció

## Mi készült el?
A GitHub Pages alatt továbbra is a publikus HTML alkalmazás fut. Az új verzióhoz hozzáadtunk egy **opcionális Supabase Auth + adatbázis** csatlakozást, egy SQL migrációt és egy konfigurációs fájlt. Ha még nincs projekt konfigurálva, a rendszer kizárólag **helyi bemutató módban** működik. Ez NEM privát, felhőben tárolt CRM.

## Beüzemelés
1. Hozz létre saját Supabase projektet. Ne illessz be service_role vagy secret kulcsot a GitHub repositoryba.
2. SQL Editorban futtasd a `business-os/supabase/schema.sql` fájlt.
3. Supabase Authentication alatt állíts be e-mail OTP / magic link belépést, **kapcsold ki a nyilvános regisztrációt** és engedélyezd a saját felhasználódat. Ha a regisztráció le van tiltva, előbb meghívással vagy admin oldalon kell létrehozni a felhasználót.
4. Auth URL Configuration: engedélyezett redirect URL: `https://jtdevzero.github.io/rebi-mediakit/business-os/`.
5. A `business-os/config.js` fájlban állítsd be a Supabase **Project URL** és **anon/publishable** kulcsot. Ezek kliensoldali kulcsok, nem helyettesítik az RLS-t. Ne használd a secret/service_role kulcsot.
6. Nyisd meg az oldalt, jelentkezz be e-maillel, majd importáld a JSON biztonsági mentést a Beállítások menüpontban. Az import előtt őrizd meg az eredeti mentést.
7. Végeztesd el a hozzáférés-tesztet: kijelentkezve ne lehessen rekordot lekérni; másik, nem engedélyezett felhasználó ne érje el a privát munkaterületet.

## Adatbiztonsági korlátok
- A GitHub repository **nyilvános**: ne commitolj kapcsolattartói személyes adatokat, ajánlatokat, CRM exportot, szerződéseket vagy API-kulcsokat.
- A helyi demó a saját böngésző localStorage-ját használja; nem valódi belépésvédelem. A böngésző korábbi változataiból származó localStorage adatokat a projekt átállítása nem törli automatikusan.
- A Supabase táblában egy felhasználó egy JSON-dokumentumként tárolja a CRM rekordokat. Ez egyfelhasználós használatra alkalmas egyszerű MVP, nem tranzakciós/sokfelhasználós CRM architektúra.
- A HTML-ben **nincs** automatikus név- és e-mail-kutatás, igazi generatív AI, automatikus e-mail-küldés vagy háttérértesítés. Ezek külön backend/integrációt igényelnek.
- Személyes kapcsolattartói adatokat csak megfelelő céllal, jogalappal, adatminimalizálással és hozzáférésvédelemmel tárolj.

## Következő műszaki tesztek
Élesítés előtt manuális böngészős teszt kell: OTP belépés, kijelentkezés, import, szerkesztés, frissítés utáni adatmegőrzés, megszakadt hálózati kapcsolat és RLS-megkerülési próba.
