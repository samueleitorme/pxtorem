# Px To Rem
Esta función sencilla convierte los píxeles a rem, desde la terminal. Muy útil la verdad. 😄

## Instalación
1. Abre una terminal con Powershell.
2. Modifica el archivo $PROFILE.
   
    ```powershell
    notepad $PROFILE
    ```
4. Añade esta función al final de tu archivo.

      ```powershell
      # Px To Rem
      function pxtorem {
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
      ```

## Ejemplo de uso

- Ejecución.

    ```powershell
    # Sintaxis
    # pxtorem <pixeles>
    pxtorem 64
    ```
- Salida

  ```powershell
  64px -> 4rem
  ```

![Demostración de uso](./pxtorem-demo.gif)
