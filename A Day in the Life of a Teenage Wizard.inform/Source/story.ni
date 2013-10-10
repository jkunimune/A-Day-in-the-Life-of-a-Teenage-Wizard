"A Day in the Life of a Teenage Wizard" by Justin Kunimune

The story headline is "Ordinary Problems, Magical Solutions".  The story description is "Just another day in the life.".  The story genre is "Comedy".  Use no scoring.

When play begins:
	now left hand status line is "[location]";
	now right hand status line is "Exits:[exit list]";
	say "You're practically ripping out your hair from stress.  Today is the date of the school dance, which you still don't have a date for.  To make matters worse, there's the major chemistry exam worth 40% of your grade that you haven't studied for yet.  On top of that, you're already late for school.  Oh, yeah, and you're locked in the basement."

To say exit list:
	let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room, say " [way]".
		
Instead of taking inventory:
	say "You're carrying [a list of things carried by the player][if donutcount is one] and 1 donut[end if][if donutcount is greater than one] and [donutcount] donuts[end if][if the player wears something].  You are also wearing [a list of things worn by the player][end if]."
	
The description of the player is "You are a sixteen-year-old with dark hair and dark eyes.[if the player is wearing the backpack]  You have a heavy-looking backpack on your back."

The donut is a thing.  Understand "pastry" or "chocolate donut" as donut.

Instead of examining the donut:
	if donutcount is greater than 0:
		say "A good-looking chocolate-covered donut.  Yum!";
	otherwise:
		say "You can't see any such thing.".
		
Instead of eating the donut:
	if donutcount is greater than 0:
		say "You devour the donut in no time.  Delicious!";
		decrease donutcount by 1;
	otherwise:
		say "Hah!  You wish you could eat a donut right now!".
		
Instead of giving the donut to Jane:
	if donutcount is greater than 0:
		if Jane is in the computer lab:
			say "You hand a donut to Jane.[line break]'Thanks…' she says.";
		otherwise:
			say "You give Jane a donut.[line break]Her friend looks at you.  'Why can't I have a boyfriend who brings donuts?!' she cries angrily.  'Why.  Can't.  I.  Be.  You?!'[line break]She punches Jane in the face and grabs you.  'You're mine, now,' she mutters.  She runs off with you, and no one ever sees you again.";
			end the game in death;
		decrease donutcount by 1;
	otherwise:
		say "You can't see any such thing.".
		
Instead of giving the donut to the Guard:
	if donutcount is greater than 0:
		say "You pull out a donut and hand it to him.  His eyes widen.[line break]'You can only have it if you let me in,' you say alluringly.[line break]'Deal!' he exlaims without hesitation.  'They're only paying me fifty bucks, anyway.'[line break][line break]The guard steps aside to let you through.";
		decrease donutcount by 1;
		remove the guard from play;
	otherwise:
		say "You can't see any such thing.".


The backpack is a thing.  Understand "bookbag" or "bag" or "schoolbag" or "school bag" or "book bag" or "pack" or "back pack" as backpack.  It is wearable.  It is a container.  It is closed and openable.  The description is "Your backpack is black and weighed down with all of your school books.[if the player is wearing the backpack]  Your shoulders ache from wearing it."

When play begins:
	now the player is wearing the backpack.
	
The schoolbooks are things in the backpack.  Understand "school books" or "text books" or "textbooks" as schoolbooks.  The description is "Trigonometry, Chemistry, Spanish… your backpack is loaded with heavy textbooks."

The note is a thing in the backpack.  Understand "note from Dad" as note.  The description is "This is the note Dad put on your backpack when he left this morning before you woke up.  It reads:[line break][line break]Hey, sport,[line break]I went down to the coffee shop to get my donut with my Decaf.  I won't see you 'till after school.[line break]-Dad"

The walls are a thing.  They are scenery.  Understand "mold" or "wooden planks" or "termites" as walls.

Instead of examining the walls:
	if the walls are in the basement, say "The walls are made of wooden planks, and are falling apart with mold and termites.";
	if the walls are in the living room, say "The walls are painted dull blue.  The only adornment is a painting.";
	if the walls are in the computer lab, say "The walls here are white and bare.";
	if the walls are in the science building, say "The walls here have safety posters on them.";
	if the walls are in the dance, say "The walls are obscured by the darkness and flashing lights.".
	
The ceiling is a thing.  It is scenery.

Instead of examining the ceiling:
	if the ceiling is in the basement, say "The ceiling are made of wooden planks, and has a slight leak, periodically dripping water.";
	if the ceiling is in the living room, say "The ceiling here is white and bare.";
	if the ceiling is in the computer lab, say "The ceiling here is white and bare.";
	if the ceiling is in the science building, say "The ceiling here is white and bare.";
	if the ceiling is in the dance, say "The ceiling is obscured by the darkness and flashing lights.".

The floor is a thing.  It is scenery.  Understand "carpet" or "tiles" or "tile" as floor.

Instead of examining the floor:
	if the floor is in the basement, say "The floor is made of wooden planks, and creaks when you move around.";
	if the floor is in the living room, say "The floor has a carpet on it.";
	if the floor is in the computer lab, say "The floor is made of cold white tiles.";
	if the floor is in the science building, say "The ceiling here is white and bare.";
	if the floor is in the dance, say "The ceiling is obscured by the darkness and flashing lights.".

An every turn rule:
	if the player is in the basement, move the walls to the basement;
	if the player is in the living room, move the walls to the living room;
	if the player is in the computer lab, move the walls to the computer lab;
	if the player is in the science building, move the walls to the science building;
	if the player is in the chemistry lab, move the walls to the chemistry lab;
	if the player is in the dance, move the walls to the dance;
	if the player is in the basement, move the ceiling to the basement;
	if the player is in the living room, move the ceiling to the living room;
	if the player is in the computer lab, move the ceiling to the computer lab;
	if the player is in the science building, move the ceiling to the science building;
	if the player is in the chemistry lab, move the ceiling to the chemistry lab;
	if the player is in the dance, move the ceiling to the dance;
	if the player is in the basement, move the floor to the basement;
	if the player is in the living room, move the floor to the living room;
	if the player is in the computer lab, move the floor to the computer lab;
	if the player is in the science building, move the floor to the science building;
	if the player is in the chemistry lab, move the floor to the chemistry lab;
	if the player is in the dance, move the floor to the dance;
	if the player is in the basement, move the donut to the basement;
	if the player is in the living room, move the donut to the living room;
	if the player is in the computer lab, move the donut to the computer lab;
	if the player is in the science building, move the donut to the science building;
	if the player is in the chemistry lab, move the donut to the chemistry lab;
	if the player is in the dance, move the donut to the dance;
	if the player is in the street, move the donut to the street;
	if the player is in the school entrance, move the donut to the school entrance;
	if the player is in the quad, move the donut to the quad;
	if the player is in the gym, move the donut to the gym.

The Basement is a room.  "The basement is a dark and dank area.  It is small; the only things here are an old chest and some wooden stairs leading up to [if basement door is unlocked]a locked[otherwise]an unlocked[end if] door.[if the basement door is locked]  You don't know how you managed to lock yourself in when you came down to get your book, but the important thing is the bus leaves in 10 minutes, so you'd better get out of here soon."

The door called the basement door is above the basement.  Understand "wooden door" as basement door.  Understand "trapdoor" or "wooden trapdoor" as basement door.  It is locked and lockable.  It is scenery.  The description is "It is a white wooden door with a brass handle."

The handle is a thing in the basement.  It is scenery.  The description is "It is a brass door handle."

Dustiness is a kind of value.  The dustinesses are dusty and polished.  Things have dustiness.  Things are usually polished.

The chest is a thing in the basement.  Understand "box" as chest.  It is a container.  It is fixed in place.  It is closed and openable.  The dustiness of the chest is dusty.  The description is "The chest is incredibly old-looking.[if the chest is dusty]  You can't make out any details under the thick layer of dust sitting on it.  It appears as though it hasn't been touched for years.[otherwise]  Now that the dust is gone, you can see that it is made primarily of some silver metal."

Dusting is an action applying to one thing.  Understand "dust [something]" or "undust [something]" or "clean [something]" or "brush the dust off of [something]" or "wipe the dust off [something]" as dusting.

Instead of dusting:
	if the dustiness of the noun is dusty:
		say "You clear the dust off of the surface of the [noun].";
		change the dustiness of the noun to polished;
	otherwise:
		say "That's already clean.".
		
Bookiness is a kind of value.  The bookinesses are booky and bookless.  Things have bookiness.  Things are usually bookless.

Donutspell is a kind of value.  The donutspells are donutfalse and donuttrue.  Things have donutspell.  Things are usually donutfalse.

Rainspell is a kind of value.  The Rainspells are raintrue and rainfalse.  Things have rainspell.  Things are usually rainfalse.
		
The spell book is a thing in the chest.  Understand "spellbook" or "melody" or "brief melody" as the spell book.  The description is "It is a mystic-looking leather-bound hand-sized book.[if the spell book is bookless]The cover is embroidered with strange symbols that you don't understand.[otherwise]It is open.  The pages inside are mostly covered in blank musical staffs, but the first page has a brief melody recorded with a title.[end if]  Somehow, the book seems to eminate pure power.[line break]"

Instead of opening the book:
	say "You open the book.";
	change the bookiness of the book to booky.
	
Instead of closing the book:
	say "You close the book.";
	change the bookiness of the book to bookless.
	
Alreadyread is a kind of value.  The alreadyreads are readalready and haventread.  Things have alreadyread.  Things are usually haventread.
	
Instead of examining the book:
	if the player is holding the spell book and the book is booky and the book is readalready:
		say "The book says:[line break][line break]To unlock things:[line break]cdefg[line break]";
		if the rainspell of the book is raintrue, say "[line break]From the hooded man:[line break]cdeee[line break]";
		if the donutspell of the book is donuttrue, say "[line break]Decaf[line break]";
	otherwise:
		say the description of the book;
	if the book is bookless and the book is readalready, say "You should open the book if you want to read it.";
	change the book to readalready.
	
The flute is a thing in the chest.  Understand "magic flute" as flute.  The description is "The flute is the length of your hand, carved from wood and painted blue.  The underside is engraved with[if we have not examined the spell book]  strange symbols.[otherwise]  letters and symbols similar to those on the book.[end if]  The top has several holes drilled in a line.  The shaft is hollow.[if we have not examined the flute]  Holding it in your hand, you find that you know how to play."

Playing is an action applying to one thing.  Understand "play [something]" or "play [something] on flute" or "play [something] on the flute" as playing.

Instead of playing:
	if the player is not holding the flute, say "That's not something you can play.";
	if the player is holding the flute:
		if the noun is the flute, say "You play a charming melody on your flute.  The flute grows warm and seems to vibrate with energy--an energy almost magical.";
		if the noun is not the flute, say "That's not something you can play.".
		
Magicing is an action applying to nothing.  Understand "play cdefg" or "play cdefg on flute" as magicing.

Instead of magicing:
	if the player is not holding the flute, say "You don't have anything to play.";
	if the player is holding the flute:
		say "You play a simple scale on your flute.";
		if the player is in the basement and the basement door is locked:
			say "You hear a click from just above you.  Looking up, you see that the basement door has somehow come unlocked.";
			change the basement door to unlocked.
			
Writingdonuting is an action applying to nothing.  Understand "write Decaf" or "write Decaf down" or "write Decaf in book" or "write Decaf in the book" or "write Decaf on the book" or "write Decaf on book" or "write Decaf on the spell book" or "write Decaf in the spellbook" or "write Decaf on the spellbook" or "write Decaf on spellbook" or "write Decaf in spellbook" or "write Decaf on spell book" or "write Decaf in spell book" or "record Decaf" or "put Decaf in book" or "put Decaf in the book" or "put Decaf on the book" or "put Decaf on book" or "put Decaf on the spell book" or "put Decaf in the spellbook" or "put Decaf on the spellbook" or "put Decaf on spellbook" or "put Decaf in spellbook" or "put Decaf on spell book" or "put Decaf in spell book" as writingdonuting.

After writingdonuting:
	say "You scribble the word 'Decaf' into your spell book.";
	change the donutspell of the spell book to donuttrue.
			
Donutcount is a number variable.  The donutcount is zero.

Donuting is an action applying to nothing.  Understand "play Decaf" or "play Decaf on flute" as donuting.

Instead of donuting:
	say "You play an odd-sounding melody on the flute.[line break]*Poof!*[line break]A donut appears in your hand!";
	increase donutcount by one.
			
The Living Room is up from the basement door.  "Your living room is a long room with a small table, a couple of chairs, and a painting.  The basement is below you.  A hallway in the north leads to the kitchen."

The small table is a supporter in the living room.  It is scenery.  The description is "The table is small and made of glass."

The chairs are supporters in the living room.  Understand "seats" or "chair" or "seat" as chairs.  It is scenery.  The description is "These chairs are pretty typical.  Just some hard, uncomfortable seats."

The painting is a thing in the living room.  Understand "Noma Risa" or "replica" as the painting.  It is scenery.  The description is "It is a replica of the Noma Risa, by Michelangelo DeCaprio."

The Kitchen is north of the living room.

Instead of going to the kitchen:
	say "You're not feeling very hungry right now."

Before going east:
	if the player is in the living room, say "You make it to the bus stop just as the bus pulls up."
	
Before going west:
	if the player is in the street, say "You decide that you'd rather not go to school, and walk back home.";
	if the player is in the street, end the story saying "You missed school."

The room called the Street is east of the Living Room.  "The bus stop is right in front of your house."

The sign is a thing in the street.  The printed name of the sign is "bus sign".  Understand "signpost" or "bus stop sign" as sign.  It is fixed in place.  The description is "It is a big metal sign with the words 'Bus Stop' on it."

The bus is a thing in the street.  Understand "schoolbus" as bus.  It is fixed in place.  The description is "The bus is big and yellow.  You can see the faces of a few of your classmates inside."

The road is a thing in the street.  Understand "street" as road.  Understand "asphalt" as road.  It is scenery.  The description is "The street is made of paved asphalt, and full of potholes."

The potholes are things in the street.  They are scenery.  Understand "pot holes" or "holes" or "pothole" or "pot hole" or "hole" as potholes.  The description is "They should really repave this road soon."

The curb is a thing in the street.  It is scenery.  Understand "sidewalk" as curb.

The house is a thing in the street.  It is scenery.  Understand "home" as house.  The description is "Your small 1-story house sits next to the road."

The classmates are things in the street.  They are scenery.  Understand "students" or "friend" or "Todd" or "lab partner" or "Kyle" or "crush" or "Jane" as classmates.  The description is "From here, you recognize your friend, Todd, your lab partner, Kyle, and Jane, your crush."

Instead of entering the bus:
	say "You get on the bus and sit in the back.  Before you know it, you are getting off at the entrance to school.";
	move the player to the school entrance.

The School Entrance is a room.  "The entrance to school is just a parking lot with a sign stating the name of your school.[if we have not entered the school entrance the second time]  The rest of your classmates are walking to class already.  You see Jane among them.  You have to ask her to the dance tonight before someone else does.[end if]  The quad is just to the north."

After entering the school entrance:
	move the classmates to the school entrance;
	move the road to the school entrance.

The thing called the school is a thing in the school entrance.  It is scenery.  Understand "quad" or "academy" or "highschool" as school.  The description is "Your high school is a cluster of buildings sitting atop a low hill to your north."

The schoolsign is a thing in the school entrance.  It is scenery.  Understand "school name" as schoolsign.  The printed name of the schoolsign is "sign".  The description is "The sign is a big colorful rectangle supported by two poles with your school's name printed across."

The poles are things in the school entrance.  They are scenery.  Understand "posts" or "signposts" or "pole" as poles.  The description is "The poles are a couple of inches thick and appear to be made out of cast aluminum."

The Quad is north of the school entrance.  "The quad is a great grassy square with the computer lab to the west, the science building to the north, the school gym to the east, and the road to the south.  [if we have not entered the quad the second time]The Math, English, Social Studies, and Language buildings are behind the science building, but you don't have any of those classes today.  You see Jane heading towards the computer lab.  You both have computer science there now.[end if][if the flute is rainy]  It is raining hard."

The flowers are things in the quad.  Understand "flower" as flowers.  Understand "rose" or "roses" as flowers.  The description is "These roses have a lovely aroma.  They sure seem romantic.  You could give these to Jane."

The tune is a thing in the quad.  Understand "melody" or "song" or "whistle" as tune.  It is scenery.  The description is "The tune starts off like your unlocking spell, but the third note repeats twice."

The hooded man is a thing in the quad.  Understand "hood" or "cloak" or "hooded cloak" or "cloaked man" or "man in a hooded cloak" or "figure" as hooded man.  The description is "There is a man in a hooded cloak standing about the quad, whistling a strange tune.  The first three notes are similar to your unlocking spell, but then it repeats the last not twice.[line break]You wonder if you should tell security about this guy.[line break]Nah, he doesn't seem to be a threat."

Talking is an action applying to one thing.  Understand "talk to [something]" as talking.

Instead of talking:
	if the noun is not the hooded man and the noun is not Jane, say "You strike up a conversation with the [noun].  Weirdo.";
	if the noun is the hooded man, say "You try to get the attention of the hooded man.  He ignores you and continues whistling.".
	
Writeraining is an action applying to nothing.  Understand "write cdeee" or "write cdeee down" or "write cdeee in book" or "write cdeee in the book" or "write cdeee on the book" or "write cdeee on book" or "write cdeee on the spell book" or "write cdeee in the spellbook" or "write cdeee on the spellbook" or "write cdeee on spellbook" or "write cdeee in spellbook" or "write cdeee on spell book" or "write cdeee in spell book" or "record cdeee" or "put cdeee in book" or "put cdeee in the book" or "put cdeee on the book" or "put cdeee on book" or "put cdeee on the spell book" or "put cdeee in the spellbook" or "put cdeee on the spellbook" or "put cdeee on spellbook" or "put cdeee in spellbook" or "put cdeee on spell book" or "put cdeee in spell book" as writeraining.

After writeraining:
	say "You scribble the word 'cdeee' into your spell book, along with the words 'From the hooded man'.";
	change the rainspell of the spell book to raintrue.
			
Castraining is an action applying to nothing.  Understand "play cdeee" or "play cdeee on flute" as castraining.

Things can be rainy or unrainy.  Things are usually unrainy.
		
Instead of castraining:
	say "You play the tune you heard the hooded man whistling on your flute.[if the flute is rainy]  Nothing happens.  The rain will probably stop on it's own.[otherwise]  A sudden downpour comes down, soaking everyone in the quad.[end if][if Jane is in the computer lab and the flute is unrainy][line break]It worked!  Jane stopped.  She seems to be waiting to see if the rain will stop.";
	change the flute to rainy;
	change the book to rainy.

An every turn rule:	
	if the flute is rainy and the book is unrainy and a random chance of 1 in 4 succeeds:
		change the flute to unrainy;
		say "The rain has stopped.";
	change the book to unrainy.

The Computer Lab is west of the quad.  "The computer lab is a small, square-shaped room with rows of desks facing the northern wall.  Each desk has a computer on it."

A thing can be beforecs or aftercs. A thing is usually beforecs.

Before going to the computer lab:
	if the book is beforecs:
		say "You step into the computer lab just as class begins.  Jane, your crush, is already sitting down.[line break]'Good morning, class,' the teacher says, 'Today, we will be working on our text-adventure games…'[line break][line break]'Remember, games are due next class,' the teacher concludes.  Everyone begins to pack up their backpacks and leave.  Jane is leaving, too.  You have to stop her so you can ask her to the dance!";
		change the book to aftercs;
	if the flute is rainy:
		change the flute to unrainy;
		say "The rain has stopped.".

The desks are things in the computer lab.  Understand "desk" as desks.  Understand "table" or "tables" as desks.  They are scenery.  They are supporters.  The description is "The desks are made of rectangular pieces of wood, with thin metal legs."

The legs are things in the computer lab.  They are scenery.  The description is "The legs are made of several pieces of metal, and are covered in rust."

The rust is a thing in the computer lab.  It is scenery.

The computers are things on the desks.  They are scenery.  The description is "The computers are fairly new.  They are turned off, but you probably shouldn't turn them on without the teacher here.  They are all Banana brand computers."

Jane is a person in the computer lab.  Understand "Janet" or "girl" or "crush" or "date" as Jane.  The description is "Jane is by far the prettiest girl in school, she gets straight A's, and she has a ton of friends.  She's way out of your league, but that won't stop you from trying."

Bladderstate is a number variable.  The bladderstate is 0.

Decisiveness is a kind of value.  The decisivenesses are decisive and indecisive.  People have decisiveness.  People are usually decisive.
	
Instead of talking Jane:
	if Jane is in the dance:
		say "You tap Jane on the shoulder.  She seems glad to see you.  You have the most amazing night of your life, you and Jane have a long happy relationship, and you live happily ever after.";
		end the game in victory;
	if Jane is in the computer lab:
		if the flute is unrainy, say "She's leaving in a big hurry.  You need to get her to stop first.";
		if the flute is rainy:
			change bladderstate to 1;
			say "You approach her cautiously and tap her on the shoulder.  As you do so, you realize that you need to go to the bathroom.  You've got to be joking!  It's too late now.  Jane is already turning around.  You'll just have to hold it.[line break][line break]'Hi, Jane,' you mutter nervously.  'Crazy weather, huh?'[line break]'Yeah, it sure is.  Almost magical,' she replies.  'Don't you just love the rain?'";
			if player consents:
				say "'It's amazing if you think about it,' she continues, 'Tons and tons of liquid water rushing down from the sky and flowing down rivers.'[line break][line break]Her words painfully remind you that you have to pee.[line break]";
				increase bladderstate by 1;
				say "[line break]You really need to go to the bathroom.[line break]";
			otherwise:
				say "[line break]You have to go to the bathroom…[line break]";
			say "[line break]'Well, anyway,' you stammer, 'I was just… I wanted to…'[line break]You can't quite remember your train of thought.  This isn't good.  You're looking bad in front of Jane.  You start sweating violently.  Also not good.[line break]'Is is hot in here, or is it just me?' you ask.[line break]'I have some water, if you want,' offers Jane.";
			if player consents:
				say "She pulls a water bottle out of her backpack and hands it to you.  You waterfall a sizable gulp, into your mouth, much to your bladder's protest.[line break]";
				increase bladderstate by 1;
				if the bladderstate is 2, say "[line break]You really need to go to the bathroom.[line break]";
				if the bladderstate is 3, say "[line break]You bounce up and down nervously.  You can't hold it much longer.[line break]";
			otherwise:
				say "'No thank you,' you say.";
				if the bladderstate is 1, say "[line break]You have to go to the bathroom…[line break]";
				if the bladderstate is 2, say "[line break]You really need to go to the bathroom.[line break]";
			say "[line break]'So, there's the dance tonight…' you begin uneasily.[line break]'Oh, yeah!' Jane says, 'Did you know the theme is underwater?";
			if player consents:
				say "'Seems a little cliché to me,' she adds.";
				if the bladderstate is 1, say "[line break]You have to go to the bathroom…[line break]";
				if the bladderstate is 2, say "[line break]You really need to go to the bathroom.[line break]";
				if the bladderstate is 3, say "[line break]You bounce up and down nervously.  You can't hold it much longer.  Jane looks at you funny.[line break]";
			otherwise:
				say "'I heard they're going to have fish tanks and water sound effects and waterfalls,' she explains.[line break][line break]Waterfalls are not fun to think about when you have to pee.[line break]";
				increase bladderstate by 1;
				if the bladderstate is 2, say "[line break]You really need to go to the bathroom.[line break]";
				if the bladderstate is 3, say "[line break]You bounce up and down nervously.  You can't hold it much longer.  Jane looks at you funny.[line break]";
				if the bladderstate is 4, say "[line break]You can't hold it any longer!  You run to the bathroom without hesitation.  How embarrassing.";
				if the bladderstate is 4, end the story saying "You have failed to get a date to the dance.";
			if bladderstate is less than 4, say "[line break]'Do you have a date for that?' you inquire abruptly.[line break]'Not yet,' answers Jane, 'If I don't get one soon, I'll probably just skip the dance and go whitewater rafting.  Have you ever been whitewater rafting?'";
			if player consents:
				say "'Pretty fun, huh?' says Jane.";
				if the bladderstate is 1, say "[line break]You have to go to the bathroom…[line break]";
				if the bladderstate is 2, say "[line break]You really need to go to the bathroom.[line break]";
				if the bladderstate is 3, say "[line break]You bounce up and down nervously.  You can't hold it much longer.  Jane looks at you funny.[line break]";
				if the bladderstate is 4, say "[line break]You can't hold it any longer!  You run to the bathroom without hesitation.  How embarrassing.";
				if the bladderstate is 4, end the story saying "You have failed to get a date to the dance.";
			otherwise:
				say "'It's where you ride down choppy rivers in a raft,' Jane elaborates, 'The best part of it, I think, is just the gurgling, rushing, splashing sound the water makes.'[line break][line break]All those sound effects make you think of is the flushing of a toilet.[line break]";
				increase bladderstate by 1;
				if the bladderstate is 2, say "[line break]You really need to go to the bathroom.[line break]";
				if the bladderstate is 3, say "[line break]You bounce up and down nervously.  You can't hold it much longer.  Jane looks at you funny.[line break]";
				if the bladderstate is 4, say "[line break]You can't hold it any longer!  You run to the bathroom without hesitation.  How embarrassing.";
				if the bladderstate is 4, end the story saying "You have failed to get a date to the dance.";
			if bladderstate is less than 4, say "[line break]'Yeah… so, do you want to come to the dance with me?' you blurt out.[line break]'Oh.  Really?  Well…'[line break][line break]She's indecisive!  You should give her something to tip the scales.";
			change Jane to indecisive.

Instead of giving the flowers to Jane:
	if Jane is decisive:
		say "Shouldn't you talk to her first?";
	otherwise:
		say "'Wow, thanks!' Jane exclaims.  'That's so sweet.  You know what?  I will go to the dance with you.'[line break]She turns and walks out into the rain, and then sprints off towards the Math building.  Mission accompished: you have the perfect date to the dance.";
		remove the flowers from play;
		change the decisiveness of Jane to decisive;
		move Jane to the dance.
		
Before going east:
	if the player is in the computer lab and Jane is indecisive:
		say "You bailed on Jane before she could make a decision!  She probably thinks you're a jerk now.  Nice going, you horrible person.";
		end the story saying "You have lost.".

The Science Building is north of the quad.  "The science building is a large open area with doors to classrooms all around.  Your class is upstairs in the chemistry lab."

The posters are things in the science building.  Understand "Smily Cyprus" or "Jason Biever" as posters.  They are scenery.  The description is "The posters are mostly of celebrities like Smily Cyprus and Jason Biever telling you to be safe in science."

The classrooms are in the science building.  Understand "doors" as classrooms.  They are scenery.  The description is "The doors are all opaque, so you can't see into any of the classrooms.  You probably don't want to go into any of them and risk disturbing a class."

Instead of opening the classrooms:
	say "You walk into a physics class just as they are performing a projectile lab.[line break][line break]*POW*[line break][line break]You take a cannonball to the face.";
	end the game in death.

The Chemistry Lab is up from the science building.  

Instead of entering the gym:
	if Jane is in the dance, move the player to the gym;
	if Jane is not in the dance, say "You shouldn't go that way.  They're probably setting up for the dance tonight.".

The Gym is east of the quad.  "The gym is a large building with high windows.  As you approach it, you can already hear loud music coming out and lights flashing from inside.[if we have not entered the gym for the second time]  You try to enter, but a large guard blocks your path."

Holdingdonut is a kind of value.  The holdingdonuts are donutinhand and iwantadonut.  People have holdingdonut.  People are usually iwantadonut.

The guard is a person in the gym.  Understand "senior" as guard.  The description is "A chubby, but tall senior stands in front of the door, blocking your entrance.  He wears a shirt with a donut on it."

Instead of talking the guard:
	if the guard is iwantadonut, say "'Sorry, pal.  You were late to the dance, and it's my job to make sure no one enters or leaves this dance between the hours of five minutes ago and when they tell me to leave.  I'm getting paid to stand here.'"

The shirt is a thing in the gym.  It is scenery.  Understand "donut shirt" or "shirt with a donut" as shirt.  The description is "The senior's shirt features a chocolate donut with a bite out of it.  He must really like donuts."

The Dance is east of the gym.  "Loud music fills your ears as you walk into the dance.  Through the thick mass of bodies and dim light, you can see Jane socializing with her friend."

Instead of going to the dance:
	if the guard is in the gym, say "The guard steps in front of you.[line break]'No can do, buddy,' he says, 'I'm afraid you're late.  The dance has already started.'";
	if the guard is not in the gym, move the player to the dance.
	
The music is a thing in the dance.  Understand "dubstep" or "ballad" or "song" as music.  It is scenery.  The description is "The DJ is blasting the music so hard it hurts your ears."

The DJ is a person in the dance.  Understand "Mr Relgned" or "Teacher" as DJ.  It is scenery.  The description is "The DJ is a middle-aged guy in sunglasses and headphones.  Wait, is that Mr. Relgned?"

Instead of talking the DJ, say "You say 'Hi' to the DJ.  He doesn't hear you.[line break]You shout at the DJ over the music.  He doesn't hear you.".

Instead of giving the donut to the DJ:
	if donutcount is greater than 0:
		say "You hand a donut to the DJ.[line break]He throws it into the crowd.  The dancers go crazy.  In five seconds, the donut is completely gone.";
		decrease donutcount by 1;
	otherwise:
		say "You can't see any such thing.".
		
The bodies are things in the dance.  Understand "crowd" or "dancers" as bodies.  The description is "These people are bouncing to and fro as a single entity.  It is as if they are one single dancing organism.  They are no longer human in their minds."

The friend is a person in the dance.  Understand "Jane's friend" or "Janes friend" or "blonde" as friend.  It is scenery.  The description is "Jane's friend is tall and blonde.  She and Jane are talking to each other."

Instead of talking the friend:
	say "You tap Jane's friend on the shoulder.[line break]'Hi, how are you?  Are you friends with Jane?' you ask loudly.[line break]'What?' she replies, 'what do you mean, my gargoyles are spitting?'[line break]'Why, no, I don't want a purple monkey grinder,' you say back.[line break]'Don't you think people would notice a giant singing organ?' points out Jane's friend.[line break]'Why are we talking about poisonous holes in the uniforms?'[line break]'What?'[line break]'Never mind.'[line break]'What?'[line break]'What?'[line break]'Okay.'[line break]'Fine, then.'".
	
Instead of giving the friend a donut:
	if donutcount is greater than 0:
		say "You hold a donut in front of Jane's friend's nose.  She sniffs it, and then looks at you.[line break]'A donut!' she exclaims, 'Yay, I love you, new boyfriend.  She picks you up and carries you into the sunset.";
		end the game in death;
		decrease donutcount by 1;
	otherwise:
		say "You can't see any such thing.".
		
			
		

