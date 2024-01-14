<#
.SYNOPSIS
Convierte píxeles a REM.

.DESCRIPTION
Convierte el número de píxeles introducido a en unidades rem.

.PARAMETER px
El número de píxeles que se van a convertir.

.PARAMETER base
El tamaño de fuente predeterminado en píxeles.

.EXAMPLE
pxtorem 32 16

Convierte 32 píxeles a REM utilizando un tamaño de fuente predeterminado de 16 píxeles.
> 32px -> 2rem

.NOTES
Autor: Samuel Reche
Sitio web: https://samueleitor.me
Github: @samueleitor.me

#>
function pxtorem {
    param (
        [Parameter(Position = 0, Mandatory = $true)]
        [int]$px,
        [Parameter(Position = 1)]
        [int]$base = 16
    )
    $rem = $px / $base
    $salida = '{0}px -> {1}rem' -f $px, $rem
    Write-Host $salida
}
