# GamersCore — Expansión CoA
### WoW CoA 3.3.5a · Proyecto comunitario / Community project

**Español | English**

GamersCore — Expansión CoA es un proyecto comunitario para ampliar el contenido de World of Warcraft CoA, basado en el cliente WotLK 3.3.5a, mediante la adaptación de recursos de versiones posteriores de Retail. El objetivo es maximizar el contenido que pueda llegar a ser jugable, documentando las limitaciones y validando cada parte por separado.

GamersCore — CoA Expansion is a community project to expand World of Warcraft CoA, based on the WotLK 3.3.5a client, by adapting assets from later Retail versions. The goal is to maximize the content that can become playable while documenting limitations and validating each part separately.

---

## Alcances del proyecto / Project scopes

### Alcance 1 — Objetos y equipo: Shadowlands → Midnight
### Scope 1 — Items and gear: Shadowlands → Midnight

**Objetivo / Goal**
- Incorporar objetos y equipo que falten en CoA, dentro del intervalo previsto desde Shadowlands hasta Midnight.
- Adaptar modelos, texturas y recursos visuales de Retail para el cliente 3.3.5a.
- Distribuir los recursos convertidos en archivos MPQ compatibles con la instalación objetivo.

- Add missing items and gear within the planned Shadowlands-to-Midnight range.
- Adapt Retail models, textures, and visual assets for the 3.3.5a client.
- Package converted assets in MPQ files for the target installation.

**Límites / Limitations**
- Retail y WotLK usan formatos y sistemas distintos; algunos recursos pueden requerir adaptación adicional o no ser compatibles.
- Que un recurso se convierta o se incluya en un MPQ no garantiza que se vea o funcione correctamente en el juego.
- La cobertura real debe confirmarse mediante auditorías y pruebas dentro del cliente.

- Retail and WotLK use different formats and systems; some assets may need further adaptation or may be incompatible.
- Conversion or inclusion in an MPQ does not guarantee correct rendering or in-game behavior.
- Actual coverage must be confirmed through audits and in-client testing.

### Alcance 2 — Contenido y sistemas: WotLK → Midnight
### Scope 2 — Content and systems: WotLK → Midnight

**Objetivo / Goal**

Ampliar progresivamente el contenido que falta en CoA, evaluando e incorporando cuando sea viable:
- Monturas y mascotas / Mounts and pets
- Mapas y zonas / Maps and zones
- Misiones y campañas / Quests and campaigns
- Sistemas y funcionalidades de expansiones posteriores / Systems and features from later expansions

**Límites / Limitations**
- Este alcance es una meta progresiva; no significa que todo ese contenido esté implementado actualmente.
- El contenido puede necesitar datos adicionales, scripts, cambios de servidor, interfaz o desarrollo específico.
- Cada función debe evaluarse por separado; no se promete compatibilidad total con Retail.

- This is a progressive goal; it does not mean all this content is currently implemented.
- Content may require additional data, scripts, server changes, UI work, or custom development.
- Each feature must be assessed individually; full Retail compatibility is not promised.

---

## Estado del proyecto / Project status

**Estado conocido al 19 de octubre de 2026 / Known status as of 19 October 2026**

- **Objetos/equipo / Items and gear:** se ejecutó el empaquetado MPQ y la herramienta informó que la lectura de comprobación coincidía con los archivos empaquetados (*read-back identical*).
- **MPQ packaging:** the MPQ packaging step completed, and the tool reported that the read-back matched the packaged files (*read-back identical*).
- **Validación en juego / In-game validation:** pendiente; todavía no debe considerarse que los objetos estén plenamente validados.
- **Auditoría y presentación visual / Audit and visual review:** algunas comprobaciones de calidad no se han confirmado como superadas; el estado de la generación de hojas de vista previa (*sheet*) debe verificarse.
- **Preview sheets:** completion of the preview-sheet step (*sheet*) still needs to be verified.

Los paquetes generados son artefactos de trabajo y no deben considerarse una versión final o un lanzamiento validado hasta completar la revisión y las pruebas en juego.

The generated packages are work artifacts, not a final release or a validated release, until review and in-game testing are complete.

---

## Criterios de validación / Validation criteria

El proyecto distinguirá entre:
1. **Convertido / Converted:** se generó un recurso o paquete.
2. **Auditado / Audited:** se ejecutaron las comprobaciones técnicas pertinentes y se registraron sus resultados.
3. **Validado en juego / In-game validated:** se probó en el cliente objetivo.
4. **Funcional / Working:** el comportamiento esperado se confirmó en las condiciones documentadas.

Estas categorías no son equivalentes. No se marcará como funcional algo que solo se haya convertido o empaquetado.

These categories are not equivalent. An asset will not be marked as working merely because it was converted or packaged.

---

## Alcance y contribuciones / Scope and contributions

El proyecto busca ampliar el contenido jugable de CoA sin descartar automáticamente contenido por su antigüedad o procedencia. Las contribuciones deben indicar qué se modificó, los requisitos, las limitaciones conocidas y qué pruebas se realizaron.

The project aims to expand playable CoA content without automatically excluding assets because of their age or origin. Contributions should document what changed, requirements, known limitations, and tests performed.

**Nota / Note:** World of Warcraft y sus marcas y recursos pertenecen a sus respectivos titulares. Este es un proyecto comunitario no oficial y no afiliado a Blizzard Entertainment.

World of Warcraft and its trademarks and assets belong to their respective owners. This is an unofficial community project and is not affiliated with Blizzard Entertainment.

## Módulo Retail Backport

**Diagnóstico de objetos «?»:** las causas posibles incluyen caché obsoleta, SQL ausente o de otra versión, IDs que no coinciden y tablas `Item.dbc`/`ItemDisplayInfo.dbc` sobrescritas por un MPQ posterior. `patch-NAI.MPQ` no forma parte de los ocho archivos de la release v1.0.2. La versión actual no está validada para todas las combinaciones de cliente CoA/CoA Server Manager; el arreglo definitivo requiere integrar y probar las tablas para el cliente objetivo, no solo cambiar instrucciones.

**Aviso de compatibilidad:** la release `retail-backport-coa-v1.0.2` reemplaza tablas de objetos del cliente y no está validada como compatible con todas las instalaciones CoA/CoA Server Manager. No la instales encima de otros parches sin comprobar conflictos. El arreglo definitivo requiere reconstruir y probar las tablas para el cliente objetivo; limpiar Cache y aplicar el SQL no resuelven una tabla sobrescrita.

**Compatibility warning:** release `retail-backport-coa-v1.0.2` replaces client item tables and is not validated for every CoA/CoA Server Manager installation. Do not install it over other patches without checking conflicts. A definitive fix requires rebuilding and testing the tables for the target client; clearing Cache and applying SQL do not fix an overridden table.

Guía de instalación, script PowerShell y estado de validación del módulo de objetos/equipo:
[modules/retail-backport/README.md](modules/retail-backport/README.md).

El instalador está en [modules/retail-backport/install.ps1](modules/retail-backport/install.ps1). Los MPQ no están incluidos en Git debido a su gran tamaño; consulta la guía para su distribución y validación.
