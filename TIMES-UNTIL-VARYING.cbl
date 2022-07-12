      ******************************************************************
      * Author:Hernán Hergert
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. T-HRU.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *El true se usa para ejecutar dos rutinas en un solo perform.
           PERFORM RUTINA1 THRU RUTINA2.

               DISPLAY "Se Ejecutaron las 2 rutinas."
               STOP RUN.

           RUTINA1.
               DISPLAY "1".

           RUTINA2.
               DISPLAY "2".
           END-RUN.
       END PROGRAM T-HRU.
