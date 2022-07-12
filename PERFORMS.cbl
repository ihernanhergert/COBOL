      ******************************************************************
      * Author:Hernán Hergert
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORMS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
             RUTINA01.
            DISPLAY "Hello desde la rutina 1".
            PERFORM RUTINA02.

           RUTINA03.
            DISPLAY "Hello desde la rutina 3".
            PERFORM RUTINA03.

           RUTINA02.
            DISPLAY "Hello desde la rutina 2".
            STOP RUN.
       END PROGRAM PERFORMS.
