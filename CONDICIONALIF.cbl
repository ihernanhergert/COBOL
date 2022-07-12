      ******************************************************************
      * Author:Hernán Hergert
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDICIONALIF.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  n1 PIC 9(3).
       01  n2 PIC 9(3).
       01  R  PIC 9(4).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *Pedir datos
            DISPLAY "Insertar el primer dato".
            ACCEPT n1.
            DISPLAY "Insertar el segundo dato".
            ACCEPT n2.
            ADD n1 TO n2 GIVING R.
      *Condición
            IF R > 20
      *Output
                DISPLAY "El resultado es mayor a 20"
            ELSE
                DISPLAY "El resultado es menor a 20"
            END-IF
            STOP RUN.
       END PROGRAM CONDICIONALIF.
