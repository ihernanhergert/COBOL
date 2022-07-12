      ******************************************************************
      * Author:Hernán Hergert
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  n1 PIC 9(3).
       01  n2 PIC 9(3).
       01  R  PIC 9(4).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Insertar el primer dato".
            ACCEPT n1.
            DISPLAY "Insertar el segundo dato".
            ACCEPT n2.
            ADD n1 TO n2 GIVING R.
            DISPLAY R
            STOP RUN.
       END PROGRAM SUMA.
