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

The backpack is a thing.  Understand "bookbag" or "bag" or "schoolbag" or "school bag" or "book bag" or "pack" or "back pack" as backpack.  It is wearable.  It is a container.  It is closed and openable.  The description is "Your backpack is black and weighed down with all of your school books.[if the player is wearing the backpack]  Your shoulders ache from wearing it."

When play begins:
	now the player is wearing the backpack.
	
The school books are things in the backpack.  Understand "schoolbooks" or "text books" or "textbooks" as school books.  The description is "Trigonometry, chemistry, Spanish… your backpack is loaded with heavy textbooks."

The note is a thing in the backpack.  Understand "note from Dad" as note.  The description is "This is the note Dad put on your backpack when he left this morning before you woke up.  It reads:[line break][line break]Hey, sport,[line break]I went down to the coffee shop to get my donut with my Decaf.  I won't see you 'till after school.[line break]-Dad"

The Basement is a room.  "The basement is a dark and dank area.  It is small; the only things here are an old chest and some wooden stairs leading up to [if basement door is unlocked]a locked[otherwise]an unlocked[end if] door.[if the basement door is locked]  You don't know how you managed to lock yourself in when you came down to get your book, but the important thing is the bus leaves in 10 minutes, so you'd better get out of here soon."

The door called the basement door is above the basement.  Understand "wooden door" as basement door.  It is locked and lockable.  It is scenery.  The description is "It is a white wooden door with a brass handle."

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
			
The Living Room is up from the basement door.

The Kitchen is north of the living room.

Before going east:
	if the player is in the living room, say "You make it to the bus stop just as the bus pulls up."
	
Before going west:
	if the player is in the street, say "You decide that you'd rather not go to school, and walk back home.";
	if the player is in the street, end the story saying "You missed school."

The Street is east of the Living Room.  "The bus stop is right in front of your house."

The sign is a thing in the street.  The printed name of the sign is "bus sign".  Understand "signpost" or "bus stop sign" as sign.  It is fixed in place.  The description is "It is a big metal sign with the words 'Bus Stop' on it."

The bus is a thing in the street.  Understand "schoolbus" as bus.  It is fixed in place.  The description is "The bus is big and yellow.  You can see the faces of a few of your classmates inside."

The road is a thing in the street.  Understand "street" as road.  Understand "asphalt" as road.  It is scenery.  The description is "The street is made of paved asphalt, and full of potholes."

The potholes are things in the street.  They are scenery.  Understand "pot holes" or "holes" or "pothole" or "pot hole" or "hole" as potholes.  The description is "They should really repave this road soon."

The classmates are things in the street.  They are scenery.  Understand "students" or "friend" or "Todd" or "lab partner" or "Kyle" or "crush" or "Jane" as classmates.  The description is "From here, you recognize your friend, Todd, your lab partner, Kyle, and Jane, your crush."

Instead of entering the bus:
	say "You get on the bus and sit in the back.  Before you know it, you are getting off at the entrance to school.";
	move the player to the school entrance.

The School Entrance is a room.  "The entrance to school is just a parking lot with a sign stating the name of your school.  The quad is just to the north."

The schoolsign is a thing in the school entrance.  It is scenery.  Understand "school name" as schoolsign.  The printed name of the schoolsign is "sign".  The description is "The sign is a big colorful rectangle supported by two poles with your school's name printed across."

The poles are things in the school entrance.  They are scenery.  Understand "posts" or "signposts" or "pole" as poles.  The description is "The poles are a couple of inches thick and appear to be made out of cast aluminum."

The Quad is north of the school entrance.  "The quad is a great grassy square with the computer lab to the west, the science building to the north, the school gym to the east, and the road to the south.  The Math, English, Social Studies, and Language buildings are behind the science building, but you don't have any of those classes today.[if the flute is rainy]  It is raining hard."

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

Every turn when a random chance of 2 in 5 succeeds:
	if the flute is rainy:
		change the flute to unrainy;
		say "The rain has stopped.".
		
Instead of castraining:
	say "You play the tune you heard the hooded man whistling on your flute.[if the flute is rainy]  Nothing happens.  The rain will probably stop on it's own.[otherwise]  A sudden downpour comes down, soaking everyone in the quad.[end if][if Jane is in the computer lab and the flute is unrainy][line break]It worked!  Jane stopped.  She seems to be waiting to see if the rain will stop.";
	change the flute to rainy.

The Computer Lab is west of the quad.  "The computer lab is a small, square-shaped room with rows of desks facing the northern wall.  Each desk has a computer on it."

A thing can be beforecs or aftercs. A thing is usually beforecs.

The desks are things in the computer lab.  Understand "desk" as desks.  Understand "table" or "tables" as desks.  They are scenery.  They are supporters.  The description is "The desks are made of rectangular pieces of wood, with thin metal legs."

The legs are things in the computer lab.  They are scenery.  The description is "The legs are made of several pieces of metal, and are covered in rust."

The rust is a thing in the computer lab.  It is scenery.

The computers are things on the desks.  They are scenery.  The description is "The computers are fairly new.  They are turned off, but you probably shouldn't turn them on without the teacher here.  They are all Banana brand computers."

Jane is a person in the computer lab.  Understand "Janet" or "girl" or "crush" or "date" as Jane.  The description is "Jane is by far the prettiest girl in school, she gets straight A's, and she has a ton of friends.  She's way out of your league, but that won't stop you from trying."

Bladderstate is a number variable.  The bladderstate is 0.

Decisiveness is a kind of value.  The decisivenesses are decisive and indecisive.  People have decisiveness.  People are usually decisive.
	
Instead of talking Jane:
	if Jane is in the dance, end the game in victory;
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

The Science Building is north of the quad.

The Chemistry Lab is up from the science building.

The Gym is east of the quad.

The Dance is east of the gym.
			
		

