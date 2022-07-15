      ******************************************************************
      * Author:
      * Date:
      * Purpose: Este programa debe ser capaz de diferenciar entre
      *          personas con diferentes niveles de experiencias como
      *          programador asignarles un sueldo acorde y dividirlos
      *          en:
      *              1. 0 a 2años = Junior //Sueldo = $110.000.
      *              2. 3 a 5 años = SemiSenior //Sueldo = $160.000.
      *              3. 6+años = Senior //Sueldo = $200.000
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WSC-CONSTANTES.
           05 WSC-SENIORITY.
              10 WSC-SENIOR   PIC X(06) VALUE 'SENIOR'.
              10 WSC-SEMISR   PIC X(06) VALUE 'SEMISR'.
              10 WSC-JUNIOR   PIC X(06) VALUE 'JUNIOR'.
       01 WSV-VARIABLES.
           05 WS-POSTULANTES.
              10 WSV-POSTU1.
                   15 WSV-NOMBRE1      PIC X(5) VALUE 'PEDRO'.
                   15 WSV-EXPERIENCIA  PIC 9(02) VALUE 01.
              10 WSV-POSTU2.
                   15 WSV-NOMBRE2      PIC X(5) VALUE 'SOFIA'.
                   15 WSV-EXPERIENCIA2 PIC 9(02) VALUE 07.
              10 WSV-POSTU3.
                   15 WSV-NOMBRE3      PIC X(05) VALUE 'LALA'.
                   15 WSV-EXPERIENCIA  PIC 9(02) VALUE 04.
           05 WSV-POSTULANTE-AUX.
              10 WSV-NOMBRE-AUX       PIC X(5).
              10 WSV-EXPERIENCIA3     PIC 9(02).
                   88 WSS-EXP-JUNIOR   VALUE 0 1 2.
                   88 WSS-EXP-SEMISR   VALUE 3 4 5.
       PROCEDURE DIVISION.

       00-CONTROL.
           PERFORM 10-INICIO.
           PERFORM 20-PROCESO.
       STOP RUN.
       00-CONTROL-END.
       EXIT.

       10-INICIO.
           DISPLAY 'Iniciando Ejercicio 01'.
           DISPLAY ' '
           INITIALISE WSV-POSTULANTE-AUX.
       10-INICIO-END.
       EXIT.

       20-PROCESO.
           MOVE WSV-POSTU1 TO WSV-POSTULANTE-AUX.
           PERFORM 25-EVALUAR.
           MOVE WSV-POSTU2 TO WSV-POSTULANTE-AUX.
           PERFORM 25-EVALUAR.
           MOVE WSV-POSTU3 TO WSV-POSTULANTE-AUX.
           PERFORM 25-EVALUAR.
       20-PROCESO-END.
       EXIT.

       25-EVALUAR.
       EVALUATE TRUE
           WHEN WSS-EXP-JUNIOR
               DISPLAY WSV-NOMBRE-AUX ' EL POSTULANTE ES' WSC-JUNIOR
               DISPLAY 'SU SUELDO ES $110.000'
               DISPLAY ' '
           WHEN WSS-EXP-SEMISR
               DISPLAY WSV-NOMBRE-AUX ' EL POSTULANTE ES' WSC-SEMISR
               DISPLAY 'SU SUELDO ES $160.000'
               DISPLAY ' '
           WHEN OTHER
               DISPLAY WSV-NOMBRE-AUX ' EL POSTULANTE ES' WSC-SENIOR
               DISPLAY 'SU SUELDO ES $200.000'
               DISPLAY ' '
       END-EVALUATE.
       25-EVALUAR-END.
       EXIT

       STOP RUN.
       END PROGRAM EJERCICIO01.
