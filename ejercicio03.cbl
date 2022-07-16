      ******************************************************************
      * Author:
      * Date:
      * Purpose: Se pide un programa que verifique los datos de los
      * participantes para cursar y recibirse de la carrera de cobol
      *    Requisitos:
      *        # Ser Mayor de 18 años.
      *        # Haber terminado sus estudios secundarios
      *        # Ser estudiante o graduado de la carrra de ing.sistema
      *        # ing. en sistemas lic. en sistemas o afines.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO03.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WSC-CONSTANTES.
           05 WSC-EDAD-MINIMA         PIC 99 VALUE 18.
           05 WSC-ESTADO-SECUND       PIC X VALUE 'T'.
           05 WSC-ESTADO-CARRERA-OK.
               10 WSC-TERMINADO       PIC X VALUE 'T'.
               10 WSC-ENCURSO         PIC X VALUE 'C'.
       01 WSC-VARIABLES.
           05 WS-POSTULANTES.
               10 WSV-POSTU1.
                   15 WSV-NOMBRE1     PIC X(5) VALUE 'PEDRO'.
                   15 WSV-EDAD1       PIC 99 VALUE 15.
                   15 WSV-SECUNDARIO1 PIC X VALUE 'N'.
                   15 WSV-CARRERA1    PIC X VALUE 'N'.
               10 WSV-POSTU2.
                   15 WSV-NOMBRE2     PIC X(5) VALUE 'SOFIA'.
                   15 WSV-EDAD2       PIC 99 VALUE 25.
                   15 WSV-SECUNDARIO2 PIC X VALUE 'T'.
                   15 WSV-CARRERA2    PIC X VALUE 'T'.
               10 WSV-POSTU3.
                   15 WSV-NOMBRE3     PIC X(05) VALUE 'LALA'.
                   15 WSV-SECUNDARIO3 PIC X VALUE 'T'.
                   15 WSV-EDAD3       PIC 99 VALUE 19.
                   15 WSV-CARRERA3    PIC X VALUE 'T'.
           05 WSV-POSTULANTE-AUX.
               10 WSV-NOMBRE-AUX     PIC X(05).
               10 WSV-EDAD-AUX     PIC X(02).
               10 WSV-SECUNDARIO-AUX PIC X.
               10 WSV-CARRERA-AUX    PIC X.

       PROCEDURE DIVISION.
       00-CONTROL.
           DISPLAY 'COBOL 2021'
           display '--------------------------------------------------'.

           MOVE WSV-POSTU1 TO WSV-POSTULANTE-AUX.
           PERFORM 20-EVALUAR.

           MOVE WSV-POSTU2 TO WSV-POSTULANTE-AUX.
           PERFORM 20-EVALUAR.

           MOVE WSV-POSTU3 TO WSV-POSTULANTE-AUX.
           PERFORM 20-EVALUAR.


       STOP RUN.
       00-CONTROL-END.
       EXIT.

       20-EVALUAR.
           IF (WSV-EDAD-AUX >= WSC-EDAD-MINIMA AND WSV-SECUNDARIO-AUX
               EQUAL WSC-ESTADO-SECUND AND (WSV-CARRERA-AUX EQUAL
               WSC-TERMINADO OR WSV-CARRERA-AUX EQUAL WSC-ENCURSO))
               DISPLAY WSV-NOMBRE-AUX ' CUMPLE CON TODOS LOS REQUISITOS'
           ELSE
               DISPLAY
               WSV-NOMBRE-AUX
               'EL POSTULANTE NO CUMPLE CON LA EDAD MINIMA'
           END-IF.

           DISPLAY '---------------------------------------------'.

           INITIALIZE WSV-POSTULANTE-AUX.
      * Inicializamos la variable auxiliar para 'limpiarla'
       20-EVALUAR-END.
       EXIT.
       END PROGRAM EJERCICIO03.
