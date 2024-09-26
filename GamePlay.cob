       IDENTIFICATION DIVISION.
       PROGRAM-ID. GamePlay.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

    
       COPY "player-stats.cpy".  

       01  FANTASY-RACE.
           02  chosen-name  PIC X(10).
           02  chosen-class PIC 9(1).
           02  chosen-race  PIC 9(1).

       01  END-SWITCH PIC X(1) VALUE 'N'.

       01  RACE-NAME  PIC X(15).
       01  YOUR-CLASS PIC X(15).
       01  choice1 PIC X(1).

       PROCEDURE DIVISION.

       0500-GAME-START.
           PERFORM 0000-CHARACTER-CREATION-START.
           STOP RUN.

       0000-CHARACTER-CREATION-START.
           PERFORM UNTIL END-SWITCH = 'Y' OR END-SWITCH = 'y'
               PERFORM 0100-NAME-CLASS
               PERFORM 0150-PICK-CLASSES
               DISPLAY "Always nice to have a " YOUR-CLASS
               PERFORM 0175-PICK-FANTASY-RACE
               PERFORM 0200-RESPONSES
               PERFORM 0225-HERO-DETAILS
               PERFORM 0300-QUEST-READY
               DISPLAY "Would you like to end? (Y/N) "
               ACCEPT END-SWITCH
           END-PERFORM.

       COPY "ccs.cpy".

       0225-HERO-DETAILS.
           DISPLAY "|------------------------------------------------|".
           DISPLAY "|             Your Hero details"
           DISPLAY "|             Name: " chosen-name.
           DISPLAY "|             Class: " YOUR-CLASS.
           DISPLAY "|             Race: " RACE-NAME.
           DISPLAY "|             Health🍷: " player-health.
           DISPLAY "|             Mana🔮: " player-mana.
           DISPLAY "|             Energy⚡: " player-energy.
           DISPLAY "|------------------------------------------------|".
       
       0700-COMBAT.

           