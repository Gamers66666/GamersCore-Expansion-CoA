# Retail Backport for CoA — WoW 3.3.5a

> **17,000+ Retail item records — from Shadowlands through Midnight, brought to WoW 3.3.5a!**  
> **¡Más de 17.000 objetos de Retail — desde Shadowlands hasta Midnight, adaptados a WoW 3.3.5a!**

This community project packages Retail-derived item/model resources for the CoA WoW 3.3.5a client. The maintainer reports that this eight-MPQ package has been tested in the target game client. This does **not** mean every one of the 17,000+ items has been individually tested or that every item is guaranteed to render perfectly on every 3.3.5a client.

Este proyecto comunitario reúne recursos de objetos/modelos derivados de Retail para el cliente CoA de WoW 3.3.5a. El responsable del proyecto confirma que este paquete de ocho MPQ fue probado en el cliente objetivo. Esto **no** significa que cada uno de los más de 17.000 objetos se haya probado individualmente ni garantiza que todos se vean perfectamente en cualquier cliente 3.3.5a.

## Release contents / Contenido de la versión

The release package should contain these eight MPQ files and the SQL data file supplied with that release:

La descarga de la versión debe incluir estos ocho MPQ y el archivo SQL que acompaña a esa versión:

- `patch-0.MPQ`
- `patch-1.MPQ`
- `patch-6.MPQ`
- `patch-7.MPQ`
- `patch-8.MPQ`
- `patch-9.MPQ`
- `patch-D.MPQ`
- `patch-GAM.MPQ`
- `item_template.sql` (server database data / datos de base de datos del servidor)

Download all assets from the same release. Do not mix files from older drafts or releases.

Descarga todos los archivos de una misma versión. No mezcles archivos de borradores o versiones anteriores.

## Installation — English

1. Close the WoW client and launcher.
2. Download all eight MPQ files from the same GitHub Release and place them in one package folder.
3. In PowerShell, run the installer from this repository, providing the actual client `Data` folder and the package folder. Example:

   ```powershell
   .\install.ps1 -ClientData "C:\Path\To\WoW\Data" -PackageDirectory "C:\Path\To\Downloaded\Package"
   ```

4. Read the destination shown by the script. Type `INSTALL` only if it is the correct client `Data` folder.
5. The installer maps the release filenames to the tested client filenames. If any destination MPQ already exists, it stops without overwriting it. Do not rename the files manually unless you know your client's patch-loading order.
6. The SQL file is **not** executed by the MPQ installer. Review it and apply it only to a compatible CoA world database after checking the current database state. Do not blindly import it into an unrelated server.
7. Start the client and test. If you experience problems, close the client and remove only the eight files installed by this module, using the mapping in the installer.

## Instalación — Español

1. Cierra WoW y el launcher.
2. Descarga los ocho MPQ de una misma GitHub Release y colócalos en una única carpeta.
3. Abre PowerShell y ejecuta el instalador de este repositorio indicando la carpeta `Data` real del cliente y la carpeta del paquete. Ejemplo:

   ```powershell
   .\install.ps1 -ClientData "C:\Ruta\A\WoW\Data" -PackageDirectory "C:\Ruta\Al\Paquete"
   ```

4. Comprueba la ruta de destino que muestra el script. Escribe `INSTALAR` únicamente si es la carpeta `Data` correcta.
5. El instalador asigna a los MPQ los nombres usados en el cliente probado. Si ya existe alguno de los archivos de destino, se detiene sin sobrescribirlo. No cambies los nombres manualmente salvo que conozcas el orden de carga de parches de tu cliente.
6. El instalador de MPQ **no ejecuta** el SQL. Revísalo y aplícalo únicamente a una base de datos world compatible de CoA, después de comprobar su estado actual. No lo importes a ciegas en otro servidor.
7. Inicia el cliente y prueba. Si surge algún problema, cierra el cliente y retira solamente los ocho archivos instalados por este módulo, usando el mapeo indicado en el instalador.

## MPQ filename mapping / Correspondencia de nombres

| Release asset / Archivo de descarga | Client Data filename / Nombre en Data |
|---|---|
| `patch-1.MPQ` | `patch-NAA.MPQ` |
| `patch-GAM.MPQ` | `patch-NAB.MPQ` |
| `patch-6.MPQ` | `patch-NAC.MPQ` |
| `patch-7.MPQ` | `patch-NAD.MPQ` |
| `patch-8.MPQ` | `patch-NAE.MPQ` |
| `patch-9.MPQ` | `patch-NAF.MPQ` |
| `patch-D.MPQ` | `patch-NAG.MPQ` |
| `patch-0.MPQ` | `patch-NAH.MPQ` |

## Scope and credits / Alcance y créditos

- Target client / Cliente objetivo: World of Warcraft 3.3.5a (build 12340), CoA configuration.
- Scope / Alcance: 17,000+ Retail item records and associated converted resources, spanning content from Shadowlands through Midnight.
- This is an unofficial community project. World of Warcraft and its assets are the property of their respective owners.
- Este es un proyecto comunitario no oficial. World of Warcraft y sus recursos pertenecen a sus respectivos titulares.

