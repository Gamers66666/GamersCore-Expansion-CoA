[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateScript({ Test-Path -LiteralPath $_ -PathType Container })]
    [string]$ClientData,

    [Parameter(Mandatory = $true)]
    [ValidateScript({ Test-Path -LiteralPath $_ -PathType Container })]
    [string]$PackageDirectory
)

$ErrorActionPreference = 'Stop'

# Release filename -> tested CoA client Data filename
$mapping = [ordered]@{
    'patch-1.MPQ'   = 'patch-NAA.MPQ'
    'patch-GAM.MPQ' = 'patch-NAB.MPQ'
    'patch-6.MPQ'   = 'patch-NAC.MPQ'
    'patch-7.MPQ'   = 'patch-NAD.MPQ'
    'patch-8.MPQ'   = 'patch-NAE.MPQ'
    'patch-9.MPQ'   = 'patch-NAF.MPQ'
    'patch-D.MPQ'   = 'patch-NAG.MPQ'
    'patch-0.MPQ'   = 'patch-NAH.MPQ'
}

$missing = @($mapping.Keys | Where-Object {
    -not (Test-Path -LiteralPath (Join-Path $PackageDirectory $_) -PathType Leaf)
})
if ($missing.Count -gt 0) {
    throw ("Missing required MPQ files / Faltan MPQ requeridos: " + ($missing -join ', '))
}

$collisions = @($mapping.Values | Where-Object {
    Test-Path -LiteralPath (Join-Path $ClientData $_) -PathType Leaf
})
if ($collisions.Count -gt 0) {
    throw ("Install cancelled; destination files already exist and will not be overwritten / Instalación cancelada; ya existen archivos de destino y no se sobrescribirán: " + ($collisions -join ', '))
}

Write-Host ''
Write-Host 'Retail Backport for CoA — WoW 3.3.5a' -ForegroundColor Cyan
Write-Host 'English: close the game and confirm the destination folder.' -ForegroundColor Yellow
Write-Host 'Español: cierra el juego y confirma la carpeta de destino.' -ForegroundColor Yellow
Write-Host "Client Data / Datos del cliente: $ClientData"
Write-Host "Package / Paquete: $PackageDirectory"

$confirmation = Read-Host 'Type INSTALL to continue / Escribe INSTALAR para continuar'
if ($confirmation -cne 'INSTALL' -and $confirmation -cne 'INSTALAR') {
    Write-Host 'Cancelled; no files were copied / Cancelado; no se copió ningún archivo.' -ForegroundColor Yellow
    exit 0
}

foreach ($sourceName in $mapping.Keys) {
    $source = Join-Path $PackageDirectory $sourceName
    $destinationName = $mapping[$sourceName]
    $destination = Join-Path $ClientData $destinationName
    Copy-Item -LiteralPath $source -Destination $destination
    Write-Host "Installed / Instalado: $sourceName -> $destinationName" -ForegroundColor Green
}

Write-Host ''
Write-Host 'MPQ installation completed. SQL is not executed by this script.' -ForegroundColor Cyan
Write-Host 'Instalación de MPQ completada. Este script no ejecuta el SQL.' -ForegroundColor Cyan
