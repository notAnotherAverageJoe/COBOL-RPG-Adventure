       0100-NAME-CLASS.
           DISPLAY "Welcome adventurer!".
           DISPLAY "What is your name? ".
           ACCEPT chosen-name.
           DISPLAY "Pleasure to meet you " chosen-name.

       0150-PICK-CLASSES.
           DISPLAY "Class options for your character are as follows: ".
           DISPLAY "1: Warrior ⚔️, 2: Rogue 🗡️, 3: Mage 🔮 ".
           DISPLAY ">> (choose 1,2,3) <<".
           ACCEPT chosen-class.
           EVALUATE chosen-class
               WHEN = 1
                   MOVE "Warrior" TO YOUR-CLASS
               WHEN = 2
                   MOVE "Rogue" TO YOUR-CLASS
               WHEN = 3
                   MOVE "Mage" TO YOUR-CLASS
           END-EVALUATE.

       0175-PICK-FANTASY-RACE.
           DISPLAY "Well adventurer, what is your birth race? ".
           DISPLAY "1: Orc, 2: Dwarf, 3: High-elf, 4: Wood-Elf ".
           DISPLAY "5: Dark-Elf, 6: Troll, 7: Human, 8: Gnome ".
           ACCEPT chosen-race.
           EVALUATE chosen-race
               WHEN 1
                   MOVE "Orc" TO RACE-NAME
               WHEN 2
                   MOVE "Dwarf" TO RACE-NAME
               WHEN 3
                   MOVE "High-Elf" TO RACE-NAME
               WHEN 4
                   MOVE "Wood-Elf" TO RACE-NAME
               WHEN 5
                   MOVE "Dark-Elf" TO RACE-NAME
               WHEN 6
                   MOVE "Troll" TO RACE-NAME
               WHEN 7
                   MOVE "Human" TO RACE-NAME
               WHEN 8
                   MOVE "Gnome" TO RACE-NAME
               WHEN OTHER
                   DISPLAY "Invalid selection, please try again."
           END-EVALUATE.

       0200-RESPONSES.
           IF chosen-race >= 1 AND chosen-race <= 8
               DISPLAY "Ah, you do look like a " RACE-NAME "."
           ELSE
               DISPLAY "Please pick a valid race."
           END-IF.
