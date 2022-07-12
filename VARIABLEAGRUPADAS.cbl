      *    *****************************************************************
      * Author:Hernán Hergert
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLEAGRUPADAS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  grupo_var.
           02 v1 PIC 9 VALUE 5.
           02 v2 PIC 9 VALUE 2.
           02 v3 PIC 9 VALUE 4.
           02 v4 PIC 9 VALUE 9.
           02 v5 PIC 9 VALUE 5.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY grupo_var v1 v2 v3 v4 v5
           STOP RUN.
       END PROGRAM VARIABLEAGRUPADAS.
