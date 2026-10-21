# Retail Backport — CoA 3.3.5a

**Estado:** paquete generado; validación en juego pendiente.

Este módulo reúne MPQ con recursos de objetos/equipo Retail adaptados al cliente WoW 3.3.5a. La conversión y el empaquetado no garantizan que todos los recursos se rendericen correctamente.

## IDs de objetos

Los objetos personalizados de este módulo usan IDs de entrada propios del servidor, a partir del rango **900000 en adelante**. No debe asumirse que el ID de Wowhead sea el mismo que se usa con `.additem`.

- El rango `900000–900999` contiene 1000 entradas en la base de datos consultada; eso no demuestra por sí solo que todas pertenezcan al módulo.
- La lista completa y definitiva de IDs debe generarse a partir del mapa de asignaciones del módulo que se distribuye.
- Hasta publicar ese mapa verificado, no se presenta aquí una lista completa ni se garantiza que cada objeto esté disponible en el servidor.

## Archivos MPQ

Los nombres finales del conjunto renombrado son:

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

Los MPQ son archivos binarios grandes y no están incluidos directamente en Git. El paquete descargable y sus hashes SHA-256 deben adjuntarse a un GitHub Release una vez validado el módulo. No descargues ni uses paquetes de fuentes no verificadas.

## Instalación

1. Cierra completamente el cliente WoW y el launcher.
2. Descarga y extrae el paquete completo del Release correspondiente a esta versión.
3. Comprueba que estén presentes los nueve MPQ `patch-NAA.MPQ` a `patch-NAI.MPQ`.
4. Ejecuta PowerShell desde la carpeta donde hayas extraído el paquete y el script de instalación.
5. Lanza el instalador indicando la carpeta `Data` del cliente y la carpeta que contiene los MPQ:

   ```powershell
   .\install.ps1 -ClientData 'C:\Ruta\World of Warcraft 3.3.5a\Data' -PackageDirectory 'C:\Ruta\Paquete'
   ```

6. Cuando el script solicite confirmación, escribe exactamente `INSTALAR`.
7. Inicia el cliente y prueba los objetos de la lista de validación cuando se publique.
8. Si el cliente falla, faltan texturas o aparecen modelos invisibles, cierra el cliente y retira únicamente los MPQ de este módulo.

El instalador no sobrescribe archivos MPQ de destino existentes: si alguno ya existe, se detiene para evitar reemplazarlo. No copies los MPQ a la carpeta del servidor ni a `Work/build`.

**Importante:** los MPQ por sí solos no añaden necesariamente los registros de objetos a la base de datos del servidor. La instalación de datos de servidor/DBC debe seguir las instrucciones específicas del paquete validado; no ejecutes SQL desconocido ni asumas que los IDs de Wowhead funcionan con `.additem`.

## Estado de validación

- Conversión/empaquetado: completados según los registros del proyecto.
- Build: se procesaron 17.621 displays.
- Auditoría técnica: no aprobada por completo; quedan incidencias de placement.
- Prueba dentro del cliente: pendiente.
- Prueba de los IDs en la base de datos del servidor: pendiente de documentar.
- Release público: no publicado hasta completar las pruebas.

Las categorías son distintas: **generado**, **empaquetado**, **auditado** y **validado en juego**. No se afirma compatibilidad total.

## Registro para el Release

Antes de publicar, registrar:
- commit/versión de la herramienta de conversión;
- fecha de generación;
- SHA-256 de cada MPQ;
- lista definitiva de IDs de objetos y su correspondencia con displays;
- cliente/build usados para probar;
- objetos probados y resultados;
- fallos conocidos.

---
Proyecto comunitario no oficial. World of Warcraft y sus recursos pertenecen a sus respectivos titulares.
