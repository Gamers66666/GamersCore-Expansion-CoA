# CoA — 17,000+ Converted Items

> **17,000+ items adapted for CoA. One community package, eight MPQ files, plus optional SQL data.**  
> **Más de 17.000 objetos adaptados para CoA. Un paquete comunitario, ocho archivos MPQ y datos SQL opcionales.**

This community package brings together converted item/model resources for the CoA client. The package maintainer reports that the eight-MPQ configuration has been tested in the target client. This does **not** mean every item has been individually tested or that every item is guaranteed to display perfectly on every client setup.

Este paquete comunitario reúne recursos de objetos y modelos convertidos para el cliente CoA. El responsable del paquete informa que la configuración de ocho MPQ fue probada en el cliente objetivo. Esto **no** significa que cada objeto se haya probado individualmente ni garantiza que todos se muestren perfectamente en cualquier instalación.

## Contents / Contenido

Download all assets from the same release / Descarga todos los archivos de una misma versión:

- `patch-0.MPQ`
- `patch-1.MPQ`
- `patch-6.MPQ`
- `patch-7.MPQ`
- `patch-8.MPQ`
- `patch-9.MPQ`
- `patch-D.MPQ`
- `patch-GAM.MPQ`
- `item_template.sql` — optional server database data / datos opcionales para la base de datos del servidor
- `install.ps1` — installer / instalador
- `INSTALL.txt` — quick instructions / instrucciones rápidas
- `SHA256SUMS.txt` — file integrity checks / comprobaciones de integridad

Do not mix files from different releases. / No mezcles archivos de versiones diferentes.

## Installation — English

1. Close the client and launcher.
2. Download all eight MPQ files from the same release and place them in one folder.
3. Run PowerShell from the folder containing `install.ps1` and provide the real client `Data` folder and package folder. Example:

   ```powershell
   .\install.ps1 -ClientData "C:\Path\To\Client\Data" -PackageDirectory "C:\Path\To\Downloaded\Package"
   ```

4. Verify the destination path. Type `INSTALL` only if it is correct.
5. The installer maps release filenames to the tested CoA client filenames. It stops if any destination file already exists and will not overwrite it.
6. The SQL file is **not** executed by the installer. Review it and apply it only to a compatible CoA world database after checking compatibility and existing records. Do not import it blindly.
7. Launch the client and test. If needed, remove only the eight files installed by this package, using the mapping below.

## Instalación — Español

1. Cierra el cliente y el launcher.
2. Descarga los ocho MPQ de una misma versión y colócalos en una sola carpeta.
3. Abre PowerShell en la carpeta donde está `install.ps1` e indica la carpeta `Data` real del cliente y la carpeta del paquete. Ejemplo:

   ```powershell
   .\install.ps1 -ClientData "C:\Ruta\Al\Cliente\Data" -PackageDirectory "C:\Ruta\Al\Paquete"
   ```

4. Comprueba la ruta de destino. Escribe `INSTALAR` únicamente si es correcta.
5. El instalador asigna a los archivos los nombres utilizados en el cliente CoA probado. Se detiene si ya existe algún archivo de destino y no sobrescribe nada.
6. El instalador **no ejecuta** el SQL. Revísalo y aplícalo únicamente a una base de datos world compatible de CoA, después de comprobar compatibilidad y registros existentes. No lo importes a ciegas.
7. Inicia el cliente y prueba. Si fuera necesario, elimina únicamente los ocho archivos instalados por este paquete, siguiendo la tabla.

## MPQ filename mapping / Correspondencia de nombres

| Release asset / Archivo de descarga | Client `Data` filename / Nombre en `Data` |
|---|---|
| `patch-1.MPQ` | `patch-NAA.MPQ` |
| `patch-GAM.MPQ` | `patch-NAB.MPQ` |
| `patch-6.MPQ` | `patch-NAC.MPQ` |
| `patch-7.MPQ` | `patch-NAD.MPQ` |
| `patch-8.MPQ` | `patch-NAE.MPQ` |
| `patch-9.MPQ` | `patch-NAF.MPQ` |
| `patch-D.MPQ` | `patch-NAG.MPQ` |
| `patch-0.MPQ` | `patch-NAH.MPQ` |

## Credits / Créditos

- **Original conversion-tool creator / Creador original de la herramienta de conversión:** credit belongs to the author of the conversion tool used to generate these resources. Preserve the tool's original attribution when redistributing it. The creator's name or project link should be added here once confirmed.
- **CoA integration, package assembly and documentation / Integración para CoA, armado del paquete y documentación:** Gamers66666.
- The package contains 17,000+ item records and associated converted resources. This count is not a claim that every item was individually tested.
- This is an unofficial community project. Original tools and assets remain the property of their respective creators and rights holders.
