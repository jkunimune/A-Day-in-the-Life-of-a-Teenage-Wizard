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

The Quad is north of the school entrance.

The Computer Lab is west of the quad.

The Science Building is north of the quad.

The Chemistry Lab is up from the science building.

The Gym is east of the quad.

The Dance is east of the gym.
			
		

