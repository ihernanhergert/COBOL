      ******************************************************************
      * Author:Hernán Hergert
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TIMES-UNTIL-VARYING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  numero PIC 99.
      *01  numero PIC 999.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       init.
           PERFORM Rutina1 10 TIMES.
      *PERFORM Rutina1 UNTIL numero = 10.
      *PERFORM Rutina1 VARYING numero FROM 1 BY 1 UNTIL numero>100.
           STOP RUN.

       Rutina1.
           ADD 1 TO numero.
           DISPLAY numero.
      *Rutina1.
      *    DISPLAY numero.
       END PROGRAM TIMES-UNTIL-VARYING.
