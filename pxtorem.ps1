function pxtorem {
<#
.SYNOPSIS
    Convierte píxeles a REM.

.DESCRIPTION
    Convierte un número de píxeles a REM utilizando la fórmula REM = píxel / tamaño base.

.PARAMETER px
    El número de píxeles que se van a convertir.

.PARAMETER base
    El tamaño de fuente predeterminado en píxeles.

.EXAMPLE
    pxtorem 32 16

    Convierte 32 píxeles a REM utilizando un tamaño de fuente predeterminado de 16 píxeles.

.NOTES
    Autor: Samuel Reche
    Sitio web: http://samueleitor.me
    Github: @samueleitor.me
#>

   param (
      [Parameter(Position = 0)]
      [int]$px,
      [Parameter(Position = 1)]
      [int]$base = 16
   )
   $rem = $px / $base
   $salida = '{0}px -> {1}rem' -f $px, $rem
   Write-Host $salida
}
