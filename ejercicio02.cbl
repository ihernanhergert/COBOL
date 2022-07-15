      ******************************************************************
      * Author:
      * Date:
      * Purpose: Calcular sueldo anual y el bono de fin de año con el
      *          siguiente criterio:
      *          1. Sin exp. no cobra bono
      *          2. 1 año: Cobra 150% del sueldo mensual (100*1.5)
      *          3. 2-3 años: Cobra un 200% del sueldo mensual (100*2)
      *          4. 4-6 años: Cobra un 250% del sueldo mensual (100*2.5)
      *          5. 6+años: Cobra un 300% del sueldo mensual (200*3)
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO02.
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.

       01 WSC-CONSTANTES.
           05 WSC-SENIORITY.
              10 WSC-SENIOR   PIC X(06) VALUE 'SENIOR'.
              10 WSC-SEMISR   PIC X(06) VALUE 'SEMISR'.
              10 WSC-JUNIOR   PIC X(06) VALUE 'JUNIOR'.

           05 WSC-SUELDOS.
               10 WSC-SUELDO-SENIOR PIC 9(06) VALUE 200000.
               10 WSC-SUELDO-SEMISR PIC 9(06) VALUE 160000.
               10 WSC-SUELDO-JUNIOR PIC 9(06) VALUE 100000.

       01 WSV-VARIABLES.
           05 WS-POSTULANTES.
              10 WSV-POSTU1.
                   15 WSV-NOMBRE1              PIC X(5) VALUE 'PEDRO'.
                   15 WSV-EXPERIENCIA1         PIC 9(02) VALUE 01.
                   15 WSV-SUELDO1              PIC 9(06).
                   15 WSV-SUELDO-ANUAL1        PIC 9(06).
                   15 WSV-BONO1                PIC 9(06).
              10 WSV-POSTU2.
                   15 WSV-NOMBRE2              PIC X(5) VALUE 'SOFIA'.
                   15 WSV-EXPERIENCIA2         PIC 9(02) VALUE 07.
                   15 WSV-SUELDO2              PIC 9(06).
                   15 WSV-SUELDO-ANUAL2        PIC 9(06).
                   15 WSV-BONO2                PIC 9(06).
              10 WSV-POSTU3.
                   15 WSV-NOMBRE3              PIC X(05) VALUE 'LALA'.
                   15 WSV-EXPERIENCIA3         PIC 9(02) VALUE 04.
                   15 WSV-SUELDO3              PIC 9(06).
                   15 WSV-SUELDO-ANUAL3        PIC 9(06).
                   15 WSV-BONO3                PIC 9(06).

           05 WSV-POSTULANTE-AUX.
              10 WSV-NOMBRE-AUX                PIC X(5).
              10 WSV-EXPERIENCIA-AUX           PIC 9(02).
                   88 WSS-EXP-JUNIOR       VALUE 0 1 2.
                   88 WSS-EXP-SEMISR       VALUE 3 4 5.
              10 WSV-SUELDO-AUX                PIC 9(06).
              10 WSV-SUELDO-ANUAL-AUX          PIC 9(07).
              10 WSV-BONO-AUX                  PIC 9(06).
       PROCEDURE DIVISION.

       00-CONTROL.
           PERFORM 10-INICIO.
           PERFORM 20-PROCESO.
           STOP RUN.
       00-CONTROL-END.
       EXIT.

       10-INICIO.
           DISPLAY 'Iniciando Ejercicio 02'.
           INITIALISE WSV-POSTULANTE-AUX.
       10-INICIO-END.
       EXIT.


       20-PROCESO.

           MOVE WSV-POSTU1 TO WSV-POSTULANTE-AUX.
           PERFORM 25-EVALUAR-SENIORITY.
           PERFORM 30-CALCULAR-SUELDO.

           MOVE WSV-POSTU2 TO WSV-POSTULANTE-AUX.
           PERFORM 25-EVALUAR-SENIORITY.
           PERFORM 30-CALCULAR-SUELDO.

           MOVE WSV-POSTU3 TO WSV-POSTULANTE-AUX.
           PERFORM 25-EVALUAR-SENIORITY.
           PERFORM 30-CALCULAR-SUELDO.

       20-PROCESO-END.
       EXIT.

       25-EVALUAR-SENIORITY.

           EVALUATE TRUE
           WHEN WSS-EXP-JUNIOR
               MOVE WSC-SUELDO-JUNIOR TO WSV-SUELDO-AUX
               DISPLAY WSV-NOMBRE-AUX ' EL POSTULANTE ES ' WSC-JUNIOR
               DISPLAY 'SU SUELDO ES ' WSV-SUELDO-AUX
               DISPLAY ' '
           WHEN WSS-EXP-SEMISR
               MOVE WSC-SUELDO-SEMISR TO WSV-SUELDO-AUX
               DISPLAY WSV-NOMBRE-AUX ' EL POSTULANTE ES ' WSC-SEMISR
               DISPLAY 'SU SUELDO ES ' WSV-SUELDO-AUX
               DISPLAY ' '
           WHEN OTHER
               MOVE WSC-SUELDO-SENIOR TO WSV-SUELDO-AUX
               DISPLAY WSV-NOMBRE-AUX ' EL POSTULANTE ES ' WSC-SENIOR
               DISPLAY 'SU SUELDO ES ' WSV-SUELDO-AUX
               DISPLAY ' '
       END-EVALUATE.


       25-EVALUAR-SENIORITY-END.
       EXIT.

       30-CALCULAR-SUELDO.
           DISPLAY WSV-SUELDO-AUX 'FASKJFSJKASFHJSAFK'
           MULTIPLY 12 BY WSV-SUELDO-AUX GIVING WSV-SUELDO-ANUAL-AUX

           EVALUATE WSV-EXPERIENCIA-AUX
               WHEN 0
                   MOVE 0 TO WSV-BONO-AUX
               WHEN 1
                   COMPUTE WSV-BONO-AUX = WSV-SUELDO-AUX * 150 / 100
               WHEN 2
               WHEN 3
                   COMPUTE WSV-BONO-AUX = WSV-SUELDO-AUX * 200 / 100
               WHEN 4
               WHEN 5
               WHEN 6
                   COMPUTE WSV-BONO-AUX = WSV-SUELDO-AUX * 250 / 100
               WHEN OTHER
                   COMPUTE WSV-BONO-AUX = WSV-SUELDO-AUX * 300 / 100
           END-EVALUATE.

           DISPLAY 'Su Sueldo Anual es de' WSV-SUELDO-ANUAL-AUX
           DISPLAY 'Su bono es de $' WSV-BONO-AUX.

           INITIALIZE WSV-POSTULANTE-AUX.

       30-CALCULAR-SUELDO-END.
       EXIT.
               STOP RUN.
       END PROGRAM EJERCICIO02.
