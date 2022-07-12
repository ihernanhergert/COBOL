      ******************************************************************
      * Author:Hernán Hergert
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. D-ivision.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  n1 PIC 9(3).
       01  n2 PIC 9(3).
       01  RESULTADO  PIC 9(4).
       01  RESIDUO PIC 9(4).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Insertar el primer dato".
            ACCEPT n1.
            DISPLAY "Insertar el segundo dato".
            ACCEPT n2.
            DIVIDE n1 BY n2 GIVING RESULTADO REMAINDER RESIDUO.
            DISPLAY "El resultado es " RESULTADO " Y el residuo es "
            RESIDUO
            STOP RUN.
       END PROGRAM D-ivision.
