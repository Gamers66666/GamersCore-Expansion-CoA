# Retail Backport — CoA 3.3.5a

**Estado:** paquete generado; validación en juego pendiente.

Este módulo reúne los MPQ generados por la herramienta Retail Backport para adaptar recursos de objetos/equipo Retail al cliente WoW 3.3.5a. La conversión y el empaquetado no garantizan que todos los recursos se rendericen correctamente.

## Archivos del módulo

Los paquetes generados localmente se encuentran en `Work/out` del proyecto de conversión:

- `patch-0.MPQ`
- `patch-1.MPQ`
- `patch-6.MPQ`
- `patch-7.MPQ`
- `patch-8.MPQ`
- `patch-9.MPQ`
- `patch-D.MPQ`
- `patch-GAM.MPQ`

Los MPQ son artefactos binarios grandes y **no están incluidos en este repositorio**. Deben distribuirse por un medio de releases/almacenamiento apropiado y acompañarse de hashes SHA-256. No descargues ni uses archivos MPQ de fuentes no verificadas.

## Instalación manual

1. Usa una instalación limpia y compatible de WoW 3.3.5a. El cliente no se distribuye con este repositorio.
2. Cierra el cliente y el launcher.
3. Descarga todos los MPQ del paquete publicado para esta versión.
4. Copia los MPQ sin cambiar sus nombres a la carpeta `Data` del cliente objetivo.
5. Inicia el cliente y prueba los objetos de la lista de validación.
6. Si el cliente falla, faltan texturas o aparecen modelos invisibles, retira los MPQ de este módulo y vuelve a probar.

No copies estos archivos en la carpeta del servidor ni en `Work/build`. No sobrescribas otros archivos MPQ existentes sin comprobar antes el orden de carga del cliente.

## Estado de calidad conocido

- Build: se procesaron 17.621 displays.
- Tables, pack y sheet: completados según el estado comunicado durante el proyecto.
- Audit: quedan fallos de placement; por tanto, no se considera aprobado al 100 %.
- Prueba dentro del cliente: pendiente.

Las categorías de estado son distintas: **generado**, **empaquetado**, **auditado** y **validado en juego**. Este módulo solo puede describirse como generado y empaquetado; no se afirma compatibilidad total.

## Reconstrucción

La herramienta de conversión se mantiene en el repositorio separado `wow-retail-backport`. Sigue las instrucciones de ese proyecto para reconstruir los MPQ; coloca los artefactos resultantes en `Work/out`. Antes de publicar una nueva versión, calcula y registra los SHA-256 de cada MPQ y documenta las pruebas realizadas.

## Registro de pruebas

Al publicar una versión, añadir aquí:
- versión/commit de la herramienta de conversión;
- fecha de generación;
- SHA-256 de cada MPQ;
- cliente y build usados para probar;
- objetos probados y resultados;
- fallos conocidos.

---
Proyecto comunitario no oficial. World of Warcraft y sus recursos pertenecen a sus respectivos titulares.
