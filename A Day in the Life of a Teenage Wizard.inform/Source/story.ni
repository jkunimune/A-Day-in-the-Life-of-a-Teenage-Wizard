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
		if the donutspell of the book is donuttrue, say "[line break]Decaf[line break]";
		if the rainspell of the book is raintrue, say "[line break]From the hooded man:[line break]cdeee[line break]";
	otherwise:
		say the description of the book;
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

The Second Floor is up from the Living room.

The Street is east of the living room.

The School Entrance is east of the street.

The Quad is north of the school entrance.  "The quad is a great grassy square with the computer lab to the west, the science building to the north, the school gym to the east, and the road to the south.  The Math, English, Social Studies, and Language buildings are behind the science building, but you don't have any of those classes today.[if the flute is rainy]  It is raining hard."

The flowers are things in the quad.  Understand "flower" as flowers.  Understand "rose" or "roses" as flowers.  The description is "These roses have a lovely aroma.  They sure seem romantic.  You could give these to Jane."

The hooded man is a thing in the quad.  Understand "hood" or "cloak" or "hooded cloak" or "cloaked man" or "man in a hooded cloak" or "figure" as hooded man.  The description is "There is a man in a hooded cloak standing about the quad, whistling a strange tune.  The first three notes are similar to your unlocking spell, but then it repeats the last not twice.[line break]You wonder if you should tell security about this guy.[line break]Nah, he doesn't seem to be a threat."

Writeraining is an action applying to nothing.  Understand "write cdeee" or "write cdeee down" or "write cdeee in book" or "write cdeee in the book" or "write cdeee on the book" or "write cdeee on book" or "write cdeee on the spell book" or "write cdeee in the spellbook" or "write cdeee on the spellbook" or "write cdeee on spellbook" or "write cdeee in spellbook" or "write cdeee on spell book" or "write cdeee in spell book" or "record cdeee" or "put cdeee in book" or "put cdeee in the book" or "put cdeee on the book" or "put cdeee on book" or "put cdeee on the spell book" or "put cdeee in the spellbook" or "put cdeee on the spellbook" or "put cdeee on spellbook" or "put cdeee in spellbook" or "put cdeee on spell book" or "put cdeee in spell book" as writeraining.

After writeraining:
	say "You scribble the word 'cdeee' into your spell book, along with the words 'From the hooded man'.";
	change the rainspell of the spell book to raintrue.
			
Castraining is an action applying to nothing.  Understand "play cdeee" or "play cdeee on flute" as castraining.

Things can be rainy or unrainy.  Things are usually unrainy.

Instead of castraining:
	say "You play the tune you heard the hooded man whistling on your flute.[if the flute is rainy]  Nothing happens.  The rain will probably stop on it's own.[otherwise]  A sudden downpour comes down, soaking everyone in the quad.";
	change the flute to rainy.

The Computer Lab is west of the quad.  "The computer lab is a small, square-shaped room with rows of desks facing the northern wall.  Each desk has a computer on it."

A thing can be beforecs or aftercs. A thing is usually beforecs.

Before going west:
	if the player is in the quad:
		if the flute is beforecs, say "You hurry into the computer lab building just as Computer Science starts.  Your crush, Jane, is here.  You have to remember to ask her to the dance before she leaves class.[line break]'Today, we will be working on our text-based adventure games,' begins the teacher…'[line break][line break]'Remember, games are due next class,' says the teacher as class ends and everyone begins to pack up.  Your heart skips a beat as you realize Jane is leaving, also.  You need to get her to stay a little longer!";
		if the flute is beforecs, change the flute to aftercs.

The desks are things in the computer lab.  Understand "desk" as desks.  Understand "table" or "tables" as desks.  They are scenery.  They are supporters.  The description is "The desks are made of rectangular pieces of wood, with thin metal legs."

The legs are things in the computer lab.  They are scenery.  The description is "The legs are made of several pieces of metal, and are covered in rust."

The rust is a thing in the computer lab.  It is scenery.

The computers are things on the desks.  They are scenery.  The description is "The computers are fairly new.  They are turned off, but you probably shouldn't turn them on without the teacher here.  They are all Banana brand computers."

Jane is a person in the computer lab.

The Science Building is north of the quad.

The Chemistry Lab is up from the science building.

The Gym is east of the quad.

The Dance is east of the gym.
			
		

