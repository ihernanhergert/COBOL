      ******************************************************************
      * Author:Hernán Hergert
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DECIMALES.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  Numero PIC S9V9 VALUE ZERO.
      *01  Numero PIC S9V9 VALUE ZERO. la S antepuesta significa signo
      *positivo por defecto, se recomienda inicializar las variables.
       01  text1 PIC XX VALUE SPACE.
      *Queda inicializada con un espacio.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 5.5 TO Numero.
      *    MOVE -5.5 TO Numero.
           DISPLAY Numero.
           STOP RUN.

       END PROGRAM DECIMALES.
