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

$expected = @(
    'patch-NAA.MPQ',
    'patch-NAB.MPQ',
    'patch-NAC.MPQ',
    'patch-NAD.MPQ',
    'patch-NAE.MPQ',
    'patch-NAF.MPQ',
    'patch-NAG.MPQ',
    'patch-NAH.MPQ',
    'patch-NAI.MPQ'
)

$missing = @($expected | Where-Object {
    -not (Test-Path -LiteralPath (Join-Path $PackageDirectory $_) -PathType Leaf)
})

if ($missing.Count -gt 0) {
    throw ("Faltan paquetes requeridos: " + ($missing -join ', '))
}

Write-Host 'Retail Backport — instalación' -ForegroundColor Cyan
Write-Host "Destino: $ClientData"
Write-Host 'Confirma que el cliente esté cerrado y que el destino sea la carpeta Data correcta.'

$confirm = Read-Host 'Escribe INSTALAR para copiar los nueve MPQ'
if ($confirm -cne 'INSTALAR') {
    Write-Host 'Cancelado. No se copiaron archivos.' -ForegroundColor Yellow
    exit 0
}

foreach ($name in $expected) {
    $destination = Join-Path $ClientData $name
    if (Test-Path -LiteralPath $destination) {
        throw "Ya existe $destination. Para evitar sobrescribir un MPQ existente, la instalación se detuvo sin copiar archivos."
    }
}

foreach ($name in $expected) {
    Copy-Item -LiteralPath (Join-Path $PackageDirectory $name) -Destination $ClientData
    Write-Host "Instalado: $name" -ForegroundColor Green
}

Write-Host 'Copia terminada. La compatibilidad debe verificarse dentro del cliente.' -ForegroundColor Cyan
