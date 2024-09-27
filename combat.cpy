       0700-WARRIOR-COMBAT.
           DISPLAY "You quickly unsheath your weapon and prepare".
           DISPLAY "for battle!⚔️".
           DISPLAY "You let out a bloodcurdling howl and attack.🪓".

           IF player-health > 0 AND player-energy > 0
               DISPLAY "Congratulations!"
               DISPLAY "You have won this fight!"
               SUBTRACT 20 FROM player-energy
               SUBTRACT 20 FROM player-health
               DISPLAY "Of course, you did not escape unscathed."
           ELSE
               DISPLAY "GAME OVER!"
               STOP RUN
           END-IF.


       0705-ROGUE-COMBAT.
           DISPLAY "You ready your weapons". 
           DISPLAY "    and slink into the shadows 💨"
           DISPLAY "       Undetected you strike 🗡️"

           IF player-health > 0 AND player-energy > 0
               DISPLAY "Congratulations!"
               DISPLAY "You have won this fight!"
               SUBTRACT 20 FROM player-energy
               SUBTRACT 20 FROM player-health
               DISPLAY "Of course, you did not escape unscathed."
           ELSE 
               DISPLAY "GAME OVER!"
               STOP RUN 
           END-IF.

               

       0710-MAGE-COMBAT. 
           DISPLAY "You ready your Staff and Tomes 📖"
           DISPLAY "  you begin an incantation channeling power 🔮"
           DISPLAY "    you unleash a fireball of legendary proportions"
           DISPLAY "      🔥"

           IF player-health > 0 AND player-mana > 0
               DISPLAY "Congratulations!"
               DISPLAY "You have won this fight!"
               SUBTRACT 20 FROM player-mana
               SUBTRACT 20 FROM player-health
               DISPLAY "Of course, you did not escape unscathed."
           ELSE 
               DISPLAY "GAME OVER!"
               STOP RUN 
           END-IF.
           