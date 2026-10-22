# CoA — 17,000+ converted items / Más de 17.000 objetos convertidos

[English](#english) | [Español](#español)

## English

This is a client-side item display module for the compatible CoA 3.3.5a client. The MPQs contain client data; they do **not** create the corresponding server-side items by themselves. The client files and server SQL must come from the **same release** and use matching entry IDs.

### Before installing

- Close the game and launcher.
- Use the exact client/core/database combination supported by this release. This package includes item tables derived from the maintainer's client and may replace Item.dbc / ItemDisplayInfo.dbc data from another client build or another CoA patch set. It is **not a safe universal overlay** for arbitrary clients.
- Do not mix MPQs or SQL from different releases.
- Check the client's Data folder for later-loading patches that also contain Item.dbc or ItemDisplayInfo.dbc. A later patch can override these tables; renaming files at random is not a reliable fix. Keep the supplied MPQ names and use a compatible, documented patch order.

### Installation

1. Close the game and launcher completely.
2. Download all eight MPQs from this release. Do not mix them with files from another version.
3. Copy patch-NAA.MPQ through patch-NAH.MPQ into the compatible client's Data folder, keeping their exact names.
4. If a file with the same name already exists, **stop and resolve the conflict first**. Do not blindly overwrite unrelated CoA patches.
5. After installing the matching files, delete the client's Cache folder while the game is closed. The client will recreate it. This clears stale cached data; it does not fix mismatched MPQs, SQL, or table overrides.
6. Start the game and test several items. If an item still appears as ?, verify the matching server SQL is installed, the server has the corresponding item_template entry, and no later-loaded patch overrides the item tables.

### Server SQL (required for server-side item entries)

The release's item_template.sql is for the server administrator and must match these MPQs exactly. It is not automatically imported. Inspect it and confirm compatibility with your core/schema before importing it into the correct world database. Without matching server entries, client MPQs alone cannot make those items exist on the server. Never combine an SQL file from a different release.

### Troubleshooting ? items

- Clear Cache with the client closed, then relaunch.
- Confirm all eight MPQs and the SQL are from the same release.
- Confirm the server's item_template contains the requested entry ID.
- Check whether another patch loaded later contains Item.dbc or ItemDisplayInfo.dbc.
- If the problem persists, collect the client build, the list of MPQ filenames, the item entry ID, and whether the server SQL was applied.

### Credits

- **CoA server creators and development team** — original server project and community.
- **Gamers66666** — integration, packaging, and documentation for this CoA module.

Unofficial community package. Original resources remain subject to their respective creators' and rights holders' terms.

## Español

Este módulo modifica la visualización de objetos del cliente CoA 3.3.5a compatible. Los MPQ contienen datos del cliente: **no crean por sí solos los objetos en el servidor**. Los archivos del cliente y el SQL del servidor deben proceder de la **misma versión** y utilizar IDs coincidentes.

### Antes de instalar

- Cierra completamente el juego y el launcher.
- Usa la combinación exacta de cliente/core/base de datos compatible con esta versión. Este paquete incluye tablas de objetos derivadas del cliente del responsable y puede sustituir datos de Item.dbc / ItemDisplayInfo.dbc de otra compilación o de otro conjunto de parches de CoA. **No es una superposición universal y segura** para cualquier cliente.
- No mezcles MPQ ni SQL de versiones diferentes.
- Comprueba si en Data hay parches que carguen después y también contengan Item.dbc o ItemDisplayInfo.dbc. Un parche posterior puede sobrescribir estas tablas; cambiar nombres al azar no es una solución fiable. Conserva los nombres MPQ incluidos y utiliza un orden de parches compatible y documentado.

### Instalación

1. Cierra completamente el juego y el launcher.
2. Descarga los ocho MPQ de esta misma versión. No mezcles archivos de otras versiones.
3. Copia patch-NAA.MPQ a patch-NAH.MPQ en la carpeta Data del cliente compatible, conservando sus nombres exactos.
4. Si ya existe un archivo con el mismo nombre, **detente y resuelve el conflicto primero**. No sobrescribas a ciegas parches de CoA que no pertenezcan a este paquete.
5. Después de instalar los archivos correspondientes, elimina la carpeta Cache con el juego cerrado. El cliente la recreará. Esto limpia datos obsoletos en caché; no corrige MPQ/SQL incompatibles ni tablas sobrescritas por otro parche.
6. Abre el juego y prueba varios objetos. Si alguno sigue apareciendo como ?, comprueba que el SQL de servidor correspondiente esté instalado, que exista la entrada en item_template y que ningún parche cargado después sobrescriba las tablas de objetos.

### SQL del servidor (necesario para las entradas de objetos)

El archivo item_template.sql de esta versión está destinado al administrador del servidor y debe coincidir exactamente con estos MPQ. No se importa automáticamente. Revísalo y confirma que sea compatible con el core/esquema antes de importarlo en la base de datos world correcta. Los MPQ por sí solos no crean las entradas del servidor. Nunca combines un SQL de otra versión.

### Solución de objetos que aparecen como ?

- Borra Cache con el cliente cerrado y vuelve a iniciar.
- Confirma que los ocho MPQ y el SQL procedan de la misma versión.
- Comprueba que item_template del servidor contenga el ID solicitado.
- Comprueba si otro parche cargado después contiene Item.dbc o ItemDisplayInfo.dbc.
- Si continúa el problema, recopila la compilación del cliente, los nombres de los MPQ instalados, el ID del objeto y si se aplicó el SQL del servidor.

### Créditos

- **Creadores y equipo de desarrollo del servidor CoA** — proyecto original del servidor y comunidad.
- **Gamers66666** — integración, empaquetado y documentación de este módulo para CoA.

Paquete comunitario no oficial. Los recursos originales siguen sujetos a los términos de sus respectivos creadores y titulares de derechos.


## Corrected standalone installation guide / Guía de instalación corregida

- English and Spanish: [INSTALL.txt](INSTALL.txt)
- The guide explains cache cleanup, MPQ/SQL version matching, table overrides, and troubleshooting items displayed as `?`.
