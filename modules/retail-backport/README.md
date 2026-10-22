# CoA — 17,000+ Converted Items

> **English:** 17,000+ converted items for CoA, distributed as eight MPQ files and optional SQL data.  
> **Español:** Más de 17.000 objetos convertidos para CoA, distribuidos en ocho archivos MPQ y datos SQL opcionales.

This package contains converted item/model resources for the CoA client. The eight-MPQ configuration has been tested by the package maintainer in the target client, but not every item has been individually tested or is guaranteed to display perfectly on every setup.

Este paquete contiene recursos de objetos y modelos convertidos para el cliente CoA. El responsable del paquete ha probado la configuración de ocho MPQ en el cliente de destino, pero no se ha probado cada objeto individualmente ni se garantiza que todos se muestren perfectamente en cualquier instalación.

## Contents / Contenido

Download **all eight MPQ files from the same release**. The release also includes:
- `item_template.sql` — optional server database data / datos opcionales para la base de datos del servidor.
- `INSTALL.txt` — quick bilingual instructions / instrucciones breves en ambos idiomas.
- `SHA256SUMS.txt` — SHA-256 integrity hashes / hashes SHA-256 para verificar la integridad.

Do not mix files from different releases. / No mezcles archivos de versiones diferentes.

## Installation — English

1. Close the game client and launcher.
2. Download the eight MPQ files from the same release and put them in a temporary folder.
3. Open the target client's `Data` directory.
4. Copy and rename the files exactly as shown in the table below. Do not rename or replace any other MPQ.
5. If a destination filename already exists, stop and resolve the conflict manually; do not overwrite it blindly.
6. The SQL file is optional and is **not** required just to install the client-side MPQ files. If you need the database records, inspect the SQL and confirm compatibility with your server/database before importing it. Do not import it blindly or into the wrong database.
7. Start the client and test. If you need to uninstall the package, remove only the eight destination files listed in the table, and only if they are the files you added for this package.

## Instalación — Español

1. Cierra el cliente del juego y el launcher.
2. Descarga los ocho MPQ de una misma versión y colócalos en una carpeta temporal.
3. Abre la carpeta `Data` del cliente de destino.
4. Copia y renombra los archivos exactamente como indica la tabla. No renombres ni reemplaces ningún otro MPQ.
5. Si ya existe un archivo con el nombre de destino, detente y resuelve el conflicto manualmente; no lo sobrescribas a ciegas.
6. El SQL es opcional y **no es necesario** para instalar únicamente los MPQ del cliente. Si necesitas los registros de base de datos, revisa el SQL y confirma que sea compatible con tu servidor/base de datos antes de importarlo. No lo importes a ciegas ni en una base de datos incorrecta.
7. Inicia el cliente y prueba. Para desinstalar el paquete, elimina únicamente los ocho archivos de destino de la tabla, y solo si son los archivos que añadiste con este paquete.

## MPQ filename mapping / Correspondencia de nombres

| Release file / Archivo de descarga | Client `Data` filename / Nombre en `Data` |
|---|---|
| `patch-1.MPQ` | `patch-NAA.MPQ` |
| `patch-GAM.MPQ` | `patch-NAB.MPQ` |
| `patch-6.MPQ` | `patch-NAC.MPQ` |
| `patch-7.MPQ` | `patch-NAD.MPQ` |
| `patch-8.MPQ` | `patch-NAE.MPQ` |
| `patch-9.MPQ` | `patch-NAF.MPQ` |
| `patch-D.MPQ` | `patch-NAG.MPQ` |
| `patch-0.MPQ` | `patch-NAH.MPQ` |

**Important / Importante:** This mapping preserves the configuration tested by the package maintainer. Do not modify `patch-NAI.MPQ` or the client's Cache folder. / Esta correspondencia conserva la configuración probada por el responsable del paquete. No modifiques `patch-NAI.MPQ` ni la carpeta Cache del cliente.

## Credits / Créditos

- **Conversion tool / Herramienta de conversión:** [Kirazul — wow-retail-backport](https://github.com/Kirazul/wow-retail-backport).
- **CoA integration, package assembly and documentation / Integración para CoA, armado del paquete y documentación:** Gamers66666.
- The package contains 17,000+ item records and associated converted resources; this count does not mean every item was individually tested. / El paquete contiene más de 17.000 registros de objetos y recursos convertidos asociados; esta cifra no significa que se haya probado cada objeto individualmente.
- Unofficial community project. Original tools and assets remain subject to their respective creators' and rights holders' terms. / Proyecto comunitario no oficial. Las herramientas y recursos originales siguen sujetos a los términos de sus respectivos creadores y titulares de derechos.
