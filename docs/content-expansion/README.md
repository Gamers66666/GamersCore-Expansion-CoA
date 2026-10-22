# CoA Content Expansion Inventory / Inventario de expansión de contenido CoA

**Status / Estado:** initial research baseline, not an implementation claim / base inicial de investigación, no afirma que esté implementado.  
**Target / Objetivo:** CoA on WoW 3.3.5a build 12340.  
**Scope / Alcance:** maps and zones, quests and campaigns, expansion systems. The completed object/gear work is out of scope.

## 1. Findings verified so far / Hallazgos verificados

### Client-side maps / Mapas del cliente
- **WarcraftXL core** provides a runtime extension framework for the 3.3.5a build 12340 client and exposes asset contracts for ADT, WMO, M2, WDT and WDL. It is a client framework, not a replacement for server world data.
- **wxl-modern-adt** says it loads split modern terrain tiles (root/texture/object), handles terrain layers, holes, placements and liquid normalization, and requires WarcraftXL on build 12340.
- **wxl-modern-wmo** says it loads newer WMO world objects and modern materials through a tag-driven reader.
- **wxl-modern-m2** loads newer M2 models. It may be a dependency for modern map placements, but does not by itself provide complete zones or server support.
- These modules do **not** by themselves prove a whole expansion zone is playable. Map tiles, WDT/WDL, textures, placements, minimap/area data, world database records, collision and navigation must be checked as a set.

### Server-side world / Mundo del servidor
A playable zone needs more than client files. The target core and its exact schema must be identified before preparing SQL or server data. Inspect whether the project has compatible world-map/area/teleport records and the required maps, vmaps, and mmaps data. Do not import data generated for another core/version without a schema and runtime check.

### Quests and campaigns / Misiones y campañas
A quest port can require quest records, objective/item/creature/gameobject templates, spawns, gossip/dialogue, conditions, scripts, rewards, phase/scene behavior and prerequisites. Modern DB2 tables are not drop-in replacements for WotLK DBC/world tables. Inventory these dependencies per quest chain before importing anything.

### Expansion systems / Sistemas de expansiones
Classify each candidate as:
1. client-only (assets/UI),
2. server-only (scripts/data),
3. client + server,
4. dependent on missing 3.3.5a engine capabilities.
Do not label a system playable until the required client, core, database and UI work is tested together.

## 2. Initial module map / Mapa inicial de módulos

| Area / Área | Candidate / Candidato | What it may solve / Qué puede resolver | Still required / Pendiente |
|---|---|---|---|
| Terrain / Terreno | [wxl-modern-adt](https://github.com/WarcraftXL/wxl-modern-adt) | Reads split modern ADT tiles at runtime | Test real zone file set; WDT/WDL, textures, placements, collision, server data |
| World buildings / Edificios | [wxl-modern-wmo](https://github.com/WarcraftXL/wxl-modern-wmo) | Reads modern WMO structures/materials | Test assets and dependencies in the target client |
| Models / Modelos | [wxl-modern-m2](https://github.com/WarcraftXL/wxl-modern-m2) | Reads modern M2 assets | Test terrain doodads, creatures and zone props; not a map importer |
| Modern data tables / Tablas modernas | [wxl-db2](https://github.com/WarcraftXL/wxl-db2) | Reads modern DB2 tables at runtime | Determine whether any needed data can be exposed safely to CoA; does not migrate server schemas |
| Server world / Mundo del servidor | Core-specific database and map data | Spawns, navigation, collision, zone/area logic | Identify core/version and schema; audit map/vmap/mmap availability |
| Quests / Misiones | Core-specific world DB, DBC and scripts | Quest flow and rewards | Build dependency inventory per chain; adapt scripts and old client UI |
| Systems / Sistemas | One module per feature | Feature-specific client/server behavior | Feasibility review and acceptance test for each feature |

## 3. Implementation order / Orden de trabajo

1. **Identify target server core and schema** from the repository/configuration; do not guess.
2. **Inventory existing map content**: map IDs and names, client assets (WDT/WDL/ADT/WMO/M2/BLP), world DB entries, and server maps/vmaps/mmaps. Mark each dependency present/missing/unknown.
3. **Choose one small representative zone** and establish a full client + server test before scaling out.
4. **Inventory quest chains for that zone** and list every referenced creature, gameobject, item, spell, script, condition and prerequisite.
5. **Create a system feasibility matrix** ordered by value and dependency cost; prioritize reusable systems and preserve existing CoA custom behavior.
6. Keep each item in one of these states: **discovered → dependencies mapped → adapted → technically audited → tested in game → working**.

## 4. Rules / Reglas
- Do not redo the completed items/gear scope.
- Do not overwrite client MPQs or import server SQL as part of this inventory.
- Do not publish a feature as working without in-game validation.
- Keep this documentation bilingual and record evidence, missing dependencies and test results.
- The present document is a research baseline; the exact core/schema and the actual local content inventory still need verification.

## Sources / Fuentes
- [CoA project](https://github.com/Gamers66666/GamersCore-Expansion-CoA)
- [WarcraftXL core](https://github.com/WarcraftXL/wxl-core)
- [Modern ADT](https://github.com/WarcraftXL/wxl-modern-adt)
- [Modern WMO](https://github.com/WarcraftXL/wxl-modern-wmo)
- [Modern M2](https://github.com/WarcraftXL/wxl-modern-m2)
- [Modern DB2](https://github.com/WarcraftXL/wxl-db2)

---

# Español

## 1. Hallazgos comprobados hasta ahora

### Mapas del cliente
- **WarcraftXL core** es un framework de extensiones en tiempo de ejecución para el cliente 3.3.5a build 12340 y expone contratos de lectura para ADT, WMO, M2, WDT y WDL. Es una capa del cliente, no sustituye los datos del mundo del servidor.
- **wxl-modern-adt** declara que carga terrenos modernos divididos en archivos root/texture/object, gestiona capas del terreno, agujeros, colocaciones y normalización del agua. Requiere WarcraftXL en build 12340.
- **wxl-modern-wmo** declara que carga edificios/estructuras WMO modernos y sus materiales.
- **wxl-modern-m2** carga modelos M2 modernos. Puede ser una dependencia para objetos colocados en mapas, pero no proporciona por sí solo zonas completas ni soporte del servidor.
- Estos módulos **no demuestran por sí solos que una zona completa sea jugable**. Hay que comprobar en conjunto tiles, WDT/WDL, texturas, colocaciones, minimapa/datos de área, datos de mundo, colisiones y navegación.

### Mundo del servidor
Una zona jugable necesita más que archivos del cliente. Primero hay que identificar el core objetivo y su esquema exacto. Después comprobar registros compatibles de mapas/áreas/teletransporte y la disponibilidad de datos maps, vmaps y mmaps. No importar datos de otro core o versión sin revisar el esquema y probarlos.

### Misiones y campañas
Adaptar una misión puede exigir registros de misión, objetivos, plantillas de objetos/criaturas/gameobjects, spawns, diálogos, condiciones, scripts, recompensas, fases/escenas y prerrequisitos. Las tablas DB2 modernas no reemplazan directamente las DBC/tablas de mundo de WotLK. Hay que inventariar las dependencias de cada cadena antes de importar.

### Sistemas de expansiones
Clasificar cada sistema como: (1) solo cliente, (2) solo servidor, (3) cliente y servidor, o (4) dependiente de capacidades del motor que no existen en 3.3.5a. No marcar un sistema como jugable hasta probar conjuntamente cliente, core, base de datos e interfaz.

## 2. Orden de implementación
1. Identificar core y esquema del servidor desde el repositorio/configuración, sin adivinar.
2. Inventariar mapas existentes: IDs/nombres, archivos de cliente (WDT/WDL/ADT/WMO/M2/BLP), registros de base de datos y datos de servidor maps/vmaps/mmaps. Marcar cada dependencia presente/faltante/desconocida.
3. Elegir una zona representativa pequeña y probar cliente + servidor antes de ampliar.
4. Inventariar cadenas de misiones de esa zona y cada criatura, gameobject, objeto, hechizo, script, condición y prerrequisito requerido.
5. Crear una matriz de viabilidad de sistemas ordenada por valor y coste de dependencias, preservando los sistemas personalizados de CoA.
6. Estados de cada trabajo: **detectado → dependencias identificadas → adaptado → auditado técnicamente → probado en juego → funcional**.

## 3. Reglas
- No rehacer el alcance de objetos/equipo ya terminado.
- Este inventario no modifica MPQ del cliente ni importa SQL del servidor.
- No publicar una función como funcional sin validarla dentro del juego.
- Mantener la documentación bilingüe y registrar evidencia, dependencias faltantes y resultados.
- Este documento es una base de investigación: todavía falta verificar el core/esquema exacto y el inventario real del contenido local.
