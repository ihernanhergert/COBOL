      *    *****************************************************************
      * Author:Hernán Hergert
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. NIVELESDEVARIABLES.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  variableDeNivel77 PIC X(80) VALUE "VARIBLE SIN GRUPO".
      *Nivel 77 se usa para crear una varible que no va a ser agrupada.
       01  variableGrupo VALUE "A".
      *Nivel 01 se usa para grupos
           02 variableSubordinada PIC X VALUE SPACE.
      *Del Nivel 02 hasta el 49 grupos subordinados.
       01  grupo88 PIC 999.
           88 r1 VALUE 50 THRU 100.
           88 r2 VALUE 600 THRU 700.
      *El nivel 88 se usa para rangos.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY variableDeNivel77
           STOP RUN.
       END PROGRAM NIVELESDEVARIABLES.
