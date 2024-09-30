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
                   MOVE "Orc 👹" TO RACE-NAME
               WHEN 2
                   MOVE "Dwarf 🧙‍♂️" TO RACE-NAME
               WHEN 3
                   MOVE "High-Elf 🧝‍♀️" TO RACE-NAME
               WHEN 4
                   MOVE "Wood-Elf 🧝" TO RACE-NAME
               WHEN 5
                   MOVE "Dark-Elf 🧝‍♀️" TO RACE-NAME
               WHEN 6
                   MOVE "Troll 🧟‍♂️" TO RACE-NAME
               WHEN 7
                   MOVE "Human 🧑‍🔧" TO RACE-NAME
               WHEN 8
                   MOVE "Gnome 🛠️" TO RACE-NAME
               WHEN OTHER
                   DISPLAY "Invalid selection, please try again."
           END-EVALUATE.

       0200-RESPONSES.
           IF chosen-race >= 1 AND chosen-race <= 8
               DISPLAY "Ah, you do look like a " RACE-NAME "."
           ELSE
               DISPLAY "Please pick a valid race."
           END-IF.
           
       0201-SPACED.
           DISPLAY "                                                  ".
           DISPLAY "{}=============================================={}".
           DISPLAY "                                                  ".
       0202-AVERAGE-SPACE.
           DISPLAY "                                                  ".
           DISPLAY "--------------------------------------------------".
           DISPLAY "                                                  ".
           




       0280-CLASS-COMBAT.
           EVALUATE chosen-class
               WHEN 1
                   PERFORM 0700-WARRIOR-COMBAT
               WHEN 2
                   PERFORM 0705-ROGUE-COMBAT
               WHEN 3
                   PERFORM 0710-MAGE-COMBAT
               WHEN OTHER 
                   DISPLAY "Invalid selection, please try again."
           END-EVALUATE.




       0300-QUEST-READY.
           DISPLAY "Are you ready to go on an adventure? ".
           DISPLAY "Type 'Y' or 'N' ".
           ACCEPT choice1.
           IF choice1 = "Y" or "y"
               PERFORM 0301-FIRST-QUEST
           ELSE 
               CONTINUE 
           END-IF.
       
              0301-FIRST-QUEST.
           DISPLAY "You embark on your very first journey!".
           DISPLAY "you have stumbled upon a cave 🕳️🪨".
           DISPLAY "Being an adventurer I am sure you can handle it.".
           DISPLAY "Will you enter the cave? (Y/N)".
           ACCEPT choice1.

           IF choice1 = "Y" OR choice1 = "y"
               PERFORM 0302-SPIDER-AMBUSH
           ELSE
               DISPLAY "Really??...alright then...let's see here..."
               PERFORM 0303-NO-CAVE
           END-IF.

       0302-SPIDER-AMBUSH.
           DISPLAY "You are almost instantly ambushed by cave spiders!".
           DISPLAY " 🕷️              🕷️             🕷️".
           DISPLAY "Prepare for battle, " chosen-name "!".
           PERFORM 0202-AVERAGE-SPACE.
           PERFORM 0280-CLASS-COMBAT.
           PERFORM 0202-AVERAGE-SPACE.
           PERFORM 0304-FIRST-QUEST-CONT-TWO.

       0303-NO-CAVE.
           DISPLAY "Well, since the cave seems too scary and dark.😱.".
           DISPLAY "You decide to keep walking.".
           DISPLAY "You hear something in the bushes 🌳 up ahead...".
           DISPLAY "It is too late to turn back now " chosen-name".".
           DISPLAY "LOOOK OUT!".
           PERFORM 0202-AVERAGE-SPACE.
           PERFORM 0280-CLASS-COMBAT.
           PERFORM 0202-AVERAGE-SPACE.

       0305-NO-CAVE-CONT-TWO.
           DISPLAY "Yikes...rough start..".
           DISPLAY "Maybe next time you should go into the cave??".
           DISPLAY "Are you ready to continue? ( Y / N )"
           ACCEPT choice1.
           IF choice1 = 'Y' OR 'y'
               CONTINUE 
           ELSE 
               DISPLAY "Take another moment if you must...but hurry."
           END-IF.
        
      *Continue adding quest logic here



       0304-FIRST-QUEST-CONT-TWO.
           DISPLAY "Well fought " chosen-name "!"
           DISPLAY "Once you have collected the valuable monster parts".
           DISPLAY "You take a moment to breathe in that dank cave air".
           DISPLAY "Yuck...but the journey can't end here!".
           DISPLAY "Are you ready to keep moving?".
           DISPLAY "I wouldn't stay here....(Y / N )".
         
           ACCEPT choice1.
           IF choice1 = 'Y' OR 'y'
               CONTINUE 
           ELSE 
               DISPLAY "Take another moment if you must...but hurry."
           END-IF.
        
           DISPLAY "As you travel through the cave you can hear the".
           DISPLAY "Skittering of all the spider inhabitants around".
           DISPLAY "Is that your skin crawling?...or spiders..".
           DISPLAY "UH OH...it's another ambush!!"
           PERFORM 0202-AVERAGE-SPACE.
           PERFORM 0280-CLASS-COMBAT.
           PERFORM 0202-AVERAGE-SPACE.




       


