       0700-WARRIOR-COMBAT.
           DISPLAY "You quickly unsheath your sword and prepare".
           DISPLAY "for battle!⚔️".
           DISPLAY "You let out a bloodcurdling howl and attack.🪓".

           IF player-health > 0 AND player-energy > 0
               DISPLAY "Congratulations!"
               DISPLAY "You have won this fight!"
               SUBTRACT 20 FROM player-energy
               SUBTRACT 20 FROM player-health
               DISPLAY "Of course, you did not escape unscathed.".
           ELSE
               DISPLAY "GAME OVER!"
               STOP RUN
           END-IF.


       0705-ROGUE-COMBAT.

       0710-MAGE-COMBAT.
           