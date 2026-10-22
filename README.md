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
- Que un recurso se convierta o se incluya en un MPQ no garantiza por sí solo que se vea o funcione correctamente en el juego.
- El módulo publicado fue probado correctamente en el cliente objetivo; las limitaciones de compatibilidad específicas de cada instalación siguen siendo posibles.

- Retail and WotLK use different formats and systems; some assets may need further adaptation or may be incompatible.
- Conversion or inclusion in an MPQ alone does not guarantee correct rendering or in-game behavior.
- The published module was successfully tested in the target client; installation-specific compatibility limitations may still apply.

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

**Estado actualizado al 22 de octubre de 2026 / Status updated 22 October 2026**

- **Objetos/equipo / Items and gear:** módulo Retail → WotLK completado y probado correctamente en el cliente objetivo. El módulo se considera funcional según las pruebas realizadas.
- **Items and gear:** the Retail → WotLK module is complete and was successfully tested in the target client. The module is considered working based on the tests performed.
- **Empaquetado MPQ / MPQ packaging:** completado. La herramienta confirmó que la lectura posterior coincidía con los archivos empaquetados (*read-back identical*).
- **MPQ packaging:** completed. The tool confirmed that the read-back matched the packaged files (*read-back identical*).
- **Validación en juego / In-game validation:** completada satisfactoriamente para el módulo de objetos/equipo.
- **In-game validation:** successfully completed for the items and gear module.
- **Estado del módulo / Module status:** terminado, probado y funcional. No es necesario repetir su conversión ni su empaquetado.

El módulo de objetos/equipo queda cerrado como trabajo completado. Las tareas futuras deben centrarse en otros contenidos y sistemas jugables, sin reconstruir ni modificar este módulo.

The items and gear module is closed as completed work. Future tasks should focus on other content and gameplay systems, without rebuilding or modifying this module.

---

## Criterios de validación / Validation criteria

El proyecto distingue entre:
1. **Convertido / Converted:** se generó un recurso o paquete.
2. **Auditado / Audited:** se ejecutaron las comprobaciones técnicas pertinentes y se registraron sus resultados.
3. **Validado en juego / In-game validated:** se probó en el cliente objetivo.
4. **Funcional / Working:** el comportamiento esperado se confirmó en las condiciones documentadas.

Estas categorías no son equivalentes. El módulo de objetos/equipo completó el empaquetado y las pruebas en juego; su estado es **terminado y funcional**. Para el resto del contenido, el estado debe registrarse según las pruebas realmente realizadas.

These categories are not equivalent. The items and gear module completed packaging and in-game testing; its status is **completed and working**. For all other content, status must reflect the tests actually performed.

---

## Alcance y contribuciones / Scope and contributions

El proyecto busca ampliar el contenido jugable de CoA sin descartar automáticamente contenido por su antigüedad o procedencia. Las contribuciones deben indicar qué se modificó, los requisitos, las limitaciones conocidas y qué pruebas se realizaron.

The project aims to expand playable CoA content without automatically excluding assets because of their age or origin. Contributions should document what changed, requirements, known limitations, and tests performed.

**Nota / Note:** World of Warcraft y sus marcas y recursos pertenecen a sus respectivos titulares. Este es un proyecto comunitario no oficial y no afiliado a Blizzard Entertainment.

World of Warcraft and its trademarks and assets belong to their respective owners. This is an unofficial community project and is not affiliated with Blizzard Entertainment.

## Módulo Retail Backport

Guía de instalación, script PowerShell y estado de validación del módulo de objetos/equipo:
[modules/retail-backport/README.md](modules/retail-backport/README.md).

El instalador está en [modules/retail-backport/install.ps1](modules/retail-backport/install.ps1). Los MPQ no están incluidos en Git debido a su gran tamaño; consulta la guía para su distribución y validación.
