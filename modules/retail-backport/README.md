# Retail Backport — CoA 3.3.5a

**Estado:** módulo existente probado y funcionando en el CoA del mantenedor. Los archivos binarios se publicarán en un Release cuando se adjunte el paquete exacto validado y sus hashes.

Este módulo reúne MPQ con recursos de objetos/equipo Retail adaptados al cliente WoW 3.3.5a. El conjunto de parches existente fue corregido por Claude y el mantenedor confirma que funciona en su instalación de CoA.

## IDs de objetos

Los objetos personalizados de este módulo usan IDs de entrada propios del servidor, a partir del rango **900000 en adelante**. No debe asumirse que el ID de Wowhead sea el mismo que se usa con `.additem`.

- La consulta de la base de datos mostró 1000 entradas dentro de `900000–900999`; eso no demuestra por sí solo que todas pertenezcan al módulo.
- La lista completa y definitiva de IDs y su correspondencia con displays debe acompañar al paquete a partir del mapa de asignaciones real.
- No se inventa una lista completa de IDs: debe extraerse del mapa existente para evitar publicar IDs incorrectos.

## Archivos MPQ

El mapa de renombrado aplicado al conjunto de parches es:

| Nombre de origen | Nombre instalado |
|---|---|
| `patch-GA.MPQ` | `patch-NAA.MPQ` |
| `patch-GB.MPQ` | `patch-NAB.MPQ` |
| `patch-GC.MPQ` | `patch-NAC.MPQ` |
| `patch-GD.MPQ` | `patch-NAD.MPQ` |
| `patch-GE.MPQ` | `patch-NAE.MPQ` |
| `patch-GF.MPQ` | `patch-NAF.MPQ` |
| `patch-GG.MPQ` | `patch-NAG.MPQ` |
| `patch-GH.MPQ` | `patch-NAH.MPQ` |
| `patch-GI.MPQ` | `patch-NAI.MPQ` |

Los MPQ son archivos binarios grandes y no están incluidos directamente en Git. El Release debe contener el paquete exacto validado y hashes SHA-256. No descargues ni uses paquetes de fuentes no verificadas.

## Instalación

1. Cierra completamente el cliente WoW y el launcher.
2. Descarga y extrae el paquete del Release correspondiente a esta versión.
3. Comprueba que estén presentes los nueve MPQ `patch-NAA.MPQ` a `patch-NAI.MPQ`.
4. Ejecuta PowerShell desde la carpeta donde hayas extraído el paquete y el script de instalación.
5. Indica la carpeta `Data` del cliente y la carpeta que contiene los MPQ:

   ```powershell
   .\install.ps1 -ClientData 'C:\Ruta\World of Warcraft 3.3.5a\Data' -PackageDirectory 'C:\Ruta\Paquete'
   ```

6. Cuando el script solicite confirmación, escribe exactamente `INSTALAR`.
7. Inicia CoA y prueba los objetos con sus IDs de servidor documentados.
8. Si aparecen problemas en otra instalación, cierra el cliente y retira únicamente los MPQ de este módulo.

El instalador no sobrescribe archivos MPQ de destino existentes: si alguno ya existe, se detiene para evitar reemplazarlo. No copies los MPQ a la carpeta del servidor ni a `Work/build`.

**Importante:** los MPQ no añaden por sí solos registros de objetos a la base de datos del servidor. La guía del paquete final debe incluir también los datos de servidor/DBC necesarios y los IDs correspondientes. No asumas que los IDs de Wowhead funcionan con `.additem`.

## Estado y pruebas

- Conversión/empaquetado: completados según los registros del proyecto.
- El mantenedor confirma que el conjunto de parches existente funciona en su instalación de CoA tras las correcciones de Claude.
- Build registrado: 17.621 displays procesados.
- La auditoría automatizada tuvo incidencias de placement; ese resultado no debe confundirse con la prueba funcional del conjunto de parches ya corregido.
- Para reproducibilidad, el Release debe registrar cliente/build probado, ejemplos de objetos probados, hashes SHA-256 y los archivos exactos que se distribuyen.

## Registro para el Release

Antes de publicar el paquete:
- versión/commit de la herramienta de conversión;
- fecha de generación;
- SHA-256 de cada MPQ;
- lista definitiva de IDs de objetos y su correspondencia con displays;
- cliente/build usado para probar;
- objetos probados y resultados;
- fallos conocidos.

---
Proyecto comunitario no oficial. World of Warcraft y sus recursos pertenecen a sus respectivos titulares.
