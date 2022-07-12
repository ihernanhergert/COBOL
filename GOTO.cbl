      ******************************************************************
      * Author:Hernán Hergert
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. GOTO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           GO TO TEST1.
           DISPLAY "1".
           DISPLAY "2".
           DISPLAY "3".

           STOP RUN.

           TEST1.
               DISPLAY "-3".
               DISPLAY "-2".
               DISPLAY "-2".
       END PROGRAM GOTO.
