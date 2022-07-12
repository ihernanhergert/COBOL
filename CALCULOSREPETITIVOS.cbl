      ******************************************************************
      * Author:Hernán Hergert
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULOSREPETITIVOS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  numero PIC 99.
       01  salir PIC xxxxx.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           Init.
               DISPLAY "Contar hasta 10".
               DISPLAY "Teclear salir si quiere finalizar".
               DISPLAY "Presiona enter para contar hasta 10".
               ACCEPT salir.

           IF salir = "salir"
              DISPLAY 'MISSION COMPLETE ' numero
              GO TO TERMINAR
           ELSE
              PERFORM setear.

           TERMINAR.
               STOP RUN.

           setear.
               ADD 0 TO numero.
               PERFORM sumar.

           sumar.
               COMPUTE numero = numero + 1.
               DISPLAY numero.
               IF numero < 10
                   PERFORM sumar
               ELSE
                   GO TO Init.
       END PROGRAM CALCULOSREPETITIVOS.
