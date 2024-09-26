       IDENTIFICATION DIVISION.
       PROGRAM-ID. GamePlay.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

      *COPY "fantasy-race.cpy".  *> First copy file examples to use
      *COPY "player-stats.cpy".  *> Second copy file

       01  FANTASY-RACE.
           02  chosen-name  PIC X(10).
           02  chosen-class PIC 9(1).
           02  chosen-race  PIC 9(1).

       01  END-SWITCH PIC X(1) VALUE 'N'.

       01  RACE-NAME  PIC X(15).
       01  YOUR-CLASS PIC X(15).

       PROCEDURE DIVISION.

       0000-CHARACTER-CREATION-START.
           PERFORM UNTIL END-SWITCH = 'Y' OR END-SWITCH = 'y'
               PERFORM 0100-NAME-CLASS
               PERFORM 0150-PICK-CLASSES
               DISPLAY chosen-name " it is a pleasure to meet you!"
               DISPLAY "Always nice to have a " chosen-class " around"
               PERFORM 0175-PICK-FANTASY-RACE
               PERFORM 0200-RESPONSES
               DISPLAY "YOU CHOSE " YOUR-CLASS
               DISPLAY "Would you like to end? (Y/N) "
               ACCEPT END-SWITCH
           END-PERFORM.
           STOP RUN.

       COPY "ccs.cpy".
