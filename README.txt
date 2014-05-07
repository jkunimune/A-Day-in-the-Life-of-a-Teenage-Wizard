A-Day-in-the-Life-of-a-Teenage-Wizard
=====================================
This is a game where you play the role of a wizard-in-training as he struggles to overcome the challenges of everyday high school life––with the help of his magic flute.





***!SPOILER ALERT!***



Shortest Route to Victory:
open chest
take flute
take book
cdefg
u
e
get in bus
n
take flowers
write cdeee
w
cdeee
talk to jane
no
no
yes
yes
give jane flowers
e
n
u
talk to kyle
cdefg
cdeee
e
decaf
give guard donut
e
talk to jane

The Story:
	"A Day in the Life of a Teenage Wizard" is a game about a high school student with a magic  flute.  This game takes place on the day of the big dance, as well as a major history exam.  The main character knows who he wants to ask, if he can just get up the courage to talk to her.
	In the morning, the main character is locked in the basement and going crazy with stress.  Luckily, he has a magic flute and spell book that allow him to get out and catch the bus.  Getting the perfect date to the dance in computer science later that day takes a combination of wit, charm, and magic, but the main character is victorious.  After computer science is chemistry, in which our character nearly forgets about the major exam that he forgot to study for.  Luckily, he manages to use magic to destroy the test papers as the teacher approaches the classroom, stopping the exam before it happens.
	Finally, it is time for the dance.  Just his luck, though, that the main character gets knocked out by a football and is made late to the dance.  Because he is late, a senior guarding the entrance to the gym refuses to admit him.  The main character discovers a donut-summoning spell on a note his dad wrote him, and uses it to bribe the guard.  It works, and our hero at last makes it into the dance, where he meets Jane.  And they all lived happily ever after.

The Puzzles:
	The first puzzle involves getting out of the basement you have been locked in.  The player must find the spell book and magic flute, and then use the spell in the spell book by playing it on the flute, thus magically unlocking the door.
	The second puzzle is the date to the dance puzzle, though it can be divided into five smaller puzzles.  The first part is taking the romantic flowers in the quad.  Next would be examining the hooded man, decoding the rain spell that he is whistling, and then writing it down.  After that, the player enters the computer lab.  He sees Jane, but she begins to leave right after class ends, so he must use the new rain spell to stop her.  Talking to Jane after that brings up a dialogue tree in which the player has to use the bathroom, but can't while he is talking to Jane.  Thus, he must maneuver the conversation away from water-related topics.  Finally, the player must give Jane the flowers from the quad.  Only then will she agree to go to the dance with him.
	In the third puzzle, the player discovers that he has a chemistry exam, but he forgot to study.  He must use the unlocking spell to open the latch on the teacher's briefcase and release the test papers, and then use the rain spell to soak the papers, thus destroying the tests and saving his grades.
	The final puzzle, and one of the most difficult ones, is the donut puzzle.  The player is faced with a guard blocking his path who seems to like donuts, but seemingly nothing in his inventory will help him.  It is not until the player checks his inventory that he discovers the note in his backpack with the italic word 'DECAF' worked into a sentence.  Upon playing this spell, a donut magically appears in the player's hand.  This is what must be used to bribe the guard, get inside, and talk to Jane to win the game.

Beta Test Reports:
Tester Name: Austin Ishii
Date: 10/16/13
Time allotted: 10 min
Completed: No.
Notes:
Turn melodies into verbs
The door prints as locked when it is unlocked
Add response for 'climb stairs'
Add a hint to examine the hooded man
Clarify the melody description
Add response to 'listen to tune'
Add response to 'examine bob'
Understand 'strange tune' as tune
Add a hint to write down the spell
Add response to 'stop Jane'
Make the cutscenes easier to read
Put more hints in the test puzzle
"A sudden downpour…in the quad" has a weird indent
Comments:
Too much reading the designer's mind
The puzzles are too vague
People don't associate 'spell book' with 'flute' naturally.

Tester Name: Cameron Haseyama
Date: 10/16/13
Time allotted: 10 min
Completed: No.
Notes:
Change summary to say "soon" instead of "in 10 minutes"
Clarify the scene at the school entrance
Listening to the tune mentions bob
'It is time for computer science' prints before the player has the flowers
Clarify the computer science scene
Clarify that cdefg is musical notation
Comments:
The musical notes are hard to grasp, but the game is fun and interesting

Tester Name: Jonathan Zerez
Date: 10/17/13
Time allotted: 30 min
Completed: Yes.
Notes:
Make songs playable
Understand 'upstairs' as up
Add listen to quad and listen to hooded man
Add response to 'write in book'
CDEFG part of test puzzle is still too hard
Redundancy in vicinity reminders
Football cutscene is still hard to read
Lock player in the gym during endgame
Comments:

Beta Test Review:
	I had a few of my friends test the game, as well as the Beta tests I received in class.  They pointed out many of the puzzles that were too difficult or unclear, which I changed.  There were also a great many bugs and confusing passages that the beta testers pointed out to me.
	I also was able to give feedback to Austin and Cameron in class about descriptions they should add, puzzles they should clarify, bugs I found, etc.

The Mechanics:
	The primary mechanic of this game is the magic flute.  Play a melody, and if it is a spell you know, it will do something magical.  You can also write spells in the spell book.  This makes the game interesting and different from other games, as the player must not only figure out how to play the flute, but also what to play on it.  Other than that and the dialogue tree I set up in puzzle #2, my game mechanics don't go much farther than taking, opening, going, etc.

The Process:
	I set out to make a game that uses a music mechanic in an interesting story line, which I think I accomplished successfully.  The flute was just to see if I could work music puzzles into a text game.  The idea was partially influenced by the Legend of Zelda, as there are several Zelda games that use musical instruments to do magic.
	I got stuck once when programming the donuts.  The donuts were summoned magically, so the player could technically have an infinite number of donuts.  Inform had a system for stacking items, but I couldn't seem to get it to work for something that is summoned one at a time.  In the end, I created one eternal donut that followed the player around invisibly, and whenever the player wanted to use it, the game would check the 'donutcount', which kept track of how many donuts the player should have, and if the player had already cast the donut-summoning spell, then he could use the donut.  If not, the game would pretend it wasn't there.  There is still a minor bug in that the game tends to say '(first taking the donut)' whenever interacting with the donut, even though as far as the player knows, the donut is in his inventory already.  This was not a major issue, though, so I left it.
	I am proud of the magic flute mechanic that I programmed.  I wanted it to make my game different, and it worked.  Unfortunately, I couldn't actually write musical staffs into the game, and I was slightly limited in that the players might not know much about musical notation, so the CDEFG in italics was the best I could come up with.  Next time, I think I would try implementing a score system, and also try to add more spells——maybe even just easter-eggs.
