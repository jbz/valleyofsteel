"Valley of Steel" by "The Custodian of http://everything2.com"

The story description is "In a pervasive surveillance society, you[']ll dare to strike a blow for anonymity - but to stay free, you will need to take down the watchers.  The creep of surveillance and control has continued unabated.  Every citizen is required to have a chip implant which can definitively identify them to anyone with a scanner.  You've spent years working with the underground as a hacker for hire, helping research and develop countermeasures to government surveillance.  You've managed to steal information which will help the design of a cryptographic attack against the Mitsui-Klein Encapsulation that every citizen carries in their skull, which (if it works) will render the chip inoperative.   Your own MitKlein signature was captured during your mission, however.  Although you did your best to wipe all records of your MitKlein signature from all the databases you could find, if you let your chip be scanned by any system it is likely that Homeland Security will be after you immediately.  Short term, you'll have to get off the street before curfew and figure out how to move around undetected - long term, you will have to bring the fight to Homeland Security itself."
The story headline is "A tale of the surveillance society".
The story genre is  "Science Fiction".
The story creation year is 2012.
The release number is 3.

Release along with cover art, a "Extended" website, an interpreter, the introductory booklet, the library card, the private source text, a solution, a file of "Original Story" called "valleyofsteel.pdf".


Chapter 0 - Game Rules And Item Setup

Section 1 - Game Settings and Setup

Use serial comma, American dialect, no scoring, and verbose room descriptions.

Use MAX_OBJECTS of 640.

[Use memory economy.]

[Use dynamic memory allocation of at least 16384.]

[Use no deprecated features.]

The carrying capacity of the player is 10.

Time of day is 7:30 PM.

The player is in Green Residential Park.

When play begins:
	add the list of transitStations to Transit System;
	sort Transit System in stationNumber order;
	now newsIndex is a random number from 1 to the number of rows in the Table of Stories;
	repeat with target running through doodles:
		now the graffitiIndex of the target is a random number from 1 to the number of rows in the Table of Graffiti;
	Move the Public Surveillance Notice backdrop to all panopticon rooms;
	Move the surveillance cameras backdrop to all panopticon rooms;
	snoozing starts at 2:00 AM;
	curfew message happens at 7:55 PM;
	activate the Table of General Hints;
	now instantiate is false;
	now messagesWaiting is false;
	now messagesLeft is 0;
	the message arrives in 3 turns from now;
	say "A rare moment of rest.  Your mission to steal specifications of the MitKlein Encapsulation - the ID transponder embedded in every citizen's head, even yours - was successful, and you transmitted your report to Central early this morning.   You expect a new assignment soon, even if it is only instructions to fall back into a cover identity, as you have been on the front lines of the underground struggle against Homeland Security nearly from the start.  Giving up your birth identity and life, moving instead into the flickery half-existence of an underground operative, you've sabotaged, stolen, publicized, verified and fought for years now.  Hopefully, this last mission means that a strategy to counter the government's ubiquitous tagging of citizens is being worked out at levels above your own head.[paragraph break]For now, you have found yourself a small quiet park in a quiet corner of the City.[paragraph break]Welcome to the future.  Every citizen has been scanned, chipped, folded, spindled and mutilated - and it's enough to make you scream."



Section 2 - Values, Rules, Definitions, Declarations

[Map corrections]
Index map with Green Commercial Platform mapped southwest of Green Residential Platform.
Index map with Green Service Platform mapped northwest of Green Residential Platform.
Index map with Reserve Bank Station mapped northwest of Green Commercial Platform.
Index map with Top of Service Bouncelift mapped west of Bouncelift Vestibule.
Index map with Bouncelift Vestibule mapped west of Office Corridor.
Index map with Seating Area mapped east of Office Corridor.
Index map with Transit Capsule mapped east of Reserve Bank Station.
Index map with Side Yard mapped northeast of Front Lobby.
Index map with Back Yard mapped east of The Bedroom.
Index map with EPS file.

[Extensions]
Include Exit Lister by Gavin Lambert.
Include Adaptive Hints by Eric Eve.

Rule for listing exits while the location is unmapped: do nothing instead.




[Definitions]

Definition: A container is empty if nothing is in it.

Definition: something is tagged:
	if an antitheft tag is part of the noun:
		decide yes;
	decide no.

Definition: a memory chip is keyed:
	if the car key encloses it:
		if the car key encloses the receive chip:
			decide yes;
	decide no.

Definition: a thing is matched if it is listed in the multiple object list.



[Decision rules]

To decide whether player is out of doors:
	if the player is in ResidentialOutside, decide yes;
	if the player is in GreenServOutside, decide yes;
	if the player is in GreenCommOutside, decide yes;
	decide no.

To decide whether player is eyevalid:
	unless the player is wearing the contact lens, decide no;
	decide yes.
	
To decide whether player is handvalid:
	unless the player is wearing the skin sample, decide no;
	unless the skin sample is valid, decide no;
	decide yes.

To decide whether player is surveilled:
	if the location is panopticon, decide yes;
	decide no.

To decide whether player is camoflaged:
	if the player is wearing the torn jacket, decide yes;
	decide no.

To decide whether the side panel is hacked:
	unless the side panel contains a klein blaster, decide no;
	if the side panel is fried, decide no;
	decide yes.
	
To decide whether the ID camera is photoEnabled:
	unless the ID camera is working, decide no;
	unless the location of the ID camera is Booking:
		unless the film slot contains a memory chip, decide no;
	decide yes.
	
To decide whether the lens crafter is lensEnabled:
	unless the data slot contains a memory chip (called the film), decide no;
	unless the contents of the film matches the text "Zuzu's eye", decide no;
	decide yes.

To decide whether the player is harnessed:
	unless the player encloses the descender, decide no;
	unless the cable is tied, decide no;
	decide yes.

To decide whether the player is flitterEnabled:
	unless the player encloses the car key, decide no;
	unless the car key encloses a broadcast chip, decide no;
	unless the car key encloses a memory chip (called flitterchip), decide no;
	unless the Contents of the flitterchip is "flitter", decide no;
	decide yes.

To decide whether Drug Market is raided:
	if Drug Raid has happened, decide yes;
	decide no.
	
To decide whether Drug Market is unraided:
	if Drug Raid has happened, decide no;
	decide yes.

To decide whether the metal door is charged:
	if the breaching charge is supported by the metal door:
		decide yes;
	otherwise:
		decide no.

To decide whether the player is thieving:	
	repeat with T running through the list of antitheft tags enclosed by the player:
		unless T is inside the thermos:
			unless T is disassembled, decide yes;
	decide no.
	
To decide whether (item - a thing) interests (character - a person):
	if the character has the item, no;
	if the character is Ponyfriend Chunky and the item is the phone, yes;
	no.


[Values and kinds and properties]
An armedState is a kind of value. The armedStates are disarmed, armed, exploding, or inert. 
A suspicionState is a kind of value.  The suspicionStates are clear, suspect, or fugitive.

A person has a suspicionState.  A person is usually clear.

the incriminatingAct is some text that varies.

A room can be panopticon or blind.  A room is usually panopticon.
A room can be gassed or safe.  A room is usually safe.
A room can be mapped or unmapped.  A room is usually mapped.
A room can be breached or unbreached.  A room is usually unbreached.

the newsIndex is a number that varies.
the tempIndex is a number that varies.

messagesLeft is a number that varies.

the Bombs Thrown is a number that varies.
the Contents is a kind of value.

Things can be either assembled or disassembled.  Things are usually assembled.
Things can be tiny, small, medium, or large (this is its size property).  Things are usually medium.

transitTurn is a number that varies.
shopTurn is a number that varies.
patrolTurn is a number that varies.
raidTurn is a number that varies.

messagesWaiting is a truth state that varies.

[these are for and-attach and and-combine]
group-attach-complete is a truth state that varies.
group-combine-complete is a truth state that varies.



Section 3 - 'Every Turn' Rules, Timed Events and Global Rules/Grammar

[Global understands]
Understand "kiss [something]" as touching.
Understand "pet [something]" as touching.
Understand "kick [something]" as attacking.
Understand "talk to [someone]" as a mistake ("To start a conversation, try to ASK [the noun] ABOUT something or TELL [the noun] ABOUT something.").
Understand "use [something]" as a mistake ("How would you like to use [the noun]?").
Understand "use [something] on [something]" as a mistake ("How would you like to use [the noun]?").
Understand "use [something] with [something]" as a mistake ("How would you like to use [the noun]?").


[Global rule/action overrides]

The can't unlock without a lock rule is not listed in any rulebook.
The can't unlock what's already unlocked rule is not listed in any rulebook.
The can't unlock without the correct key rule is not listed in any rulebook.
The standard unlocking rule is not listed in any rulebook.
The standard report unlocking rule is not listed in any rulebook.
Rule for deciding whether all includes scenery: it does not. 
Rule for deciding whether all includes a fixed in place thing while taking: it does not.  
Rule for deciding whether all includes a thing enclosed by the player: it does not.

The list notable events rule is listed last in the carry out looking rulebook.

This is the list notable events rule:
	if the player is flitterEnabled:
		if the location contains the ambulance:
			now the ambulance is unlocked;
			say "The ambulance flashes its lights twice as the locklarm unlocks the back.";
		if the location contains the Police Flitter:
			now the police flitter is unlocked;
			say "The police flitter flashes its lights twice as the locklarm disengages.".

Rule for printing a parser error when the latest parser error is the I beg your pardon error: 
  say "[one of]I didn't catch that.[or]I'm not a mindreader.[or]I beg your pardon?[as decreasingly likely outcomes]" .

Carry out examining yourself:
	say "You're wearing basic clothing which is almost obsessively nondescript.  You're average in nearly every physical respect - something which didn't win you many accolades growing up, but serves you well in your efforts to blend in with the conformist population through which you now move.";
	stop.
	
Report examining yourself:
	unless the number of things worn by the player is zero:
		say "You're wearing [a list of things worn by the player].";
	say "[if the number of things carried by the player is zero]You are empty-handed.[otherwise]You're carrying [a list of things carried by the player]."

[Global disambiguation rules]
Does the player mean opening something that is open: it is unlikely.
Does the player mean inserting into the backpack: it is likely.

[global reporting rules]
Report examining someone:
	unless the noun is the player:
		say "[if the number of unconcealed things carried by the noun is zero][The noun] is empty-handed.[otherwise][The noun] is carrying [a list of unconcealed things carried by the noun]."



The revised can’t insert what’s not held rule is listed instead of the can't insert what's not held rule in the check inserting it into rules.

Check an actor inserting something into (this is the revised can’t insert what’s not held rule):
	if the actor is carrying the noun, continue the action;
	if the actor is wearing the noun, continue the action;
	if the player encloses the noun:
		if the noun is touchable, continue the action;
	if the noun is touchable, continue the action;
	stop the action.


[the next few rules deal with handling 'and'-linked noun lists]
Before reading a command: 
	now group-attach-complete is false;
	now group-combine-complete is false.

This is the and-command-stop rule:
	if group-combine-complete is true or group-attach-complete is true, stop the action.
	
The and-command-stop rule is listed before the basic accessibility rule in the action-processing rules.

The carefully announce items from multiple object lists rule is listed instead of the announce items from multiple object lists rule in the action-processing rules.

This is the carefully announce items from multiple object lists rule:
	if and-attaching:
		do nothing;
	else if and-combining:
		do nothing;
	otherwise:
		abide by the announce items from multiple object lists rule.



[giving and its exceptions]
The block giving rule is not listed in the check giving it to rules.

Check giving (this is the polite refusal of unwanted objects rule):
	unless the noun interests the second noun:
		if the second noun is Ponyfriend Chunky, say "Ponyfriend shakes his head violently and pushes [the noun] back to you." instead;
		if the second noun is Officer Prescott, say "Officer Prescott shakes his head and narrows his eyes at you, refusing [the noun]." instead;
		if the second noun is Sergeant Ramirez, say "The Sergeant draws back and looks at you suspiciously." instead;
		if the second noun is the shopper, say "The shopper avoids eye contact and scuttles past you." instead;
		if the second noun is the shopkeeper, say "She holds her hands up to ward you off, gives you a quick glare, and moves away." instead;
		otherwise say "[the second noun] doesn't seem interested in that at all." instead;
	continue the action.

[explosive residue rule]
The explosive residue rule is listed after the room description body text rule in the carry out looking rules.

This is the explosive residue rule:
	if the location is breached:
		say "There are the unmistakable signs of a blast.  Scarring and burn marks are everywhere, and a choking smell of explosives residues hangs in the air.[line break]".



[Zero-time actions]
Examining something is acting instant. Looking is acting instant.  Taking inventory is acting instant. Taking is acting instant.

instantiate is a truth state that varies.

The take visual actions out of world rule is listed before the every turn stage rule in the turn sequence rules.

This is the take visual actions out of world rule: 
	if acting instant, rule succeeds;
	if instantiate is true:
		now instantiate is false;
		rule succeeds.

[new check going/instant action]
Check going (this is the new can't go that way rule):
	if the room gone to is nothing:
		now instantiate is true;
		say "You can't go that way." instead.

The new can't go that way rule is listed instead of the can't go that way rule in the check going rulebook.

[Every turn rules]
Every turn:
	 if the suspicionState of the player is fugitive:
		if player is surveilled:
			unless the location is gassed:
				say "Police, hunting you for [the incriminatingAct], swarm into the area! You are tackled and handcuffed before you can react![line break]";
				end the story saying "You have been arrested!";


Every turn:
	if the player is wearing the Gas Mask:
		if player is surveilled:
			if the location is safe:
				say "Policemen rush into the area and grab you.  Wearing gas masks in public is against Homeland Security regulations!";
				end the story saying "You have been arrested!"

Every turn:
	repeat with activeMunition running through armed explosives:
		if the timer of activeMunition is 0: 
			now the activeMunition is exploding;
			an explosion occurs in 0 turns from now;
		now timer of activeMunition is timer of activeMunition - 1;


Every turn:
	if the location is gassed:
		unless the player is wearing the Gas Mask:
			say "You collapse, choking on the tear gas.  When the police arrive after it clears, they find you incapacitated and arrest you on suspicion of having set off the grenade!";
			end the story saying "You have been arrested!";
		otherwise:
			say "Billowing clouds of tear gas and smoke make it difficult to see."

Every turn:
	if player is surveilled:
		if the player is carrying the knife or the player is carrying the fire axe:
			say "Security surveillance spots you openly carrying a weapon.  Police rush in!";
			end the story saying "You have been arrested!".;
		if a random chance of 1 in 75 succeeds:
			say "[one of]A tiny surveillance camera you're sure you didn't see before swivels to follow you.[or]You hear a very quiet [italic type]beep[roman type] from somewhere you can't identify.[or]You see a small red light in the corner of your vision which vanishes as you turn to look at it.[purely at random]";
	if the player is out of doors:
		if a random chance of 1 in 75 succeeds:
			say "[one of]A black flittervan cruises slowly by above and vanishes from sight.[or]There is the sound of sirens in the distance.[or]You have the sudden feeling that you're being followed, but have no idea by whom.[or]A surveillance camera atop a nearby streetlight swivels silently.[or]With a brief flare of light from its boosters and a far-off rumble, a drop shuttle descends from the sky towards the semiballistic pads atop the far-off Reserve Bank Spacescraper.[or]With a brief flare of light from its boosters and a far-off rumble, a drop shuttle rises from the semiballistic pads atop the far-off Reserve Bank Spacescraper, vanishing into the sky.[as decreasingly likely outcomes]".



At the time when an explosion occurs:
	repeat with activeMunition running through exploding explosives:
		if the activeMunition is an ID bomb:
			if the location of the activeMunition is the location:
				say "There is a bright flash and nearly-ultrasonic whine as the ID Bomb discharges its capacitor through its radio chip! You feel a slight tickle in your skull from your dead Mit-Klein bottle circuits. The lights flicker.";
				now the player is suspect;
				now the activeMunition is inert;
			otherwise:
				say "The lights flicker very slightly.  In the distance, you hear murmuring.";
		otherwise if the activeMunition is the Breaching Charge:
			if the location of the Breaching Charge is the location:
				say "There is a flash of light - but before you can see anything else, the fireball from the Breaching Charge crushes and burns you![line break]";
				end the story saying "You have died.";
			otherwise if the location of the Breaching Charge is an adjacent room:
				say "There is a loud [bold type]BOOM[roman type] from nearby! The floor shakes.[line break]";
			otherwise:
				say "There is an explosion from some distance off![line break]";
			if the observation window supports the breaching charge:
				deactivate the Table of Atrium Hints;
				now the observation window is broken;
				change east exit of the Seating Area to the Atrium Ledge;
				change west exit of the Atrium Ledge to the Seating Area;
			now the location of the Breaching Charge is breached;
			remove the Breaching Charge from play;
		otherwise if the activeMunition is the tear gas grenade:
			if the location of the tear gas grenade is the location:
				say "With a bang and an enormous hiss, the gas grenade goes off and fills the area with a cloud of opaque smoke and tear gas!";
			now the location of the tear gas grenade is gassed;
			The tear gas dissipates in 4 turns from now;
			remove the tear gas grenade from play;

At the time when the tear gas dissipates:
	if the location is gassed:
		say "The gas clears and a crowd of police rushes into the area, grabbing everyone they can catch!";
		end the story saying "You have been arrested!";
	otherwise:
		repeat with gasSpot running through gassed rooms:
			now gasSpot is safe.		
		

At the time when the player incriminates:
	say "You're pretty sure the police are looking for you now for [the incriminatingAct].";
	now the suspicionState of the player is fugitive.
	

At the time when autodoors close:
	repeat with door running through open autodoors:
		say "The automatic door slides closed.";
		now the door is closed.
		
At the time when the message arrives:
	now messagesLeft is 10;
	now the messagePointer of the phone is 1;
	now messagesWaiting is true;
	the reminder happens in 5 turns from now;
	if the location is the location of the phone, say "There is a quiet tone from your phone[if the phone is enclosed by the player] and you feel a short vibration[end if], indicating that an SMS message has arrived.";

At the time when the reminder happens:
	unless the phone is fried:
		unless messagesWaiting is false:
			the reminder happens in 5 turns from now;
			if the location of the phone is the location of the player:
				say "A quiet tone from your phone indicates that you have unread SMS messages."
			
At the time when the phonewarn happens:
	unless the phone is fried:
		say "Your phone beeps softly as it starts hunting for a signal! You realize you can move back to Green Residential to prevent it finding a new network.";
		the phoneping happens in a random number from 30 to 60 turns from now.

At the time when the phoneping happens:
	unless the player is in GreenResidential:
		unless the phone is fried:
			if the player encloses the phone:
				say "Your phone gives a quick vibration[if the player is surveilled].  At the same time, you see a surveillance camera swing to point at you[end if].";
				the player incriminates in 3 turns from now;
				now the incriminatingAct is "being in possession of your phone when it was located on the phone network";
			otherwise:
				the phonegrab happens in 3 turns from now.		

At the time when the phonegrab happens:
	if Ponyfriend Chunky encloses the phone:
		if the player is near Ponyfriend Chunky:
			say "Two policemen rush up.  After looking around for a few seconds and consulting a handheld device, they make a beeline for Ponyfriend Chunky.  Before he can even protest, they grab him, handcuff him, and hustle him out of sight.";
			remove Ponyfriend Chunky from play;
	otherwise if the phone is in the location of the player:
		say "You see two police officers rush in and look around, consulting a handheld device.  After a few seconds, one of them spots your phone and slaps the other on the shoulder, pointing.  They grab it, look around suspiciously, and run off.";
		remove the phone from play;
	otherwise:
		remove the phone from play.

At the time when curfew message happens:
	if the mitklein is unhacked:
		say "The Green Residential curfew will begin in five minutes.  You'll need to be [if the bedroom has been visited and the player is out of doors]back [end if]inside, in an area which isn't under public surveillance, to avoid being arrested."

After looking when player is surveilled, say "There is a Public Surveillance Notice here."



Section 4 - Test Code - Not for release

When play begins:
	seed the random-number generator with 8942.

Bomb surveying is an action applying to nothing.
Understand "bomb survey" as bomb surveying.
Check bomb surveying:
	if there are no explosives in the location, say "No explosives in this room, sir!" instead.
Report bomb surveying:
	repeat with item running through explosives:
		say "[if disarmed]disarmed[else if armed]armed[else if inert]inert[end if] [item] - timer [timer of item] - location: [location of item][line break]";

Station checking is an action applying to nothing.
Understand "station check" as station checking.
Report station checking:
	say "The capsule is presently in [the station of the Capsule]. [paragraph break]The current Transit System is: [Transit System]."

Entraining is an action applying to nothing.
Understand "entraining" as entraining.
Report entraining:
	say "The list of entrained rooms is [list of entrained rooms]."

camchecking is an action out of world.
Understand "camcheck" as camchecking.

Carry out camchecking:
	If the ID camera is photoEnabled:
		say "Enabled.";
	otherwise:
		say "Not enabled."



Section 5 - Portable Objects (non-Scenery)

[kinds]

[parts of people]
A palm is a kind of thing. A palm is part of every person.  The description of a palm is "[if the player is not wearing the skin sample]Standard garden-variety palm.[otherwise]Your palm is hidden beneath a slightly wrinkled oblong patch of skin, lighter than your own, which has been stuck onto your hand." [BFR - FIX THIS (description based on whose palm]

A eye is a kind of thing.  A eye is part of every person.  The description of a eye is "Standard garden-variety eye."

[props]

An explosive is a kind of thing. It is portable. All explosives have an armedState. An explosive is usually disarmed. An explosive has a number called a timer. 
The description is "A length of metal with a button on the side. It has a 4-second fuse. [if disarmed]The bomb lies inert in your hand.[else if armed]The bomb beeps ominously.[else if inert]The bomb is blackened and useless from the force of the explosion.[end if]".
Before printing the name of an explosive: say "[armedState] ".
Before printing the plural name of an explosive: say "[armedState] ".
Understand the armedState property as describing an explosive.

A component is a kind of thing. A component has some text called item-id.

A biosample is a kind of thing. A biosample is usually small.

A garment is a kind of thing.  A garment is wearable.  A garment is portable.  
A jacket is a kind of garment.  A pair of pants is a kind of garment.  A shirt is a kind of garment.

After examining a garment:
	if the noun is tagged, say "There is an antitheft tag attached to [the noun]."

[objects - kinds]

An ID bomb is a kind of explosive. An ID bomb has a timer 1.  An ID bomb is small. An ID bomb can be working or fried.  An ID bomb is usually working. An ID bomb has some text called item-id.  An ID bomb always has item-id "M5". An ID bomb has some text called fryDescription.  The fryDescription of an ID bomb is usually "There is a series of bright sparking flashes and a puff of smoke as the ID bomb begins to melt![line break]".  The description is "A small ID bomb with a single button. [if disarmed]The arming LED is dark.[else if armed]The arming LED is blinking green at shortening intervals![else if inert]The ID bomb is now a chunk of burnt and useless circuitry.[end if]". 

After dropping an id bomb (called the bomb):
	say "Dropped.";
	if the bomb is armed:
		if the player is surveilled:
			now the incriminatingAct is "dropping that ID Bomb";
			the player incriminates in 1 turn from now.

chiptype is a kind of value.  The chiptypes are blank, attack, transponder and photo.
A memory chip is a kind of component.  A memory chip is usually portable.  A memory chip is tiny.  A memory chip has a chiptype. A memory chip is usually blank. A memory chip usually has item-id "M0". A memory chip has some text called Contents. The Contents of a memory chip is usually "blank". A memory chip can be working or fried.  A memory chip is usually working. A memory chip has some text called fryDescription.  The fryDescription of a memory chip is usually "There is a sizzling noise. The chip is now scorched and smoking slightly." The description of a memory chip is "This is a standard Memory chip- a small solid-state data storage device about the size of a coin.  Data can be stored to a Memory chip by most electronic devices and computers.[if fried]  This chip is blackened and scorched; the magic smoke appears to have been released.[otherwise if attack]   This memory chip has been programmed with the payload of a Klein-blaster virus.  If there was a way to transmit this payload to nearby MitKlein encapsulations, you'd really have something powerful.[otherwise if photo]  This memory chip seems to contain image data.[otherwise if transponder]  This memory chip appears to contain a flitter's transponder code.[end if]".
Understand the chiptype property as describing a memory chip.

Before printing the name of a memory chip: say "[chiptype] ".
Before printing the plural name of a memory chip: say "[chiptype] ".

A broadcast chip is a kind of component.  A broadcast chip is usually portable.  A broadcast chip is tiny. A broadcast chip can be working or fried. A broadcast chip is usually working. A broadcast chip always has item-id "M1". A broadcast chip has some text called fryDescription.  The fryDescription of a broadcast chip is usually "There is a sizzling noise. The chip is now scorched and smoking slightly." A broadcast chip is tiny.  The description of a broadcast chip is "This is a broadcast chip - a small solid-state radio about the size of a coin.  These can be found in most portable electronics these days.  Usually powered by small batteries in phones or car keys, these generally have a range of a few meters.  There are leads on the chip for connecting a data source and a power source.[if fried]  This chip is blackened and scorched; the magic smoke appears to have been released."

An antitheft tag is a kind of container.  An antitheft tag is portable.  An antitheft tag is small. An antitheft tag is usually closed and assembled. An antitheft tag can be working or fried.  An antitheft tag is usually working. An antitheft tag has some text called fryDescription.  The fryDescription of an antitheft tag is usually "There is a hissing noise. The plastic of the antitheft tag begins to melt." An antitheft tag is always small. An antitheft tag has a carrying capacity 1. A memory chip is in every antitheft tag. The description of an antitheft tag is "This is a small rubberized sealed plastic transponder, perhaps a centimeter thick and two by four centimeters square, with a complex security mechanism for attaching it to products. It is used for inventory control as well as theft prevention; it cannot be removed from a garment without the associated removal tool.[if disassembled]  This tag has been cut open.[end if][if fried] The tag has melted slightly.  Inside you can see what looks like the remains of some electronics, but the whole mess is melted together now."


An antitheft tag is part of every garment.

Rule for printing room description details of an antitheft tag: stop.

Understand "tags" as antitheft tags.

Check cutting an antitheft tag with something:
	unless the second noun is the knife, say "That won't cut the tag." instead;
	if the noun is a part of a garment (called the swag), say "The plastic side of the tag is folded over, attached to [the swag].  You can't cut it." instead;
	if the noun is fried, say "The tag is melted into a single mass of plastic." instead;
	if the noun is disassembled, say "That's already been opened." instead;
	if the player is surveilled:
		say "Security surveillance spots you openly carrying [the second noun].  Police rush in!";
		end the story saying "You have been arrested!".;


Carry out cutting an antitheft tag (called the cuttee) with something:
	say "You carefully cut open the tag with your knife and peel back the plastic to reveal [a list of things in the cuttee].";
	now the noun is disassembled;
	now the noun is open;
	now the noun is unopenable;
	rule succeeds.

Does the player mean examining an antitheft tag which is part of something carried by the player: it is likely.
Does the player mean examining an antitheft tag which is carried by the player: it is likely.
Does the player mean cutting an antitheft tag: it is likely.

instead of cutting an antitheft tag:
	say "You'd need to cut [the noun] with something; you can't do it bare-handed." instead.


Instead of removing an antitheft tag (called the tag) with the tag remover:
	say "You deftly remove the tag with the tag remover.";
	now the tag is carried by the player;
	rule succeeds.

Check inserting into an antitheft tag:
	Unless the second noun is tiny, say "That won't fit!" instead.

Instead of closing an antitheft tag:
	if the noun is closed:
		say "That's not something you can close." instead;
	otherwise:
		say "The damage looks permanent." instead.
		
Check taking an antitheft tag:
	if the noun is part of a garment:
		say "You can't remove that bare-handed; you'll need to use the appropriate tool.";
		stop.


A Klein Blaster is a kind of component.  A Klein Blaster is portable.  A Klein Blaster is tiny. A Klein Blaster can be working or fried.  A Klein Blaster is usually working.  A Klein Blaster has some text called fryDescription.  The fryDescription of a Klein Blaster is usually "Sparks fountain from the delicate device.  You watch in horror as your carefully-built module fries itself."  A Klein Blaster always has item-id "M3". The description of a Klein Blaster is "A combination of a Broadcast chip and a Memory chip which has been programmed with the attack payload.  It needs a strong burst of power to perform its task."

A disposable camera is a kind of component. A disposable camera is small. A disposable camera can be assembled or disassembled.  A disposable camera can be working or fried.  A disposable camera is usually assembled.  A disposable camera is usually working.  A disposable camera always has item-id "M4". A disposable camera has some text called the Contents.  The Contents of a disposable camera is usually "blank". The description of a disposable camera is "The disposable camera is a cheap piece of integral electronics, made cheaper by the fact that any portable or phone has a perfectly good camera in it.  It has a built-in flash, and is typically linked to a cell phone or other handheld for displaying and storing photos.[if disassembled]  This camera has been cracked open, revealing its internal electronics.  A capacitor (for the flash unit) and battery are barely visible buried in the components, as are numerous circuit connection points.[end if]"

Instead of opening a disposable camera:
	say "You don't have the strength in your fingers to open [the noun]."


[objects - specific]

[player/people]
The MitKlein is part of the player.  The MitKlein is scenery. The MitKlein can be hacked or unhacked.  The MitKlein is unhacked.

Instead of examining the MitKlein, say "You can't see any such thing." instead.

[props]
The backpack is a player's holdall. The backpack is wearable. The player is wearing the backpack. The backpack is a container.  It is open. The description is "A black rip-stop backpack which you normally use for toting tools and books."
Understand "pack" as the backpack.
Understand "bag" as the backpack.

The newspaper is a thing.  The newspaper is small.  The description is "The local newspaper, printed on plasfax.  Some retro individuals still prefer to hold their news in their hands."

After examining the newspaper for the first time:
	say "[bracket]If you want to read the newspaper (as opposed to just looking at it) try READ NEWSPAPER.[close bracket][line break]"
	
Instead of reading the newspaper:
	say "Today[apostrophe]s front-page headline is: [bold type]Homeland Security convention to be held this week at the Reserve Bank Spacescraper[roman type].   'The best and the brightest of the various Homeland Security agencies will meet in the Reserve Bank Atrium this week to receive presentations on new security initiatives and to discuss the state of the art in security technology.'[paragraph break]The next headline reads: [bold type][headline in row newsIndex of the Table of Stories][roman type][line break]The story itself continues: '[newsstory in row newsIndex of the Table of Stories]' At the bottom, a small postscript reads [bold type]Would you like to know more?[roman type]  [url in row newsIndex of the Table of Stories]  [paragraph break]Reading the story about the Homeland Security convention, the thought of all those Homeland Security drones in one place makes you grind your teeth.  Then, however, a vision of all those heavily-secured workers with dead MitKlein bottles replaces it, and you have some difficulty wiping the resulting smile from your face.  If only..."
Understand "paper" as the newspaper.

The pamphlet is small. The description of the pamphlet is "A pamphlet is from the Department of Homeland Security."

After examining the pamphlet for the first time:
	say "[bracket]If you want to read the pamphlet (as opposed to just looking at it) try READ PAMPHLET.[close bracket][line break]"
	
Instead of reading the pamphlet:
	say "It seems that the DHS believe the occupants of Apartment 1 are due to have a child any day now.  As such, the pamphlet is meant to inform them of their duty as a citizen to ensure their child has his or her Mitsui-Klein encapsulation properly implanted by their birth hospital.  Along with two or three not-so-veiled hints as to the penalties for avoiding implantation, the pamplet also contains a very familiar boilerplate description of the MitKlein Bottle which you and all your fellow citizens carry within your skulls.  Inserted at birth, the MitKlein becomes embedded in the bone structure of the skull as the fontanelles close and harden.  It contains just enough electronics to act as a transponder which will identify its owner, securely, to any nearby chip scanner over a range of perhaps five meters or less.  The pamphlet cheerily explains that without such a chip, your child will be severely disadvantaged and unable to use basic modern services."

After examining the pamphlet:
	activate the Table of MitKlein hints.

The receive chip is a component.  The receive chip is in the pager.  The receive chip is tiny. The receive chip can be working or fried.  The receive chip is working.  The receive chip has some text called fryDescription.  The fryDescription of the receive chip is "There is a sizzling noise. The chip is now scorched and smoking slightly."  The receive chip is tiny.  The description of the receive chip is "This is a receive chip - a small solid-state radio about the size of a coin.  These can be found in most portable electronics that need to receive distant broadcasts, able to pull in signals from beyond a few meters.  There are leads on the chip for connecting data lines and a power source.[if fried] This chip is blackened and schorced; the magic smoke appears to have been released."

The tear gas grenade is in the police flitter. The tear gas grenade is an explosive.  The tear gas grenade is small. The tear gas grenade has a timer 1.  The tear gas grenade can be working or fried.  The tear gas grenade is working.  The description of the tear gas grenade is "A small canister roughly the side of a soda can with a tab on one end.  Stenciled text reads 'M7A4 RIOT - SMOKE/CS'."

The gas mask is on the wall rack.  The gas mask is wearable.  The description of the gas mask is "This is an industrial breath mask meant to protect the wearer against fumes from solvents or other dangerous chemicals.  A clear mask covers the entirety of the face, and a filter canister covers the mouth for breathing."

After taking the gas mask for the first time:
	say "Homeland Security frowns on people wearing gas masks in public places.  You should exercise caution and not be seen wearing it.";
	continue the action.

There is a blue jacket on the racks.  The blue jacket is a jacket. The description is "A dark blue jacket, very bland cut, with black snap closures and side pockets.  You almost expect to see a name sewn on the front at the breast in gold thread.  It's probably a size too large for you."

There is a red jacket on the racks.  The red jacket is a jacket. The description is "This jacket is a wine red sports coat.  You had thought this style vanished in the 1970s, but here it is.  It is several sizes too small for you."

There is a white shirt on the racks.  The white shirt is a shirt. The description is "A white button-down shirt, almost ironically formal."

There is a green shirt on the racks.  The green shirt is a shirt. The description is "Hunter green, this pullover is probably the only thing Garb-oh sells that you'd be caught wearing."

There is a blue pair of pants on the racks.  The blue pair of pants is a pair of pants. The description is "Dark blue formal trousers.  Not your thing at all, and look uncomfortable."

There is a brown pair of pants on the racks. The brown pair of pants is a pair of pants. The description is "Brown dungarees are never really in style, ergo they can't ever really be out of style either."  

The breaching charge is an explosive.  The Breaching Charge has a timer 4.  The description of the Breaching Charge is "[if disarmed]A gray-green brick of blasting plastic, soft and slightly tacky.  There is a detonator integrated into one side of the brick; an arming tab extends out, waiting to be pulled.[otherwise]A menacing-looking block of blasting plastic.  The detonator is hissing slightly.  The arming tab has been pulled."
Understand "charge" as the breaching charge.

The breaching charge is on the metal door.

The fire axe is on the wall rack.  The description is "Made of metal and painted red save for the blade, this one-piece tool is for emergency use by safety personnel."
Instead of inserting the fire axe into the backpack, say "The axe is far too large to fit in there."

After taking the fire axe for the first time:
	say "This axe is large enough to run afoul of local weapons laws.  It would be a bad idea to let it be seen where the police are watching."

The multitool is carried by the player.  The multitool is small. The description is "Your pocket multitool.  Has various pliers and attachments and, in a pinch, can probably do 80 percent of what a full toolbox could.  One exception is that in order to remain legal, it doesn't have any cutting edges larger than your fingernail.  You are paranoid that one day you'll forget and try to get on an airplane with it and despite that fact that'll be the last you'll see of it, so you've etched a PO Box address and 'BUSINESS REPLY MAIL' onto it."
Understand "tool" as the multitool.

After examining the multitool for the first time:
	say "[bracket]The multitool is useful for prying or as a pliers.  To use it, try commands with the phrase WITH MULTITOOL - for example, OPEN <NOUN> WITH MULTITOOL or REMOVE <NOUN> WITH MULTITOOL.[close bracket]".

Check opening a door with the multitool:
	say "The multitool is capable, but not that capable." instead.
	

The watch is wearable.  The watch is carried by the player. The watch is small. The watch can be working or fried.  The watch is working.  The watch has some text called fryDescription.  The fryDescription is "The watch sparks slightly and the face darkens." The description of the watch is "A cheap digital, your watch [if working]reads [time of day].[otherwise]appears to be dead."

After examining the watch for the second time:
	if the watch is working:
		unless the watch is worn by the player:
			say "The watch might be more useful if worn."

Understand "put on" as wearing.

Carry out wearing the watch:
	if the watch is working:
		 now the left hand status line is "Time: [time of day] / [location]";
		continue the action.
	
Carry out taking off the watch:
	now the left hand status line is "[location]";
	continue the action.
	
Instead of setting the watch to something:
	say "It uses a radio signal from an atomic clock to maintain the correct time automatically.  It has no controls." instead.

[phone]
The phone is carried by the player.  The phone is portable.  The phone is small.  The phone can be working or fried.  The phone is working.  The phone can be unviewed or viewed.  The phone is unviewed. The phone has a number called the messagePointer.  The messagePointer is 0. The phone has some text called fryDescription.  The fryDescription is "Almost immediately, sparks begin to dance wildly around the rim of the phone! After a few seconds more, the screen goes dead black with a very final [italic type]ZZT[roman type] noise." The description of the phone is "A standard candybar model with a nice screen.  [if fried]At least, the screen was nice; now it's stone dead.[otherwise if working]Although you've disabled its voice calling functionality to make it less distracting, the lock screen is still active and tells you it is [time of day].[alertMessage][end if]  The back is blank metal save for a tiny icon of a waterdrop with a slash across it.[if ponyfriend chunky encloses the phone]  Ponyfriend Chunky has it now, and seems to be tapping energetically at the screen."


To say alertMessage:
	if messagesLeft is greater than 0:
		say " A small line of text at the top of the screen reads '[messagesLeft] new message[if messagesLeft is greater than 1]s[end if] waiting.'[no line break]";
	otherwise:
		say "[no line break]".

After examining the phone when messagesWaiting is true:
	say "[first time][bracket]You can read your messages with READ SMS or READ MESSAGES. Issue the same command again to read subsequent messages.[close bracket][line break][only]".

Check opening the phone:
	say "It's a sealed unit." instead.

Check cutting the phone:
	say "It's quite hard and slick.  You'd just hurt yourself." instead.
	
Check switching on the phone:
	if the phone is working, say "It's already on." instead;
	if the phone is fried, say "It's stone dead." instead.
	
Check switching off the phone:
	if the phone is working, say "There's no point.  It can be tracked even if it's 'off'." instead;
	if the phone is fried, say "It's stone dead." instead.

Understand the command "read" as something new.
Reading is an action applying to one visible thing.    Reading is acting instant.
Understand "read [something]" as reading.
Understand "sms" as the phone.
Understand "messages" as the phone.
Understand "message" as the phone when the messagePointer of the phone is not 0 and the phone is carried by the player and the drop message is not carried by the player.

Check reading:
	unless the noun is the phone, try examining the noun instead;
	if the player is near the phone:
		unless the phone is carried by the player:
			say "(taking the phone)";
			try taking the phone;
	[unless the phone is carried by the player, say "You don't have your phone." instead.]

Carry out reading:
	if the phone is fried:
		say "The phone is stone dead." instead;
	if there is no message corresponding to a number of the messagePointer of the phone in the Table of SMS Messages, say "You have no SMS messages." instead;
	say "Message [messagePointer] reads: [the message corresponding to a number of the messagePointer of the phone in the Table of SMS messages][line break]";
	increment the messagePointer of the phone;
	if the messagesLeft is greater than 0:
		decrement messagesLeft;
	if the messagePointer of the phone is greater than 10:
		now the messagePointer of the phone is 1;
		if messagesWaiting is true:
			now messagesWaiting is false;
		activate the Table of MitKlein Hints;
		activate the Table of SMS Hints.


[pager]
The pager is a container.  The pager is closed.  The pager is small. The pager is openable.  The description of the pager is "It looks like a pretty old-school radio pager.  It also looks like it isn't working; the display is fogged over, there are no lights on it, and one of the two buttons on the front is missing. There is a small sliding panel on the back[if closed].[otherwise], which is open."

Check inserting into the pager:
	unless the noun is the receive chip, say "That won't go in there." instead.

Check switching on the pager:
	say "It's stone dead." instead.
	
Check cutting the pager:
	say "It's quite hard and slick.  You'd just hurt yourself." instead.
	
Before opening the pager:
	unless the player is carrying the pager, try silently taking the pager;
	unless the player is carrying the pager, stop the action.


The cryopack is a container.   The cryopack is in the Hospital Lab.  The cryopack has carrying capacity 1.  The cryopack is openable. The cryopack is closed.  The cryopack can be either operating or dead.  The cryopack is operating. The description of the cryopack is "This is a roughly fist-sized container, white with red crosses and an instructions sticker with WARNING! printed at the top.  [if operating]It feels slightly cold to the touch.  A green LED labelled 'OPERATING' is lit.[otherwise]A red LED labelled 'INACTIVE' is lit."

Understand "pack" as the cryopack.

After opening the cryopack: 
	if the cryopack is operating:
		say "You open the cryopack. A small cloud of chill and condensation escapes from the cryopack into the surrounding air.  The green LED on it goes out; a red one lights up[if the cryopack contains the skin sample]. There is a skin sample inside the cryopack.[otherwise].[end if]";
	continue the action.

Report opening the cryopack:
	if the cryopack is operating:
		now the cryopack is dead;
		stop;
	otherwise:
		continue the action.


The warning sticker is part of the cryopack. The warning sticker is scenery.  The description of the warning sticker is "WARNING: This is a single-use cryogenic transport pack.  Opening the cryopack will disrupt the superconductor charge and disable the cryopack until it is recharged for its next use."
Understand "instructions sticker" as the warning sticker while the cryopack is visible.
Understand "instructions" as the warning sticker while the cryopack is visible.

The skin sample is a biosample.  The skin sample is wearable.  The skin sample can be valid or invalid. The skin sample is invalid. The skin sample can be frozen, warm, slightly green or decomposing (this is its freshness property). The skin sample is frozen. The description of the skin sample is "Disgusting - but also kind of neat.  This is a small [freshness] oblong of human skin, perhaps four by eight centimeters.  One side is clearly the 'outside' - folds and wrinkles are visible.  The other side is rough and appears to contain cauterized blood vessels."
Before wearing the skin sample, say "Fortunately it's sticky enough to adhere to your palm."

The biogen feedstock is a biosample.  The biogen feedstock is in the feed slot. The description of the biogen feedstock is "This is a small cube of material which resembles freeze-dried beef.  It is a standard supply unit for biotech synthesizers."

The lens case is a container.  The lens case is in the delivery slot. The lens case is small. The lens case has carrying capacity 1. The lens case is openable.  The lens case is closed and transparent.  The description of the lens case is "A small clear plastic cylinder with a built-in rest for a contact lens inside."

Check inserting into the lens case:
	unless the noun is the contact lens, say "That won't go in there!" instead;
	continue the action.	

The contact lens is wearable. The contact lens is tiny. The description of the contact lens is "Larger than a regular contact lens, this example is discolored around the edges although clear in the middle. It's still small enough that you're afraid to drop it, for fear you'd never find it again."
Instead of examining the contact lens when the player is wearing the contact lens, say "While it's in your eye?  That'd be a neat trick!"
Instead of dropping the contact lens:
	say "Oh, no! The contact lens slips from your fingers and flutters away![line break]";
	remove the contact lens from play.
	
The tissue sampler is in the ambulance.  The tissue sampler is portable.  The tissue sampler has some text called tissueDonor.  The tissueDonor is "blank". The description is "This is a tissue sampler, used by hospital and emergency medical technicians for scanning skin or tissue in order to permit a tissue generator to produce compatible skin grafts. It is flat and translucent, and is intended to be laid against the skin to be replicated."

The thermos is a container.  The thermos is on the vending system.  The thermos is openable and closed.  The thermos is portable.  The thermos has carrying capacity 4. The description is "A stainless steel vacuum flask, this all-metal thermos excels at keeping hot things hot and cold things cold.  It should be very durable in addition to making an excellent sealed container - even the top is steel."

The flitterkey is a thing.  The flitterkey is small. The flitterkey can be either working or fried.  The flitterkey is working.  The flitterkey has some text called fryDescription.  The fryDescription is "With a slight hissing noise, the ballistic plastic of the flitter key begins to melt."  The description is "the flitterkey is a scuffed, hardened ballistic plastic transponder.[if fried] It looks like it has been partially melted; scorched electronics poke through the uneven plastic shell."

[car key]
The car key is a container.  The car key is small. The car key is unopenable. The car key is closed.  The car key has carrying capacity 2.  The car key can be either working or fried.  The car key is working. The car key has some text called fryDescription.  The fryDescription is "With a slight hissing noise, the rubberized plastic of the car key begins to melt." The description is "This 'key' is really a small rubberized, sealed plastic fob which automatically unlocks the car it is paired with when it is within range.  You have no idea where the appropriate car might be, however.[if fried]  It may not do anything ever again, in fact; it looks like it has melted slightly.  Some electronic bits can be seen in the mass of deformed plastic.[otherwise if open] The plastic has been cut away from one end of the key, revealing two component slots."

Rule for printing room description details of the closed car key: stop.

In the car key is a broadcast chip.
In the car key is a transponder memory chip.  [The memory chip is transponder.]

Check cutting the car key with something:
	unless the second noun is the knife, say "That won't cut the car key." instead;
	if the noun is fried, say "The key is melted into a single mass." instead;
	if the noun is disassembled, say "That's already been opened." instead;
	if the player is surveilled:
		say "Security surveillance spots you openly carrying [the second noun].  Police rush in!";
		end the story saying "You have been arrested!".;


Carry out cutting the car key with something:
	say "You carefully cut open the car key with your knife and peel back the rubber to reveal [a list of things in car key].";
	now the noun is disassembled;
	now the noun is open;
	now the noun is unopenable;
	rule succeeds.

instead of cutting the car key:
	say "You'd need to cut [the noun] with something; you can't do it bare-handed." instead.

Check inserting into the car key:
	Unless the noun is tiny, say "That won't fit!" instead;
	Unless the noun is a memory chip or the noun is a broadcast chip or the noun is a receive chip, say "The slots in the car key are made for individual chips." instead;
	continue the action.

Instead of closing the car key:
	if the noun is closed:
		say "That's not something you can close." instead;
	otherwise:
		say "The plastic appears to be cut away. The damage looks permanent." instead.



[ID camera]
The ID camera is a thing. The ID camera is in Booking.  The ID camera is small. The ID camera is fixed in place.  The ID camera can be working or fried.  The ID camera is working.  The ID camera has some text called the fryDescription.  The fryDescription of the ID camera is "The camera sits almost peacefully for a few seconds before a [bold type]POP[roman type] indicates that something inside it has gone very wrong." The ID camera has some text called Contents.  The Contents of the ID camera is usually "blank". The description is "A battered but serviceable device, this is a high resolution holocamera used by the police for recording suspects' identities.  It can either record to a local server if one is available, or to a standard Memory chip placed in its memory slot.[if the ID camera is fixed in place] It is securely attached to the countertop with a security chain to prevent anyone from walking off with it.[otherwise]. Although it was once chained down, the chain seems to have been cut; a broken piece hangs off the camera."
The camera chain is part of the ID camera.  The description of the camera chain is "A thin chain, almost a cable.  It has been visibly repaired in the past."
The film slot is a container.  The film slot is part of the ID camera.  The film slot is unopenable and open. The carrying capacity of the film slot is 1.  The description of the film slot is "A slot for a standard Memory chip.[unless empty] A chip is currently in the slot.[end if]".

Check inserting into the film slot:
	unless the noun is a memory chip, say "That won't fit." instead.

Understand "memory slot" as the film slot when the player is carrying the ID camera.

Instead of inserting into the id camera:
	try inserting the noun into the film slot instead.

Instead of opening the ID camera:
	say "[The noun] is a sealed unit."

Understand "the chain" as the camera chain.
Understand "security chain" as the camera chain.

Check cutting the camera chain with the tag remover:
	say "Looking around to check for watchers, you snip through the ID camera security chain with the tag remover!";
	now the ID camera is portable;
	rule succeeds.

Instead of cutting the camera chain:
	say "What do you want to cut [the noun] with?" instead.
		
Check taking the ID camera:
	if the ID camera is fixed in place:
		say "The camera is chained down securely." instead;
	otherwise:
		continue the action.


The tag remover is in the sales drawer.  The tag remover is a thing.  The tag remover is small. The description is "This is a combination antitheft tag remover and wirecutter, useful for removing antitheft tags or pesky labels from products."

The knife is on the workbench.  The knife is a thing. The knife is small. The printed name of the knife is "lockblade knife".  The description is "This is a battered but extremely sharp folding lockblade knife."

Understand "lockblade" as the knife.

After taking the knife for the first time:
	say "This knife is large enough to run afoul of local weapons laws.  It would be a bad idea to let it be seen where the police are watching."

Check opening the knife:
	say "You flip the blade open and stare at it for a few seconds, mesmerized by the clean steel, before closing it since you don't have a task for it right now." instead.

The soldering iron is on the workbench. The soldering iron is small. The soldering iron is portable.   The description is "A portable soldering iron.  It uses a sealed battery rather than requiring a power connection."

Instead of switching on the soldering iron:
	say "You touch the button on the soldering iron and wait for a moment as it rapidly turns cherry-red, then release the button and watch it cool."

The solder is a thing. The solder is on the workbench.  The solder is small. The indefinite article is "some".  The solder can be either working or fried. The solder is working. The solder has some text called the fryDescription.  The fryDescription of the solder is "With an audible bubbling hiss, the solder melts into a puddle."  The description is "[if working]A small spool of resin-cored solder.[otherwise]A melted disc of useless solder."


[tablet computer]
The tablet computer is on the workbench.  The tablet computer is medium.  The tablet computer can be hacked or unhacked.  The tablet computer is unhacked. The description is "The tablet is a generic, slightly more fashionable than functional portable tablet computer. It is active, with the screen lit.[unless the chipslot is empty] There is a chip in the chipslot."
The screen is part of the tablet computer.  The screen is scenery.  The description is "[screen-description].".
The reboot button is part of the screen.  The reboot button is scenery.  The description is "A stylized on-screen button to restart the computer.  This model will search for a network book device when rebooted."

Understand "restart button" as the reboot button.
The chipslot is part of the tablet computer.  The chipslot is a container.  The chipslot is scenery. The chipslot is open.  The chipslot has carrying capacity 1.  The description is "The chipslot is used for external storage.  Right now, its status LED is blinking, indicating that it has been set to autosave data[if empty], but no Memory chip is in the slot.[otherwise] to the Memory chip in the slot."

Understand "tablet" as the tablet computer.
Understand "slate" as the tablet computer.
Understand "download slot" as the chipslot.
Understand "slot" as the chipslot when the location is the location of the tablet computer.
Understand "file" as the screen.
Understand "text" as the screen when the tablet computer is hacked and the tablet computer is visible.

Instead of unlocking the tablet computer:
	if the tablet computer is unhacked:
		say "You don't have the password." instead;
	otherwise:
		say "It's not locked." instead.

Instead of switching on the tablet computer:
	say "It's already on." instead.
	
Instead of switching off the tablet computer:
	say "It's an always-on model." instead.

Instead of reading the tablet computer:
	try examining the screen instead.
	
Instead of inserting into the tablet computer:
	try inserting the noun into the chipslot instead.

Check inserting into the chipslot:
	unless the noun is tiny, say "That's not even close to the right size and shape." instead;
	unless the noun is a memory chip, say "That won't fit in the slot - it's the wrong shape." instead;
	if the noun is attack, say "Its already programmed." instead.
	
After inserting into the chipslot:
	say "The Download light flashes red intermittently for a few seconds before returning to a regular blinking green.";
	now the item-id of the noun is "M2";
	now the Contents of the noun is "The Signal";
	now the chiptype of the noun is attack.
	
To say screen-description:
	if the tablet computer is unhacked:
		say "The tablet is presently displaying a lock screen.  There is a reboot button in the corner of the screen";
	otherwise if the tablet computer is hacked:
		say "The tablet is displaying a static screen, which instructs you to place a memory chip into its chipslot to download the attack program".

Rebooting is an action applying to one touchable thing.
Understand "reboot [something]" as rebooting.
Understand "restart [something]" as rebooting.

Instead of pushing the reboot button, try rebooting the tablet computer instead.
Instead of touching the reboot button, try rebooting the tablet computer instead.

Understand the command "click" as something new.
Understand "click [something]" as touching.
Understand "tap [something]" as touching.

Check rebooting:
	unless the noun is the tablet computer, say "That can't be rebooted." instead;
	if the tablet computer is hacked, say "The tablet is currently frozen by the attack program download and refuses to reboot." instead.
	
Carry out rebooting:
	if the tablet computer is netbootable:
		say "The screen flickers as the tablet reboots.  The tablet pauses as it finds the boot server that has been installed on your phone, and then there is a quick series of flashes before a screen full of text comes up!";
		now the tablet computer is hacked;
		remove the reboot button from play;
		activate the Table of MitKlein hints;
		if the chipslot contains a memory chip (called the target):
			say "The Download light flashes red intermittently for a few seconds before returning to a regular blinking green.";
			now the item-id of the target is "M2";
			now the Contents of the target is "The Signal";
			now the target is attack;
	otherwise:
		say "The tablet screen flickers.  A brief boot cycle passes by dizzyingly fast, and the tablet returns to the login screen.";
	

Nearness relates a thing (called X) to a thing (called Y) when the location of X is the location of Y. The verb to be near implies the nearness relation.

To decide if the tablet computer is netbootable:
	unless the tablet computer is near the phone, decide no;
	unless the phone is working, decide no;
	if the messagePointer of the phone is 0, decide no;
	decide yes.


The harness is a component.  The harness is in the Police Flitter. The item-id of the harness is "M7". The harness is wearable.  The description of the harness is "A strong harness made of black industrial strapping.  It has an attach point in the center of the back - a set of what appear to be metal locking hooks.  It fastens with sturdy plastic buckles.  It is probably used for safety by police when their flitter doors are open or to lift people into the flitter."

The spool is a component.  The spool is on the Powered Platform. The item-id of the spool is "M6". The spool is medium.  The description of the spool is "A metal spool of what appears to be very strong cable, with a winding mechanism at its center.  The mechanism is locked.  There is a carabiner at the end of the cable, but it's locked into the spool.[if the spool is enclosed by the powered platform]  It's lying near the center of the platform.[end if]"

The descender is a thing.  The descender is in limbo. The descender is wearable. The descender has some text called item-id.  The item-id of the descender is "M8". The description of the descender is "This is a small but strong-looking harness meant to be worn around the torso.  A large spool of narrow but strong-looking cable is attached to it, ending in a spliced loop.[if the player is wearing the descender]  It's currently around your midsection, and is a bit tight.[end if][if the cable is tied]  The end of the cable is looped around the tree trunk, secured with the carabiner.[end if]".
The cable is a part of the descender.  The cable can be tied or untied.  The description is "A spool of extremely strong cable attached to the descender with a spliced-in carabiner at the end.[if tied]  One end of the cable is looped around the scarred tree and attached with the carabiner."

Understand "carabiner" as the cable.

Check tying the cable to something:
	unless the second noun is the scarred tree:
		say "You can't tie the descender cable to that." instead;
	if the cable is tied:
		say "It's already attached." instead;
	say "You pass the cable around the tree and snap the carabiner on the end around it, firmly attaching the cable to the tree.";
	now the cable is tied;
	stop.

Instead of untying the cable:
	try untying the descender. 

Instead of tying the descender to something:
	try tying the cable to the second noun instead.


Instead of tying the harness to something:
	if the descender is touchable:
		try tying the cable to the second noun instead;
	otherwise:
		say "You can't tie the harness to anything." instead.
		
Understand the command "untie" as something new.
Understand "untie [something]" as untying.
Understand "detach [something]" as untying.

Untying is an action applying to one touchable thing.

Check untying:
	unless the noun is the descender:
		say "You can't detach that." instead;
	unless the cable is tied:
		say "It's not attached to anything." instead.
		
Carry out untying:
	say "You open the carabiner and unhook the cable, detaching it.";
	now the cable is untied.


The maintenance camera is a disposable camera. The Maintenance camera is in the Utility Closet.  "A scuffed disposable camera with a building property sticker on it is here.  Written on it in marker are the words 'DOCUMENT ALL MAINTENANCE ITEMS.'"

The lost camera is a disposable camera.  The Lost camera is in Government Square North.  "It seems a tourist has left behind a cheap disposable camera, which rests on the sidewalk here."

The medical camera is a disposable camera.  The medical camera is in the Ambulance.  "A cheap camera, no doubt used to document injuries or accident scenes, is here."



Section 6 - Fixed/Scenery Objects

[kinds]

[boring stuff]
Unimportant stuff is a kind of thing. Unimportant stuff is scenery. 
Instead of doing something other than examining or taking unimportant stuff, say "You've really got better things to do that trying to do that." 
Instead of examining unimportant stuff, say "[one of]That won't help you.[or]You examine that but find nothing of interest.[purely at random]".
Instead of taking unimportant stuff, say "You can't do that."
		
The ground is a backdrop.  The ground is everywhere.
Instead of examining the ground:
	try examining down instead.
	
[rooms]

[bathrooms] [CHECK: inform recipe book, Ex. 438, Ch. 8.5]
A sink is a kind of supporter.  It is scenery.   The description is "Looks like a completely normal sink."

Check switching on a sink:
	say "You turn on the sink.  Water flows from the faucet for a few seconds before stopping.";
	stop.
	
A stall is a kind of thing.  It is scenery.  The description is "Clean and relatively upscale, you still don't want to use it."
Instead of entering a stall, say "You really don't want to use it." instead.

A restroom is a kind of room.  The description of a restroom is "A nondescript bathroom containing a sink, a mirror and a stall."  A sink is in every restroom.  A stall is in every restroom.

Understand "toilet" as the stall when the location is a restroom.

Flushing is an action applying to one touchable thing.
Understand "flush [something]" as flushing.

Check flushing:
	unless the noun is a stall, say "You can't flush that." instead.

Carry out flushing:
	say "There is a brief gurgling sound.  If only your problems could be so easily disposed of."

[foodstore]
A counter is a kind of supporter.  It is scenery. It is fixed in place. The description of a counter is "A combination display and serving counter."

A foodstore is a kind of room.  The description of a foodstore is "Standard food service establishment with a counter."
A counter is in every foodstore.

[foodstand]
A foodstand is a kind of backdrop.  The description of a foodstand is "A self-contained serving area."

Instead of entering a foodstand, say "You can't go behind the counter." instead.


[autodoors]
An autodoor is a kind of door. An autodoor is always scenery. The description of an autodoor is "This is an automatic sliding door.  It is connected to an eye scanner which is able to, if so configured, determine if you are allowed passage by scanning your iris pattern as you approach. The door is presently [if the noun is open]open.[otherwise]closed."
Understand "autodoor" as a door.
Before going through an autodoor, the autodoors close in zero turns from now.
Before opening an autodoor, the autodoors close in zero turns from now.

An Eye Scanner is a kind of thing. An Eye Scanner is part of every autodoor. An Eye Scanner is scenery. The description of the Eye Scanner is "Above and to the right of each automated door is a Door Scanner. These spherical devices have a glass plane inset in the side facing you, and an eerie red light flickers deep inside each as it waits for you to present a recognizable iris to the scanning laser within.  Until you do so, the door controlled by the scanner will remain closed."
Understand "the scanner" as an Eye Scanner.


[Public Surveillance notice]
The Public Surveillance Notice is a backdrop.  The description of A Public Surveillance Notice is "A mounted sign which reads: PUBLIC SURVEILLANCE AREA.  ALL ACTIVITY MONITORED FOR HOMELAND SECURITY."

Instead of taking the Public Surveillance Notice, say "That's firmly mounted in place, by law."

[trash cans]
A trash can is a kind of container.  A trash can is fixed in place.  A trash can is openable. A trash can is usually closed.  A trash can is usually assembled. The description of a trash can is "Painted industrial dark green, the [location] trash can awaits its daily diet of rubbish.  There is a solar panel on it; presumably it reports back to a central system when it is full.[if the solar panel enclosed by the location is open]  The solar panel on the can lid has been pried open.  Vandals!"
A rubbish is a kind of thing.  A rubbish is fixed in place.  A rubbish is in every trash can.  The indefinite article is "some". The description of a rubbish is "All you'd expect from a cheap public trash can."
Instead of taking the rubbish, say "It's too disgusting to touch."
A solar panel is a kind of container.   A solar panel is part of every trash can.  A solar panel is usually closed and assembled.  A solar panel has carrying capacity 1.  A broadcast chip is in every solar panel. The description of a solar panel is "A small (8x8cm) solar panel set into the top, apparently meant to powering something embedded in the trash can beneath it.[if open]  This one has been pried back.[end if]"

Understand "trashcan" as a trash can.

Check searching a trash can:
	if the noun is closed:
		try opening the noun;
	continue the action.

Check opening a solar panel:
	say "You can't open that with your bare hands." instead.

Check inserting into a solar panel:
	Unless the noun is tiny, say "That won't fit!" instead.

Instead of closing a solar panel:
	if the noun is closed:
		say "That's not something you can close." instead;
	otherwise:
		say "The panel is bent. The damage looks permanent." instead.

[mirrors]
A mirror is a kind of thing.  A mirror is always scenery.

Instead of searching a mirror:
	say "It's hard to say if your reflection shows a true urban resistance fighter or just a very nondescript citizen.  You've changed your hairstyle so many times now, you don't know [italic type]what[roman type] you look like.".
A reflection is a kind of thing.  A reflection is part of every mirror.  A reflection is always scenery.

Understand "face" as a reflection.
Instead of examining a reflection, say "It's hard to say if your reflection shows a true urban resistance fighter or just a very nondescript citizen.  You've changed your hairstyle so many times now, you don't know [italic type]what[roman type] you look like."

A doodle is a kind of thing. A doodle is part of every mirror.  A doodle is always scenery.  A doodle has a number called the graffitiIndex. The description of a doodle is "[Doodle Description]".

To say Doodle Description:
	now the tempIndex is the graffitiIndex of the noun;
	say "This small graffito is [image in row tempIndex of the Table of Graffiti] Just below it is a URL: [bold type][URL in row tempIndex of the Table of Graffiti][roman type]".

Understand "graffiti" as a doodle.
Understand "graffito" as a doodle.


[plaques]
A Plaque is a kind of thing.  Plaques are always scenery. The description of a plaque is "Metal, perhaps a meter by five meters, the plaque reads '[bold type][the stationName of the location][roman type]' in standard Transit Helvetica font."
Instead of taking a Plaque, say "You're here for a far nobler purpose than mere Transit vandalism."
Instead of taking a Plaque for the third time, say "The police would frown on it."
Instead of taking a Plaque for the fourth time:
	say "The cops can see you messing with the plaque via their surveillance systems, and they don't think you should be vandalizing the Transit system.  They arrive en masse and grab you to take you away for processing, where they'll discover what you've done to your Mit-Klein Bottle - and that'll get you Readjusted.";
	end the story saying "You have been arrested!"
	
[activate buttons]
An activate button is a kind of thing.

Instead of pushing an activate button which is part of a switched off device (called the machine):
	try switching on the machine.

Instead of switching on an activate button which is part of a switched off device (called the machine):
	try switching on the machine.
	
Instead of pushing an activate button which is part of a switched on device (called the machine):
	try switching off the machine.

Instead of switching off an activate button which is part of a switched on device (called the machine):
	try switching off the machine.
	
Understand "activate [something]" as switching on.
Understand "push [something] button" as switching on.
Understand "deactivate [something]" as switching off.

One activate button is part of every device.


[Specific objects]

The refrigerator is a container.  The refrigerator is in the Kitchen. The refrigerator is scenery. The carrying capacity of the refrigerator is 5. The refrigerator is fixed in place.  The refrigerator is openable and closed.  The description is "Standard off-white home antiheating unit."
Understand "fridge" as the refrigerator.

Report opening the refrigerator for the first time:
	Say "You open the refrigerator.[paragraph break]It's empty. The occupants must have emptied it before going on vacation.";
	stop.

Check inserting into the refrigerator:
	if the noun is medium or the noun is large:
		say "That won't fit in the fridge." instead.


[microwave]
The microwave oven is a device.  The microwave oven is in the Kitchen.  The microwave oven is scenery. The microwave oven is fixed in place.  The microwave oven can be working or fried.  The microwave oven is working.  The description is "[if working]A microwave oven of perhaps a cubic foot capacity with a transparent door.  It is a relatively smart oven, able to determine the proper setting for whatever is placed in it using a plethora of sensors.  There is a single button (marked 'COOK') on the front. A side panel sports a lurid warning.[otherwise]A microwave oven of perhaps a cubic foot capacity.  The side panel is melted shut, the interior is scorched, and the plastic around the edges slightly melted.[end if][if the cook box is open]  The door is ajar.[end if][unless the cook box is empty]  The oven contains [a list of objects in the cook box].[end if][if the side panel is open]  The service panel is bent open on the side.[end if]"

The cook box is a container.  The cook box is part of the microwave oven. The cook box is transparent and fixed in place.  The cook box is openable and closed.  The printed name of the cook box is "oven".  The carrying capacity of the cook box is 4.  The cook box is scenery.

The side panel is part of the microwave oven.  The side panel is a container.  The side panel is openable and closed. The side panel can be working or fried.  The side panel is working. The side panel has carrying capacity 1.  The side panel is scenery.  The description of the side panel is "The side panel is a small rounded rectangle of plastic with a narrow seam running around it.  A warning label on it reads NO USER SERVICEABLE PARTS INSIDE.  There is an icon of a small stick figure opening the panel and being electrocuted, irradiated and (as far as you can tell) stung by bees.[if open]  The panel has been pried open. The magnetron is just visible here, right next to some circuitry.  The panel has room for a small component inside it. [otherwise if fried]  The side panel is scorched and the innards melted.  Apparently the magnetron overloaded something.[end if][if the side panel is hacked]  The panel has been pried open.  The magnetron is just visible here, with a Klein Blaster wired in next to it.  A small LED (labelled TRNSMT RDY) is lit!"

The safety limiter is in the side panel.  The safety limiter is tiny. The safety limiter can be working or fried.  The safety limiter is working.  The safety limiter has some text called the fryDescription.  The fryDescription of the safety limiter is "Brief sparks, like a small St. Elmo's fire, race around the various components of the safety limiter and a crackling noise comes from it before the microwave stops."  The description of the safety limiter is "A small circuit board which plugs into the microwave oven side panel.  One of its components looks a bit like a standard receive chip, and the other a standard memory chip - although these are custom versions and emdedded on the board. [if working]Examining its connectors and their labels, you deduce that when installed, this board monitors the sensors and radio frequencies inside the microwave oven and prevents it from operating if things like electronics are inside, it's empty, or the door is open.[otherwise if fried]In fact, these won't be usable ever again - the limiter is scorched and soot-blackened and looks thoroughly dead.[end if]"

Understand "warning" as the side panel when the location is the kitchen.
Understand "label" as the side panel when the location is the kitchen.
Understand "magnetron" as the side panel when the location is the kitchen.
Understand "circuit" as the side panel when the location is the kitchen.
Understand "circuit board" as the side panel when the location is the kitchen.
Understand "board" as the side panel when the location is the kitchen.
Understand "door" as the cook box when the location is the kitchen.
Understand "cook button" as the microwave oven's activate button when the location is the kitchen.
Understand "cook" as the microwave oven's activate button when the location is the kitchen.
Does the player mean pushing the microwave oven's activate button: it is unlikely.

Instead of pushing the cook box:
	try pushing the microwave oven's activate button instead.

Instead of putting something on the side panel:
	say "You can't put [the noun] on the side panel.  It would just fall off." instead.

Check inserting something (called the subject) into the microwave oven:
	try inserting the subject into the cook box instead.
	
Check opening the microwave oven:
	try opening the cook box instead.

Check closing the microwave oven:
	try closing the cook box instead.

Instead of searching the microwave oven:
	try searching the cook box instead.

Check inserting something (called the subject) into the cook box:
	if the subject is tiny, continue the action;
	if the subject is small, continue the action;
	say "That won't fit in the oven." instead.

Check opening the side panel:
	if the noun is open, say "That's already been opened." instead;
	if the noun is fried, say "It's closed, and looks melted." instead;
	say "You can't get enough purchase with your fingers alone." instead.

Check opening the side panel with something:
	if the noun is open, say "That's already been opened." instead;
	if the noun is fried, say "It's closed, and looks melted." instead;
	continue the action.

Check inserting into the side panel:
	unless the noun is tiny, say "That won't fit!" instead;
	if the noun is a broadcast chip, say "There aren't enough connections on the broadcast chip to fill the space in the board." instead;
	if the noun is a memory chip, say "There aren't enough connections on the memory chip to fill the space in the board." instead;
	if the noun is the safety limiter:
		continue the action;
	if the noun is a Klein Blaster:
		continue the action;
	otherwise:
		say "The space has connections for electronics.  [The noun] doesn't have the proper connections." instead.

Before searching the side panel:
	say "The side panel shows one side of the oven's magnetron as well as part of a circuit board with several connections on it.[if the side panel is hacked]  A Klein Blaster has been wired into place here.";
	continue the action.

After inserting into the side panel:
	if the side panel is hacked, say "As you slide the component in, a small LED labelled 'TRNSMT RDY' lights up on the main board!";
	continue the action.

Instead of closing the side panel:
	if the noun is closed:
		say "That's not something you can close." instead;
	otherwise:
		say "The panel is bent. The damage looks permanent." instead.

Understand "start [something]" as switching on.

Instead of switching on the microwave oven:
	if the side panel is fried, say "The oven appears to be dead." instead;
	if the microwave is limited:
		if the cook box is open:
			say "The oven won't work unless it is closed." instead;
		if the cook box is empty:
			say "There's nothing in the microwave.  Sensors prevent it from running empty; it's dangerous." instead;
	if the side panel is hacked:
		if the cook box is closed:
			say "The microwave comes on, its lights lit brightly, and begins to shake for a few seconds before the level of radio energy in the cook box, confined by the closed door, trips emergency circuits and it shuts off again." instead;
		otherwise:
			carry out the KleinHacking activity with the MitKlein instead;
	if the cook box is open:
		say "You feel a strange warmth on your face as the microwave starts up.";
	carry out the cooking activity.


To decide if the microwave is limited:
	unless the safety limiter is inside the side panel, decide no;
	unless the safety limiter is working, decide no;
	decide yes.


[Tissue Generator] [SEE Docs 4.14/Ex. 55!]
The tissue generator is a device. The tissue generator is in the Emergency Room.  The tissue generator is fixed in place.  The description of the tissue generator is "This is a medium-sized appliance found in most modern hospitals.  It is used to provide artificial tissue for grafting into or onto injuries.  In order to prevent rejection, the tissue generator must be given a complete scan of the patient's tissue, from which it will (by default) produce an exact duplicate of the scanned sample.  It has a button marked ACTIVATE. There is a slot on the front of the machine labeled INSERT CRYOPACK FOR SAMPLE where, presumably, the generated tissue is delivered; there is a smaller opening labeled FEED and there is a slot labeled READ where a tissue sampler can be inserted.  [if the tissue sampler is in the read slot]  The tissue sampler is in the read slot.[end if][if the cryopack is in the sample slot]  There is a cryopack in the sample slot.[end if][unless the feed slot is empty]  The feed slot contains [list of objects in the feed slot]."

Instead of inserting into the tissue generator:
	say "Which slot do you want to put [the noun] into - the sample slot, the feed slot or the read slot?".

The sample slot is a container.  The sample slot is part of the tissue generator.  The sample slot is scenery.  The sample slot is not openable.  The sample slot is open. The description of the sample slot is "A large opening where a sample container can be placed to receive the generated tissue."

Before inserting something into the sample slot:
	unless the noun is the cryopack:
		say "Some form of container to hold the sample is needed here." instead;
	if the cryopack is closed:
		say "The cryopack must be open before being inserted." instead;
	unless the cryopack is empty:
		say "The cryopack must be empty to receive a new sample." instead.
			
The read slot is a container.  The read slot is part of the tissue generator.  The read slot is open.  The read slot is not openable. The read slot is scenery.  The description of the read slot is "A slot where a standard medical tissue sampler plate can be inserted and read."

Before inserting something into the read slot:
	unless the noun is the tissue sampler:
		say "That won't go in there." instead.

The feed slot is a container.  The feed slot is part of the tissue generator.  The feed slot is open. The feed slot is not openable.  The feed slot is scenery.  The description of the feed slot is "This slot is used for biogen feedstock supplies (or a tissue sample to recycle, in a pinch)."

Before inserting into the feed slot:
	unless the noun is the biogen feedstock or the noun is the skin sample, say "That won't go in there." instead.

To decide if the tissue generator is ready:
	unless the cryopack is in the sample slot and the cryopack is open, decide no;
	unless the tissue sampler is in the read slot, decide no;
	unless the tissue generator is fed, decide no;
	decide yes.

To decide if the tissue generator is fed:
	unless a biosample is in the feed slot, decide no;
	decide yes.
	
Before switching on the tissue generator:
	unless the tissue generator is ready, say "The tissue generator blinks a red indicator which reads NOT READY: CHECK SLOTS and deactivates." instead.
	
Instead of switching on the tissue generator:
	carry out the synthesizing activity.	

[lens crafter]
The Lens Crafter is in Accessorize.  The Lens Crafter is a device.  The Lens Crafter is fixed in place.  The Lens Crafter can be working or fried. The lens crafter is working. The description of the Lens Crafter is "A floor-standing device used to produce custom-made cosmetic contact lenses (although for an extra fee, they can be made to a prescription).  A A screen on the front presents a menu of options, or a Memory can be inserted into a slot with appropriate specifications."
The Lens Menu is part of the Lens Crafter.  The Lens Menu is scenery.  The description is "The menu screen, locked,  displays a password prompt. You don't have the password."
The delivery slot is a container.  The delivery slot is part of the Lens Crafter.  The delivery slot is open.  The delivery slot is not openable.  The description of the delivery slot is "A slot where the lens crafter delivers its product.  It is shaped to accept a standard lens case."
The data slot is a container.  The data slot is a part of the Lens Crafter.  The data slot is open and unopenable.  The description of the data slot is "A slot for a standard Memory chip."

Check inserting into the lens crafter:
	if the noun is a memory chip, try inserting the noun into the data slot instead;
	if the noun is the lens case, try inserting the noun into the delivery slot instead.

Check inserting into the data slot:
	unless the noun is a Memory chip, say "That won't fit." instead.

Check inserting into the delivery slot:
	unless the noun is the lens case, say "That won't fit." instead;
	unless the noun is open, say "The lens case must be open to fit in the delivery slot."


Check switching on the lens crafter:
	if the lens crafter is fried, say "The screen flashes red.  A message reads 'INSUFFICIENT STOCK.'" instead;
	unless the lens case is in the delivery slot, say "The lens crafter machine's screen flashes red.  A message reads 'NO DELIVERY CONTAINER AVAILABLE." instead;
	unless the lens crafter is lensEnabled, say "The lens crafter machine's screen flashes red.  A message reads 'NO VALID SOURCE DATA AVAILABLE.'" instead.


Carry out switching on the lens crafter:
	move the contact lens to the lens case;
	now the lens case is closed;
	now the lens crafter is fried;
	now the lens crafter is switched off.
	
Report switching on the lens crafter:
	say "The lens crafter machine's screen flashes green.  A message reads 'SOURCE DATA ACCEPTED - COSTUME LENS SYNTHESIZED.'  The machine hisses slightly, and a sleeve descends around the lens case.  When the sleeve retracts, the lens case is closed." instead.

[jukebox]
The Jukebox is in The Proletariat Bar.  The Jukebox is a device.  The Jukebox is scenery.  The description of the Jukebox is "A retro-themed music player with imitation vinyl records visible within its transparent cabinet, this jukebox actually operates via a network connection.   It doesn't require money, but then again the users can't really select music on it, either, so fair is fair.[if the jukebox is switched on] It is playing a subdued post-punk Musak adaptation of some anti-government tune."



[Vehicles/region objects]

[police flitter]
The police flitter is a vehicle.  "A parked police flitter, armored and festooned with lights, looms here."  The police flitter is lockable and locked.  The police flitter is fixed in place. The police flitter can be violated or pristine.  The police flitter is pristine.  The description is "A Tesla-Fujiwara light aircraft, the police model of this particular flitter is upengined in order to carry armor and equipment.  Seating four, this example has the full lighting array and riot pod of a crowd control vehicle.[if locked]  It is securely locked, and a slowly blinking light indicates that its locklarm is armed."

Understand "flitter" as the police flitter.

Check opening the flitter:
	if the flitter is locked:
		activate the Table of Vehicle Hints;
		say "As you reach for the door handle, the locklarm begins to strobe and an ominous beeping begins.  You decide not to risk it." instead;
	otherwise:
		now the police flitter is violated;
		continue the action.
		
Check entering the flitter:
	if the flitter is locked:
		try opening the flitter instead;
	otherwise:
		say "You really don't want to be caught in there if someone official comes along, and think better of it." instead.

[ambulance]		
The ambulance is a vehicle. The ambulance is in Hospital Driveway.  "An ambulance, a bulky flittervan with emergency markings, is parked here."  The ambulance is lockable and locked.  The ambulance is fixed in place.  The ambulance can be violated or pristine.  The ambulance is pristine.  The description is "This aerovan is probably a Geely-Ford/Fujiwara product underneath, but has all manner of emergency lights and markings on it, including a large set of red crosses.  It has a double door in the back along with the two main cab entry doors.  It is dark and powered down[if locked] but securely locked, and a slowly blinking light indicates that its locklarm is armed[end if]."
Understand "cab" as the ambulance when the location is Hospital Driveway.
Understand "flittervan" as the ambulance.

Check opening the ambulance:
	if the ambulance is locked:
		activate the Table of Vehicle Hints;
		say "As you reach for the door handle, the locklarm begins to strobe and an ominous beeping begins.  You decide not to risk it." instead;
	otherwise:
		now the ambulance is violated;
		continue the action.
		
Check entering the ambulance:
	if the ambulance is locked:
		try opening the ambulance instead;
	otherwise:
		say "You really don't want to be caught in there if someone official comes along, and think better of it." instead.



Section 7 - Actions/Activities

[about]
Understand "about" as getting info.
Getting info is an action out of world.

Carry out getting info:
	say "[bold type][story title][roman type][paragraph break][story description][paragraph break]'Valley of Steel' is an IF adaptation of a story posted on http://everything2.com.  Both story and IF are authored by The Custodian of Everything2 using Inform 7.  For a list of contributors to the game, use the command CREDITS."
	

[credits]
Understand "credits" as getting credits.
Getting credits is an action out of world.

Carry out getting credits:
	say "The real meat of the game's functionality was provided by a series of helpful folks on IRC and on IntFiction.org - GhettoAardvark, OldMiner, Clockmaker, raincomplex, zarf(Andrew Plotkin), maga, climbingstars, Felix Larsson, capmikee, ChrisC, mattw, Skinny Mike, tove, HanonO. Testing was provided by some of those.  Andrew Schultz has patiently and heroically labored to point out things I did wrong, even going back and retesting after I fixed them (and all to often, broke other stuff).  In addition uncledavid, Evelin en Biep Durieux, and Klaus Matteus provided invaluable testing.  They all have my humble thanks.  All errors, of course, are my own.[paragraph break]For information about the game's design and story, use the command ABOUT."


[score]

Carry out requesting the score:
	say "The score is this: you're being hunted, and there's not much good that will come out of small measures and half-successes.  In the end, they will win or you'll be free.";
	stop.
	

[help]
Understand "help" as getting help.
Getting help is an action out of world.

Carry out getting help:
	say "Valley of Steel is an interactive fiction game.  If you're new to intfic, you might wish to read an introductory article or two on the subject, such as 'How to Play a Text Adventure' by Steven Granade on the Brass Lantern website at http://brasslantern.org/beginners/playta1.html.[line break]In general, try using simple one or two-word (or two-phrase, really) commands to interact with objects in the game.  Here are a few simple command shortcuts to get you started.[paragraph break][bold type]L[roman type] - Look. Looks around at the general area.[line break][bold type]X <something>[roman type] - eXamine <something>.  Describes a specific object in more detail.[line break][bold type]N/S/E/W[roman type] - Move North, South, East or West, if possible.  Interim directions also work, e.g. NE or SW.[line break][bold type]TAKE <something>[roman type][line break][bold type]WEAR <something>[roman type][line break][bold type]DROP <something>[roman type][line break][bold type]OPEN <something>[roman type][line break][bold type]PUT <something> IN <something>[roman type] - attempts to insert the first object into the second (e.g. 'PUT WALLET IN BAG'.)[line break][bold type]Z[roman type] - wait a turn.[line break][bold type]G[roman type] - aGain: repeats the last command.[paragraph break]You can also SAVE and RESTORE the game, or get HINTS (if you're desperate!) "


[answering]
Understand the command "answer" as something new.
Answering is an action applying to one touchable thing.
Understand "answer [something]" as answering.
Understand "answer [someone]" as answering.

Instead of answering:
	say "No-one was talking to you."

Instead of answering the phone:
	say "It didn't ring."
	
Instead of answering a person:
	say "Try 'TELL [noun]' or 'ASK [noun]' instead."


[waiting until]
Hanging around until is an action applying to one time.

Check hanging around until: 
	if the time of day is the time understood, say "It is [time understood] now!" instead.

Carry out hanging around until: 
	while the time of day is not the time understood:
		follow the turn sequence rules.

Report hanging around until: 
	say "You yawn until [time understood]."

Understand "wait until [time]" as hanging around until.

[waiting more]
Waiting more is an action applying to one number.

Understand "wait [a time period]" or "wait for [a time period]" or "wait for a/an [a time period]" or "wait a/an [a time period]" as waiting more.

Carry out waiting more: 
	let the target time be the time of day plus the time understood; 
	decrease the target time by one minute; 
	while the time of day is not the target time:
		if the story has ended:
			stop;
		otherwise:
			follow the turn sequence rules.

Report waiting more: 
	say "It is now [time of day + 1 minute]."

Check waiting more: 
	if the time understood is greater than six hours, say "You really haven't got that kind of patience." instead.


[waiting for subway]
Waiting for subway is an action applying to nothing.
Understand "wait capsule" or "wait for capsule"  or "wait transit" or "wait for transit" or "wait train" or "wait for train" or "wait subway" or "wait for subway" as waiting for subway.

Check waiting for subway:
	unless the location is a transitStation, say "Do you really expect a Transit capsule to show up here?" instead.

Carry out waiting for subway:
	if the station of the Capsule is the location:
		say "It's already here.";l surveillanc
		continue the action;
	otherwise:
		let the target turn be the turn count + 60;
		while the turn count is not the target turn and the station of the Capsule is not the location:
			follow the turn sequence rules.
		
Report waiting for subway:
	say "The Capsule has arrived[if the watch is worn by the player].  The time is [time of day][end if]."

[To let the player use 'it' right after waiting for the subway, so they can 'enter it' when it arrives]
To set the/-- pronoun it to (O - an object): (- LanguagePronouns-->3 = {O}; -). 
To set the/-- pronoun him to (O - an object): (- LanguagePronouns-->6 = {O}; -). 
To set the/-- pronoun her to (O - an object): (- LanguagePronouns-->9 = {O}; -). 
To set the/-- pronoun them to (O - an object): (- LanguagePronouns-->12 = {O}; -). 

After waiting for subway: 
  set pronoun it to the Voodoo Subway.


[THIS DOESN'T WORK YET - maybe make it an activity? http://inform7.com/learn/man/doc286.html
[waiting for station]
Waiting for station is an action applying to one thing.
Understand "frotz [room]" as waiting for station.

Check waiting for station:
	unless the noun is a room, say "That's not a place." instead;
	unless the location is the Transit Capsule, say "You're not aboard Transit." instead;
	unless the noun is a transitStation, say "The Transit system doesn't go there." instead.
	
Carry out waiting for station:
	if the station of the Capsule is the noun:
		say "You're already there." instead;
	otherwise:
		while the station of the Capsule is not the noun:
			follow the turn sequence rules.]

[sleeping]
Instead of sleeping:
	if the player is out of doors:
		now instantiate is true;
		say "Sleeping outdoors tends to result in a vagrancy arrest.  You think better of it." instead;
	if the location is the bedroom:
		say "You're far too keyed up to sleep." instead;
	if the player is in Transit:
		say "Sleeping in the Transit system tends to result in a vagrancy arrest.  You think better of it." instead;
	otherwise:
		say "There's nowhere to sleep." instead.
	

[waving]
Before waving hands:
	if the player is surveilled:
		now instantiate is true;
		say "You start to wave, then realize you would be drawing attention to yourself and quickly stifle the impulse." instead;
	otherwise:
		continue the action.

[jumping]
Before jumping:
	if the player is surveilled:
		now instantiate is true;
		say "You look at the nearby surveillance notice and decide not to do anything unusual." instead;
	otherwise:
		continue the action.
		
[blocking]	
Blocking is an action applying to one visible thing.
Understand "block [something]" as blocking.
Understand "interfere with [something]" as blocking.

Check an actor blocking (this is the block blocking rule):
	If the noun is a person:
		try attacking the noun instead;
	otherwise:
		say "You can't block [the noun]." instead;
	stop the action.
	
[buying]
Instead of buying, say "You have no funds, and even if [the noun] was available for sale, [if the mitklein is unhacked]you don't dare allow your MItKlein to be scanned.[otherwise]your MitKlein is dead.[end if]"
	

[washing][code lifted from Em Short's Modern Conveniences extension]
Understand "take shower" or "take a shower" or "take bath" or "take a bath" or "bathe" or "wash" as bathing. Bathing is an action applying to nothing.


Check bathing (this is the restrict baths to restrooms rule):
	if the location is not a restroom:
		if the player is the actor:
			say "This isn't the place." instead;
		stop the action.

Check an actor bathing (this is the block bathing rule):
	if the player is the actor:
		say "You haven't time for a bath." instead;
	stop the action.

Washing is an action applying to one thing.
Understand "clean [something]" or "wet [something]" or "wash [something]" or "dunk [something]" or "soak [something]" or "immerse [something]" as washing.

Instead of an actor washing the actor:
	try the actor bathing.

Check an actor washing (this is the restrict washing to the proximity of sinks rule):
	if the actor can touch a sink:
		do nothing;
	otherwise:
		if the player is the actor:
			say "You don't see a sink." instead;
		stop the action;

Check an actor washing (this is the block washing rule):
	if the player is the actor:
		if the noun is the phone:
			continue the action;
		otherwise:	
			say "It doesn't seem worth the bother." instead;
	stop the action.


Carry out washing:
	if the noun is the phone:
		unless the tablet computer is hacked:
			say "You are about to soak your phone when you remember you haven't gotten the attack program off it yet.  Since your phone isn't advertised as waterproof, you desist." instead; 
		if the noun is working:
			say "The screen flickers and dies as you run it under the stream of water.  You remove it and shake it dry.";
			now the phone is fried;
		otherwise:
			say "It doesn't seem worth the bother." instead;
	otherwise:
		say "It doesn't seem worth the bother." instead.



[unlocking] 
[We have to re-implement this b/c we override it in order to let 'open x with y' work]
Understand the command "unlock" as something new.

Unlocking is an action applying to one touchable thing.
Understand "unlock [something]" as unlocking.

Carry out unlocking:
	say "You can't unlock [the noun].";
	stop the action.

Key-unlocking is an action applying to two touchable things.
Understand "unlock [something] with [something]" as key-unlocking.

Carry out key-unlocking:
	say "You can't unlock [the noun] with that.";
	stop the action.

[removing]
removing it with is an action applying to two things.
Understand "remove [something] with [something preferably held]" as removing it with.
Understand "detach [something] with [something preferably held]" as removing it with.
Understand "take [something] with [something]" as removing it with.
Understand "get [something] with [something preferably held]" as removing it with.

Check removing it with:
	if the second noun is nothing, say "What do you want to remove that with?" instead;
	unless the second noun is the tag remover or the second noun is the multitool, say "You can't remove anything with that." instead;
	if the second noun is the tag remover:
		if the noun is an antitheft tag:
			unless the noun is part of a garment, say "That's not attached to anything." instead;
		if the noun is the camera chain:
			unless the chain is part of the ID camera, say "That's not attached to anything." instead;
		continue the action;
	otherwise if the second noun is the multitool:
		if the noun is the cotter pin:
			unless the cotter pin is inside the latch, say "That's not attached to anything." instead;
		if the noun is the side panel:
			try opening the side panel with the multitool instead;
		if the noun is a solar panel:
			say "That's firmly attached.  Maybe you can open it." instead;
		if the noun is a Public Surveillance Notice:
			say "You are about to start working on the surveillance notice when you have the sudden feeling that you're being, well…watched.  Spooked, you desist.";
			stop;
		continue the action.
	
Carry out removing it with:
	say "That doesn't seem possible.";
	stop the action.


[pulling it with]
pulling it with is an action applying to two things.
Understand "pull [something] with [something preferably held]" as pulling it with.
Understand "yank [something] with [something preferably held]" as pulling it with.
Understand "extract [something] with [something preferably held]" as pulling it with.

Understand "yank [something]" as pulling.
Understand "extract [something]" as pulling.

Check pulling it with:
	if the second noun is nothing:
		try pulling the noun instead;
	otherwise if the second noun is the multitool:
		try removing the noun with the multitool instead;
	otherwise:
		say "You can't pull [the noun] with that." instead.


[cutting]
Cutting it with is an action applying to two things.
Understand "cut [something] with [something preferably held]" as cutting it with.		

Check cutting it with:
	if the second noun is a person:
		try attacking the second noun instead;
	if the second noun is the multitool:
		say "The one thing this multitool doesn't have is a decent cutting edge." instead;
	unless the noun is carried:
		unless the noun is scenery or the noun is fixed in place:
			try taking the noun;
	unless the second noun is carried:
		unless the second noun is scenery or the second noun is fixed in place:
			try taking the second noun;
	if the noun is an antitheft tag:
		unless the second noun is the knife, say "You can't open the tag with that." instead;
	continue the action.	


Carry out cutting it with:
	say "Cutting that would achieve little."



[and-combining]
[see related section in 'global rules']
And-combining is an action applying to one thing.  Understand "combine [things]" as and-combining.

Understand "solder [things]" as and-combining.
Understand "connect [things]" as and-combining.
Understand "attach [things]" as and-combining.

Check and-combining when group-combine-complete is true:
	stop the action.
	
Carry out and-combining:
	let L be the list of matched things; 
	if the number of entries in L is 0, say "What do you want to combine?" instead; 
	if the number of entries in L is 1, say "What do you want to combine that with?" instead;
	if the number of entries in L > 2, say "You don't have enough hands." instead;
	if the number of entries in L is 2:
		let X be entry 1 in L;
		let Y be entry 2 in L;
		try combining X with Y;
	now group-combine-complete is true;
	rule succeeds.



[combining]
Combining it with is an action applying to two [carried] things.
Understand "combine [something] with [something]" as combining it with.  
Understand "combine [something] to [something]" as combining it with.
Understand "connect [something] to [something]" as combining it with.
Understand "connect [something] with [something]" as combining it with.
Understand "solder [something] to [something]" as combining it with.
Understand "solder [something] with [something]" as combining it with.
Understand "solder [something] onto [something]" as combining it with.
[Note: these won't work due to the 'and' triggering the 'multiple command' part of the Parser; to override that, see this thread: http://www.intfiction.org/forum/viewtopic.php?f=7&t=7405]
[Note note: use Understand "solder [things]" as and-attaching" instead!]
[Understand "combine [something] and [something]" as combining it with.
Understand "solder [something] and [something]" as combining it with.
Understand "connect [something] and [something]" as combining it with.]

[Disambiguate lazy command 'solder attack to chip', maybe? Doesn't seem to work.]
[
Does the player mean combining a broadcast chip with itself: it is very unlikely. 
Does the player mean combining a memory chip with itself: it is very unlikely.
]

The combining it with action has an object called the resultant-item. 

[Some kinds of component are defined by the Table of Components.] [<- this doesn't seem to work, despite the manual claiming it will at bottom of 15.16]

Limbo is a container. Limbo contains 5 Klein Blasters.  Limbo contains 5 ID bombs.


Setting action variables for combining something with something:
	[if the noun is a Klein Blaster and the second noun is the side panel:
		try inserting the noun into the second noun instead;
		stop the action;
	if the noun is a Klein Blaster and the second noun is the microwave oven:
		try inserting the noun into the side panel instead;
		stop;]
	let X be a list of texts;
	if the noun provides the property item-id, add the item-id of the noun to X;
	if the second noun provides the property item-id, add the item-id of the second noun to X;
	sort X;
	let result-id be a text;
	let pool be the list of objects in Limbo;
	repeat through the Table of Outcome Objects:
		let Y be the component list entry;
		sort Y;
		if X is Y:
			now the result-id is the result entry; 
			repeat with fleeb running through pool:
 				if item-id of fleeb is result-id:
					now resultant-item is fleeb; 
					stop.
					
Check combining it with:
	if the noun is a Klein Blaster and the second noun is the side panel:
		if the side panel is open, try inserting the noun into the second noun instead;
	if the noun is a Klein Blaster and the second noun is the microwave:
		if the side panel is open, try inserting the noun into the side panel instead;
	unless the noun provides the property item-id, say "[The noun] won't attach to [the second noun]." instead;
	unless the second noun provides the property item-id, say "[The second noun] won't attach to [the noun]." instead;
	if the resultant-item is nothing:
		if the item-id of the noun is "M0" then say "The contents of that memory chip aren't very useful." instead;
		if the item-id of the second noun is "M0" then say "The contents of that memory chip aren't very useful." instead;
		 say "[The noun] and [the second noun] don't make anything useful." instead;
	if the resultant-item is not in Limbo, say "That's not available." instead;
	if the resultant-item is a Klein blaster:
		unless the player is carrying the soldering iron:
			if the player contains the soldering iron or the location of the soldering iron is the location:
				say "(taking the soldering iron)";
				try taking the soldering iron;
			otherwise:
				say "You don't have a soldering iron." instead;
		unless the player is carrying the solder:
			if the player contains the solder or the location of the solder is the location:
				say "(taking the solder)";
				try taking the solder;
			otherwise:
				say "You don't have any solder." instead;
		unless the solder is working, say "The solder is too melted to be usable." instead;	
		unless the noun is working, say "[the noun] is too damaged![line break]" instead;
		unless the second noun is working, say "[the second noun] is too damaged![line break]" instead;
	if the noun is a disposable camera and the noun is assembled, say "There's no place on the camera to attach anything." instead;
	if the second noun is a disposable camera and the second noun is assembled, say "There's no place on the camera to attach anything." instead.
	[if the noun is a Klein Blaster and the second noun is the side panel, try inserting the noun into the second noun instead;
	if the noun is a Klein Blaster and the second noun is the microwave oven, try inserting the noun into the side panel instead.]

	
Carry out combining it with:
	move the resultant-item to the holder of the noun;
	remove the noun from play;
	remove the second noun from play.
	
Report combining it with:
	say "You fashion the [noun] and the [second noun] into a [resultant-item]!". 

	
[and-attaching]
[see related section in 'global rules']
Understand the command "attach" as something new.
And-attaching is an action applying to one thing.  Understand "attach [things]" as and-attaching.
Understand "attach [things]" as and-attaching.

Check and-attaching when group-attach-complete is true:
	stop the action.
	
Carry out and-attaching:
	let L be the list of matched things; 
	if the number of entries in L is 0, say "What do you want to attach?" instead; 
	if the number of entries in L is 1, say "What do you want to attach that to?" instead;
	if the number of entries in L > 2, say "You don't have enough hands." instead;
	if the number of entries in L is 2:
		let X be entry 1 in L;
		let Y be entry 2 in L;
		try attaching X to Y;
	now group-attach-complete is true.


[attaching]
Attaching it to is an action applying to two things.
Understand "attach [something] to [something]" as attaching it to.
Understand "attach [something] and [something]" as attaching it to.
Understand "attach [something]" as attaching it to.

Check attaching it to:
	If the second noun is nothing:
		say "What do you want to attach [the noun] to?" instead;
	if the second noun is the noun:
		say "You can't attach [the noun] to itself." instead.
		
Carry out attaching it to:
	if the noun is the cable:
		try tying the cable to the second noun instead;
	if the noun is the descender:
		try tying the cable to the second noun instead;
	if the noun is the harness:
		try tying the harness to the second noun instead;
	otherwise if the noun is the breaching charge:
		try putting the breaching charge on the second noun instead;
	otherwise if the noun is a Klein Blaster:
		if the second noun is the side panel:
			try inserting the noun into the second noun instead;
	otherwise:
		try combining the noun with the second noun instead.


[Opening]
Opening it with is an action applying to two things.
Understand the command "open" as something new.
Understand "Open [something]" as opening.
Understand the command "open [something] with [something preferably held]" as something new.
Understand "open [something] with [something preferably held]" as opening it with.
Understand "disassemble [something] with [something preferably held]" as opening it with.
Understand "unscrew [something] with [something preferably held]" as opening it with.
Understand "pry [something] with [something preferably held]" as opening it with.

To disassemble (gadget - a thing):
	if the gadget is a container:
		say "You pry open [the gadget] with the pliers in your multitool, ignoring the sound of breaking plastic.[unless the gadget is empty][line break]Opening [the gadget] reveals [the list of things inside the gadget]![end if]";
	otherwise:
		say "You pry open [the gadget] with the pliers in your multitool, ignoring the sound of breaking plastic.";
	now the gadget is disassembled;
	now the gadget is not scenery;
	if the gadget is a container:
		now the gadget is unopenable;
		now the gadget is open.

Carry out opening it with:
	if the noun is a disposable camera:
		follow the disassembly rules;
	else if the noun is a solar panel:
		follow the disassembly rules;
	else if the noun is the side panel:
		follow the disassembly rules;
	else if the noun is the car key:
		follow the disassembly rules;
	else if the noun is an antitheft tag:
		follow the disassembly rules;
	otherwise:
		try opening the noun instead.


[Disassembly]
Disassembly is a rulebook.
First disassembly rule: 
	if the noun is disassembled:
		say "That's already been done." instead;
		rule fails.
		
A disassembly rule:
	if the second noun is nothing, say "You can't open [the noun] with your bare hands." instead;
	if the noun is a disposable camera:
		unless the noun is carried, try taking the noun;
		unless the second noun is the multitool:
			say "You can't disassemble [the noun] with that." instead;
		otherwise:
			disassemble the noun;
			rule succeeds;
	if the noun is a solar panel:
		unless the second noun is the multitool:
			say "You can't open [the noun] with that." instead;
		otherwise:
			disassemble the noun;
			if the player is surveilled:
				unless the location is gassed:
					now the incriminatingAct is "vandalizing that trash can";
					the player incriminates in 1 turn from now;
			rule succeeds;
	if the noun is the side panel:
		unless the second noun is the multitool:
			say "You can't open [the noun] with that." instead;
		otherwise:			
			disassemble the noun;
			rule succeeds;
	if the noun is the car key:
		unless the second noun is the knife:
			say "You can't open [the noun] with that." instead;
		otherwise:
			try cutting the car key with the knife instead;
			rule succeeds;
	if the noun is an antitheft tag:
		unless the second noun is the knife:
			say "You can't open [the noun] with that." instead;
		otherwise:
			try cutting the noun with the knife instead;
			rule succeeds.



[sampling]
Understand "sample [something]" as sampling.
Understand "scan [something]" as sampling.

Sampling is an action applying to one thing.  The sampling action has a text called the person sampling tissue.

Check sampling:
	unless the player is holding the tissue sampler, say "You don't have anything to scan [the noun] with." instead;
	unless the noun is a person or the noun is a part of a person, say "That's not made of tissue." instead;
	if the noun is an eye, say "You can't sample anything except skin." instead;
	if the noun is a person and the noun is not the player, say "You can't just scan other people's body parts.  That's basically identity theft." instead;
	unless the noun is visible, say "You don't see [the noun]." instead.
	
Setting action variables for sampling:
	now the person sampling tissue is the printed name of the actor.

Carry out sampling:
	now the tissueDonor of the tissue sampler is the person sampling tissue;
	now the printed name of the tissue sampler is "tissue sampler ([tissueDonor])".
	
Report sampling:
	say "[if the actor is the player]You press your palm to the tissue sample plate; it glows briefly.[otherwise][the actor] presses a palm against the tissue sample plate; it glows briefly."




[Palming]
Palming is an action applying to one visible thing.
Understand "palm [something]" or "lay palm on/against [something]" or "touch palm to/against [something]" or "place palm on [something]" as palming.

Check palming:
	unless the noun is the vestibule door lock or the noun is the tissue sampler or the noun is the Maintenance Door:
		say "Nothing happens." instead.
		
Carry out palming:
	if the noun is the tissue sampler, try sampling the actor instead;
	if the noun is the Maintenance Door, try going west instead;
	if the noun is the vestibule door lock, say "Nothing happens." instead;
	say "Nothing happens."
	


[Arming] 
Arming is an action applying to one visible thing.
Understand "arm [something]" as arming.
Understand "pull tab on [something]" as arming.

Check arming:
	if the noun is not an explosive, say "You can only arm an explosive!" instead;
	if the noun is inert, say "The [printed name] has already gone off and cannot be reused!" instead;
	if the noun is armed, say "The [printed name] is already armed!" instead;

Carry out arming:
	now the noun is armed;

Report arming:
	if the noun is an ID Bomb:
		say "[The noun] beeps in your hand. The arming LED begins to blink ominously!";
	otherwise if the noun is the Breaching Charge:
		say "You pull the arming tab out and drop it, arming the Breaching Charge.";
		if player is surveilled:
			say "As soon as the charge detonates, the police will be looking at the surveillance video from this location; they'll ID you within a few minutes!";
			now the incriminatingAct is "setting off that explosive";
			the player incriminates in seven turns from now;
	otherwise if the noun is the tear gas grenade:
		say "You pull the pin on the tear gas grenade and drop it as it begins to hiss!";
		move the tear gas grenade to the location.



[Photographing]
Photographing is an action applying to two things.
Understand "photograph [something] with [something preferably held]" as photographing.
Understand "take picture of [something] with [something preferably held]" as photographing.
Understand "take a picture of [something] with [something preferably held]" as photographing.
Understand "snap [something] with [something preferably held]" as photographing.


Check photographing:
	if the second noun is the ID camera:
		unless the ID camera is carried by the player, try taking the ID camera;
		unless the ID camera is photoEnabled, say "The camera blinks a red icon, indicating there is no available storage." instead;
		if the noun is a person, say "The camera bleeps a wavy icon, indicating that the subject isn't still enough for a hologram." instead;
		if the noun is part of a person, say "The camera bleeps a wavy icon indicating that the subject isn't still enough for a hologram." instead;
		continue the action;
	otherwise if the second noun is a disposable camera:
		if the noun is disassembled, say "The camera is pried open and does not seem to function." instead;
		continue the action;
	otherwise:
		say "You can't photograph [the noun] with that." instead.
		
Carry out photographing:
	if the noun is a disposable camera:
		now the Contents of the second noun is the printed name of the noun;
	if the second noun is the ID camera:
		if the film slot contains a memory chip (called the filmchip):
			now the Contents of the filmchip is the printed name of the noun;
			now the filmchip is photo;
		otherwise if the location of the camera is booking:
			continue the action.

Report photographing:
	say "The camera emits an artificial-sounding 'CLICK' noise.[if the second noun is the ID camera]  The disc icon flashes green, indicating that the image has been stored.".



[axing]
Smashing it with is an action applying to two things.
Understand "ax [something] with [something preferably held]" as smashing it with.
Understand "axe [something] with [something preferably held]" as smashing it with.
Understand the command "chop" as something new. [This is because 'cut' is understood as 'chop' somehow and it redirects cutting]
Understand "chop [something] with [something preferably held]" as smashing it with.
Understand "hit [something] with [something preferably held]" as smashing it with.
Understand "break [something] with [something preferably held]" as smashing it with.
Understand "smash [something] with [something preferably held]" as smashing it with.



Check player attacking the vestibule door lock:
	say "What do you want to smash the door lock with?" instead;

Check smashing the observation window with something:
	say "[The second noun] bounces off the tough armorcrys; you barely avoid injuring yourself." instead.
	
Check smashing something with something:
	if the noun is the vestibule door lock:
		unless the second noun is the fire axe:
			now instantiate is true;
			say "Attacking [the noun] with that isn't productive." instead;
		continue the action;		
	otherwise:
		now instantiate is true;
		say "You don't want the police after you, so you desist." instead.
	
Carry out smashing the vestibule door lock with something:
	say "You heft the axe and set to.  The lock gives way before your furious assault!";
	now the vestibule door lock is broken;
	now the vestibule door is unlocked.	


[microwaving]
Microwaving is an action applying to one thing.
Understand "microwave [something]" as microwaving.
Understand "cook [something]" as microwaving.
Understand "heat [something]" as microwaving.
Understand "reheat [something]" as microwaving.

Before microwaving:
	if the noun is the microwave oven, say "That would be a neat trick." instead;
	if the noun is the phone:
		unless the tablet computer is hacked, say "You are about to microwave the phone when you remember that you'll need to somehow get the attack program off it first." instead;
	unless the microwave oven is in the location, say "How do you propose to do that?" instead;
	unless the cook box is empty:
		unless the noun is in the cook box, say "There's no room in the microwave." instead;
	unless the noun is touchable:
		if the noun is in the cook box and the cook box is closed:
			try silently opening the cook box;
	if the noun is visible, continue the action.
	
Carry out microwaving:
	unless the noun is in the cook box:
		try silently opening the cook box;
		try inserting the noun into the cook box;
	unless the cook box is closed:
		try silently closing the cook box;
	if the cook box is empty, say "There's nothing in the microwave." instead;
	carry out the cooking activity.


[cooking activity]
Cooking is an activity.
Rule for cooking:
	if the phone is inside the cook box:
		if the tablet computer is unhacked:
			say "You are about to microwave the phone when you remember that you'll need to somehow get the attack program off it first.";
			stop;
	if a klein blaster is inside the cook box:
		say "You stop before initiating the cook cycle to avoid destroying the Klein Blaster.";
		stop;
	if the microwave is limited:
		repeat with sizzler running through the list of objects inside the cook box:
			if sizzler provides the property fryDescription:
				say "The microwave blinks on and then immediately blinks off as the safety circuits detect electronic components inside the microwave.[no line break][one of] The safety limiter is intended to prevent damage to both the microwave and electronic items that might be placed inside it.[or][line break][stopping]";
				stop;
	unless the side panel is fried:
		say "A light comes on in the microwave and it begins to hum.[if the side panel is hacked]The oven makes a sharp high-pitched electronic noise as it operates, but the shielding in the door prevents anything from happening outside.";
		repeat with sizzler running through the list of objects inside the cook box:
			if sizzler provides the property fryDescription:
				if sizzler is working, say "[fryDescription of sizzler][line break]";
			if sizzler provides the property fried:
				now sizzler is fried;
			otherwise: 
				do nothing;
		say  "A few moments later there is a loud [bold type]BING![roman type] and the microwave stops.";	
	otherwise:
		say "The microwave appears to be dead."		


[kleinhacking activity]
KleinHacking something is an activity.
Rule for kleinhacking something (called target):
	unless the side panel is fried:
		if the target is hacked:
			say "You feel a a light tickle in your head.";
		otherwise:
			say "With the door open, the hacked microwave keeps increasing its power as energy is lost to the air.  You feel an incredible burst of noise behind your forehead!  Static, bits of music, and above all the shriek of data transfer!  Just before you feel you'll go mad from the noise, there is a stutter, and it stops.  Blessed silence falls inside your skull.  There is a smell of smoke as the microwave goes dead.[paragraph break]You examine the now-fried microwave, musing to yourself that if only there was a way to make a portable version of this hack, you might be able to fight your way clear of this whole mess.";
			now the mitklein is hacked;
			now the player is clear;
			now the microwave is fried;
			now the side panel is fried;
			now the side panel is closed;
			now the side panel is unopenable;
			deactivate the table of Microwave Hints;
			deactivate the table of MitKlein hints;
	otherwise:
		say "The microwave appears to be dead."
		
[Rappelling activity]
Rappelling is an activity.

Rappelling stations is a list of rooms that varies.  Rappelling stations is {Atrium Midair Top, Atrium Midair Middle, Atrium Midair Bottom, Main Lobby}.

Rule for Rappelling:
	let L be entry 1 in rappelling stations;
	move the player to L;
	rotate rappelling stations backwards.



[Synthesizing activity]
Synthesizing is an activity.

Rule for synthesizing:
	if the tissueDonor of the tissue sampler matches the text "blank":
		say "The tissue generator bleeps and a red light comes on which reads 'NO SAMPLE SCAN FOUND.'";
		stop;
	otherwise:
		if the tissueDonor of the tissue sampler matches the text "Roberto":
			now the skin sample is valid;
		otherwise:
			now the skin sample is invalid;
		if the biogen feedstock is in the feed slot, remove the biogen feedstock from play;
		move the skin sample to the cryopack;
		now the cryopack is closed;
		now the cryopack is operating;
		say "Lights flash and the machine hums for a while. With a final hiss, the tissue generator lights an indicator reading 'COMPLETE.'  You notice the cryopack is now closed and operating."



Section 8 - Scenes

[Times of day]
Afternoon is a recurring scene.  Afternoon begins when the time of day is 12:00 PM.  Afternoon ends when the time of day is 5:00 PM.
Evening is a recurring scene.  Evening begins when play begins. Evening begins when the time of day is 5:00 PM.  Evening ends when the time of day is 8:00 PM.

When evening begins:
	if the player is out of doors:
		if the time of day is 5:00 PM: [This prevents the message from popping up at game start, which is an 'off-schedule' beginning for this ecene]
			say "The streetlights blink on around the area, throwing back the darkening sky."

Night is a recurring scene.  Night begins when the time of day is 8:00 PM.  Night ends when the time of day is 5:00 AM.

When night begins:
	if the player is in ResidentialOutside or the player is in GreenResidential:
		if the MitKlein is unhacked:
			say "It's 8:00 PM.  The curfew is now in effect for this neighborhood."

Every turn during Night:
	if the player is in ResidentialOutside or the player is in Green Residential Station or the player is in Front Lobby:
		if the MitKlein is unhacked:
			if the player is clear:
				if a random chance of 1 in 5 succeeds:
					say "Surveillance systems, active due to the Residential Curfew, note your presence and scan your MitKlein!  They'll be after you soon!";
					now the player is suspect;
					now the incriminatingAct is "allowing your active MitKlein to be scanned";
					the player incriminates in 3 turns from now;
				otherwise:
					say "The curfew is still in effect.  You'd better get [if Bedroom has been visited]back [end if]inside before you're scanned."


Morning is a recurring scene.  Morning begins when the time of day is 5:00 AM.  Morning ends when the time of day is 12:00 PM.

When morning begins:
	if the player is out of doors:
		say "The streetlights wink out, leaving the brightening sky to light the area."

[[Home Escape]
Home escape is a scene.  Home escape begins when play begins.  Home escape ends when the player is not in GreenResidential.]


[Bank Run]
Bank Run is a recurring scene.  Bank Run begins when Roberto Velez is in The Proletariat Bar and Roberto Velez is runningErrand.

Every turn during Bank Run:
	if the location of Roberto Velez is not Metro Savings:
		let the way be the best route from the location of Roberto Velez to Metro Savings, using doors;
		try Roberto Velez going the way.

Bank Run ends when Roberto Velez is in Metro Savings and the location is Metro Savings.


[Getting Cash]
Getting Cash is a recurring scene.  Getting Cash begins when Bank Run ends.  

When Getting Cash begins:
	say "Roberto approaches the ATM, intent on withdrawing funds to pay you for the blue jacket.";
	if the Tissue Sampler is not in the palm reader:
		say "He looks at the ATM's cracked palm reader, then at you.  'The ATM scanner, he is broken.'  He shakes his head.";
		now Roberto Velez is inHolding;
	otherwise:
		say "Roberto places his palm on the sampler, hidden inside the ATM.  It flashes briefly.  Nothing else happens.";
		say "He shakes his head.  'I am sorry, but the machine is broken.'  You reassure him that you don't need paying for the jacket, at which he breaks out into a huge smile, gives you a hug, shakes your hand and quickly changes into the new blue jacket, dropping his torn jacket.  He walks out of the ATM, proudly fingering his new wardrobe.";
		now the nametag is part of the blue jacket;
		now Roberto Velez is wearing the blue jacket;
		now the torn jacket is in Metro Savings;
		now the tissueDonor of the tissue sampler is "Roberto";
		now the printed name of the tissue sampler is "tissue sampler (Roberto)";
		now Roberto Velez is inPlay;
		remove Roberto Velez from play.

Getting Cash ends successfully when Roberto Velez is wearing the blue jacket.
Getting Cash ends unsuccessfully when Roberto Velez is inHolding.

[Roberto Waiting]
Roberto Waiting is a recurring scene.  Roberto Waiting begins when Getting Cash ends unsuccessfully.
Roberto Waiting ends in retry when the ATM is hacked and the location is Metro Savings and Roberto Velez is in Metro Savings.
Roberto Waiting ends in donedone at the time when Roberto Drinking begins.

	
Getting Cash begins when Roberto Waiting ends in retry.

[Roberto Drinking]
Roberto Drinking is a recurring scene.  Roberto Drinking begins when Roberto Velez is in the Proletariat Bar.  Roberto Drinking ends when Roberto Velez is not in the Proletariat Bar.

Understand "man" as Roberto Velez when the location is the Proletariat Bar and Roberto Drinking is happening.


[Clothes Shopping]
Clothes Shopping is a recurring scene.  Clothes shopping begins when the location is Garb-oh and Shoplifting is not happening.

Instead of dropping an antitheft tag during Clothes Shopping:
	say "The attendant spots you dropping an antitheft tag on the floor.  Suspicious, she presses her alarm and runs over, calling for police!";
	end the story saying "You have been arrested!".

Every Turn during Clothes Shopping:
	if a random chance of 1 in 7 succeeds:
		say "[one of]A small group of people enter the store, look around, look at each other and file back out.[or]The shopkeeper wanders past you and gives you a suspicious look.[or]A PA system mumbles a message about an upcoming sale.[as decreasingly likely outcomes]";
	else if a random chance of 1 in 4 succeeds:
		if the location of the shopper is Garb-Oh, say "[one of]A shopper murmurs some lyrics, presumably from a song she's listening to, and subsides.[or]A shopper pulls a [one of]shirt[or]pair of pants[or]jacket[purely at random] off the racks and looks at it critically before returning it.[or]A shopper wanders through the antitheft detectors and out of the shop, as another wanders in and begins browsing.[purely at random]"

Clothes Shopping ends when the location is not Garb-oh.
Clothes Shopping ends when Shoplifting begins.

[Shoplifting]
Shoplifting is a scene.  Shoplifting begins when the shopper is carryingSwag and the location is Garb-oh.

When Shoplifting begins:
	now shopTurn is turn count + 7;
	if the location is Garb-oh:
		say "The shopper puts down a last item of clothing and drifts towards the door.  As she reaches it, however, the antitheft alarm blares and a strobe light begins to flash!  She stops, frozen in surprise, as the shopkeeper rushes over and grabs her.  A few seconds later, two policemen enter the shop.  The shopkeeper, shopper and police all begin shouting at the same time.";
		move Officer Prescott to Garb-Oh;
		move the Patrolman to Garb-Oh.		


When Shoplifting ends:
	remove the shopper from play;
	remove Officer Prescott from play;
	remove the Patrolman from play;
	if the location is Garb-oh:
		say "The police finally search the shopper's shoulder bag, and shake their heads.  They lead her towards the door, one explaining that they'll need to take her statement at the station.  The shopkeeper asks snippily what they'll be doing to protect her stock; Officer Prescott rolls his eyes and says 'Lady, we'll have our patrol stay in the plaza out front for a while in case this one has any accomplices, all right? And we'll have an officer come back by every once in a while.'  They leave, and the shopkeeper watches them go with a somewhat irritatingly smug expression on her face.";
	if the sales counter encloses the player:
		say "The shopkeeper looks over and sees you behind the sales counter.  Fury contorts her face and she runs to the door, screaming for the police to return!  They rush back in and find you behind the register.  Shaking their heads, they grab you and march you out of the store.";
		end the story saying "You have been arrested!";
	if the location is Green Commercial Plaza South:
		say "A pair of police escort a tearful woman out of Garb-Oh.  A police flitter swoops down from the sky with a howl of turbines to land in the plaza.  The two cops speak with the pilot before bundling the woman inside and climbing in after her.  The aircraft spools its turbines back up and lifts back into the air, vanishing out of sight behind the skyline."

Shoplifting ends when the turn count is shopTurn.

[Police Gone]
Police Gone is a recurring scene.  Police Gone begins when Shoplifting ends.  

When Police Gone begins:
	now patrolTurn is turn count + 20.
	
Police Gone ends when turn count is patrolTurn.


[Patrol]
Patrol is a recurring scene.  Patrol begins when Police Gone ends.  
Patrol ends finally when the turn count is patrolTurn and the Police Flitter is violated.  
Patrol ends temporarily when the turn count is patrolTurn and the Police Flitter is pristine.

When Patrol begins:
	now patrolTurn is turn count + 20;
	Move the police flitter to Green Commercial Plaza South;
	Move Officer Prescott to Green Commercial Bistro Paris;
	if the location is Green Commercial Plaza South:
		say "A police flitter spirals slowly down out of the sky, beacons strobing and warning tones blaring.  It comes to a rest in the clear area in the middle of the plaza and powers down.  Officer Prescott gets out, closes the door and ambles off towards the Bistro nearby, probably to get a coffee.";
		if the player is flitterEnabled:
			now the police flitter is unlocked;
	if the location is Green Commercial Bistro Paris:
		say "Officer Prescott enters the Bistro, buys a coffee and pastry and sits down at a window table."


After inserting into the car key during Patrol: [so we can assume the flitter is there]
	if the location is Green Commercial Plaza South:
		If the player is flitterEnabled:
			now the police flitter is unlocked;
			say "The police flitter flashes its lights twice as the locklarm disengages.";
	continue the action.

After going from Green Commercial Plaza South during Patrol:
	now the police flitter is closed;
	now the police flitter is locked;
	continue the action.

When Patrol ends:
	if the location is Green Commercial Bistro Paris:
		say "Officer Prescott finishes his coffee, tosses his trash in a bin and ambles out of the bistro.  You hear the sound of flitter turbines spooling up outside and then fading away.";
	if the location is Green Commercial Plaza South:
		say "Officer Prescott ambles out of Green Commercial Bistro Paris.  [if the police flitter is locked]As he approaches the flitter, the flitterkey transponder on his belt disables the locklarm.[otherwise]  He pauses as he reaches the flitter, frowns, and checks the flitter key on his belt before trying the door.  When it opens, he looks around suspiciously, then makes a radio call.  You hear him state that he is discontinuing the Plaza patrol.  [end if]He then climbs into the flitter and shuts the door.  A few moments later, the aircraft powers up. The turbines spool up and, its beacons flashing, it lifts smoothly into the air, disappearing behind the building tops.";
		if the player encloses a keyed memory chip (called target):
			now the target is transponder;
			now the item-id of the target is "M0";
			now the Contents of the target is "flitter";
			deactivate the Table of Vehicle Hints;
			say "Your hacked car key beeps softly, and its ready light turns green!";
	Now the police flitter is closed;
	Now the police flitter is locked;
	Remove the police flitter from play;
	Remove Officer Prescott from play.

Police Gone begins when Patrol ends temporarily. [note this must be after Patrol scene declarations]

[Drug Raid]
Drug Raid is a scene.  Drug Raid begins when the location is South Primrose Lane and South Primrose Lane is reported and Drug Market is unraided.

The Police Vehicles are scenery.  The description of the Police Vehicles is "Several ground and air vehicles in police markings with their lights flashing, parked haphazardly around the traffic circle."
The Police Barrier is scenery.  The description of the Police Barrier is "A barrier made of plastic and aluminum, its power derives not from its appearance or construction but from the policeman standing behind it."
Understand "cordon" as the police barrier.


Instead of going south in South Primrose Lane during Drug Raid:
	now instantiate is true;
	say "A stern-looking patrolman from the cordon intercepts you and firmly tells you to stay back.  You move back to the street." instead.

When Drug Raid begins:
	now raidTurn is turn count + 10;
	move the Police Vehicles to South Primrose Lane;
	move the Patrolman to South Primrose Lane;
	move Police Barrier to South Primrose Lane;
	say "You arrive at South Primrose Lane to a scene of chaos.  Police vehicles are pulled up all over the road, cyclone lights flashing.  As you watch, heavily armed SWAT officers file through the hole in the fence towards the Drug Market.   A staticky transmission over the radio of the vehicles near you says quietly 'Breaching charges in place.'  You can hear a voice on a bullhorn shout 'You have thirty seconds to surrender!'[paragraph break]A few seconds later, there is a deep thundering [bold type][italic type]BOOM[roman type] as the breaching charges detonate, and a confused hubbub as (presumably) the SWAT officers rush into the abandoned house."

	
Instead of looking in South Primrose Lane during Drug Raid:
	say "Police vehicles are pulled up here.  Bright lights are visible over the fence to the south.  A cordon of police barriers, guarded by a stern-looking patrolman, prevents anyone from approaching the fence, while police personnel mill about behind the barriers."

Drug Raid ends when turn count is raidTurn.
	
When Drug Raid ends:
	remove the Police Vehicles from play;
	remove the Police Barrier from play;
	remove the Patrolman from play;
	if the location is South Primrose Lane:
		say "Eventually, police begin filing back out of the hole in the fence, dragging a few handcuffed suspects with them.  The bright lights across the fence go out, and various SWAT and regular police get back into their assorted vehicles and begin to pull away.  Soon nothing is left except a slight smell of smoke from the breaching charges."


[Endgame]
Endgame is a scene.  Endgame begins when the player has been in Atrium Midair Top for 1 turn.  
Instead of dropping ID Bomb during Endgame:
	say "[if Bombs Thrown is 0]You arm the bomb and toss it. The bomb spins down out of sight towards a window wall.  A few seconds later you make out a slight twinkling as the flash unit fires.  A low noise, of a crowd confused, slowly rises in volume![otherwise if Bombs Thrown is 1]Arming another bomb, you toss it away into the atrium where crowds are gathering at the windows!  The bomb flashes just in front of a large crowd gathered before a window wall, and they begin to mill about in panic and confusion!  The noise inside the atrium rises![otherwise if Bombs Thrown is 2]You arm your third ID bomb and drop it directly down into the crowds in the Main Lobby, where you can see police and Homeland Security forces pointing up at you as they maneuver into place.  There is a definite flinching in the crowd as the bomb goes off nearly at floor level, and the law enforcement personnel are instantly swamped by the confused masses of convention attendees as everyone on the Lobby floor is cut off from communicating directly with their electronics![otherwise]You arm another bomb and throw it across the Atrium towards a group of onlookers.  A twinkle indicates more citizens freed!";
	Increase Bombs Thrown by 1;
	remove the noun from play.

Instead of arming ID bomb during Endgame:
	try dropping the noun instead.

Every turn during Endgame:
	say "The descender whirs steadily as it lowers you.";
	carry out the rappelling activity.

Endgame ends victoriously when the location is Main Lobby and Bombs Thrown is greater than 2.
Endgame ends unsuccessfully when the location is Main Lobby and Bombs Thrown is less than 3.

When Endgame ends victoriously:
	say "You reach the floor of the Main Lobby.  The confusion is immense, as thousands of people realize that their MitKlein bottles no longer function.  The various law enforcement personnel throughout the crowd are distracted and paralyzed by the fact that their equipment will no longer recognize them.  In the confusion, your landing goes nearly unnoticed.  You slip out of the descender and it whisks back upwards out of sight.[paragraph break]Soon, new police enter the lobby and begin organizing an evacuation while others continue their futile search for the unknown attacker.  A policeman gestures at you and a group of people near you to follow him and turns to head downstairs towards the Transit station.[paragraph break]Moving away, you head for the lift tube to the roof pads and your extraction point.  You cast a glance over as everyone else in the area turns to follow the policeman, and you feel the savage grin on your face.[paragraph break][italic type]Meek and obedient, you follow the leader down well-trodden corridors, down into the Valley of Steel. But the police can't save you.  I can.  I will.  I'm coming back.  I'm coming for all of you.[roman type]";
	end the story finally saying "You are free!" 

When Endgame ends unsuccessfully:
	say "You reach the floor of the Main Lobby.  Despite the confusion and distraction that your descent has caused, the police are still organized on the ground, and as you touch down you are tackled by a horde of law enforcement!";
	end the story saying "You have been arrested!"
	

Section 9 - Tables

Table of SMS Messages
number	message
0	--
1	"REPORT RECEIVED.  MISSION SUCCESSFUL.  ATTACK PROGRAM CREATED USING INFORMATION IN REPORT. <more>"
2	"DANGER DANGER DANGER:  OPERATIVE COMPROMISED DURING OPERATION.  YOUR MITKLEIN CODE READ BY HOMELAND SECURITY.  YOUR ID RECORDS DELETED BUT MITKLEIN CODE ALONE ENOUGH TO ID YOU AS TARGET.<more>"
3	"NEW INSTRUCTIONS FOLLOW: <more>"
4	"- YOU MUST FIND A WAY TO DISABLE YOUR MITKLEIN USING ATTACK PROGRAM WHICH WILL BE DELIVERED<more>"
5	"- YOU MUST NOT BE IN SURVEILLED AREA DURING CURFEW WITH ACTIVE MITKLEIN OR SECURITY SWEEPS WILL IDENTIFY YOU AS TARGET<more>"
6	"- YOU MUST NOT BE ID-SCANNED UNTIL MITKLEIN IS DISABLED<more>"
7	"- ONCE MITKLEIN IS DISABLED, RETRIEVE DROP MESSAGE FOR NEW INSTRUCTIONS.  CONTACT WILL LEAVE DROP MESSAGE NEAR FOUNTAIN IN GREEN COMMERCIAL.<more>"
8	"- ATTACK PROGRAM AVAILABLE FOR DOWNLOAD BY NETBOOTING ANY COMPUTER WITH YOUR PHONE IN PROXIMITY<more>"
9	"- THIS PHONE POSSIBLY COMPROMISED - IF IT ACQUIRES CELL SIGNAL IN ANOTHER AREA IT WILL BE LOCATABLE BY HOMELAND SECURITY - DISABLE ENTIRELY OR ABANDON BEFORE TRAVEL<more>"
10	"GOOD LUCK. MESSAGE ENDS."


Table of Stories
headline	url	newsstory
"Area Man sought for ground-to-air attacks on military drones."	"http://bit.ly/13YYZJ8"	"The motives are as unknown as the identity of the mystery man, who has destroyed three Government UCAVs through various means in the past few weeks.  The FBI confidently expects his capture in the next few days."
"Area Man on senseless rampage."	"http://bit.ly/15kTY2q"	"Several dozen police officers were called out when a man began randomly shooting through home windows in an apparent vendetta against television sets last night.  Although officers attempted to capture the man alive, he resisted arrest with heavy weapons.  The Orange Industrial Water Tower will be out of service for some weeks."
"Handheld device privacy threat?"	"http://bit.ly/ZBvOZH"	"News investigation shows that popular handhelds may have significant privacy backdoor.  Government denies story allegation."
"In Los Angeles, something is always burning."	"http://bit.ly/15sb2mO"	"Area man barricades house against police in possible confusion.  SWAT unit's flash-bangs result in casualty."
"Soldiers begin to experience breakdowns."	"http://bit.ly/16NZdXM"	"The parents of several deployed American military personnel have raised concerns that their children appear to be losing touch with reality.  Government refutes these claims with statistics showing that 97.2 percent of deployed American service personnel are safely medicated."
"Possible Artificial Intelligence breakthrough!"	"http://bit.ly/17I7fzC"	"Researchers at an area university have issued conflicting press statements as to whether a recent AI incubation experiment has ended in success or failure.  One graduate student, who appeared to be in tears, would only say 'Pyrrhic.  It was so unnecessary.'"
"Winter settles in over military positions in the mountains."	"http://bit.ly/13YZwek"	"Fighting has been slowed by the onset of a heavier-than-expected winter snow season in the Corderilla Oriental mountains.  Trench lines have been set up, and both sides have settled in for a vigilant if slower winter."
"New Mit-Klein Data Sold To Dating Company!"	"http://bit.ly/17I7kDq"	"New venture promises to utilize Mitsui-Klein transaction and telemetry data to match clients with ideal partners.  'We would never intrude on our clients' privacy, ' the CTO stated.  'It is possible that data has been deanonymized before it reaches us, but we would never utilize that data for our financial gain.'"
"Fine Structure is this month's ebook best seller!"	"http://bit.ly/16cfR3s"	"Science Fiction novel reaches record sales.  Author unavailable for comment, but publisher and readers pleased!"
"Giant combat robot found in student flat in Britain."	"http://bit.ly/13nauKJ"	"Authorities cannot fathom who left the 7-story-tall combat mecha folded in a basement."

Table of Graffiti
image	url
"a small stick figure with a signal strength icon around its head."	"http://bit.ly/11hN3R0"
"a stylized angel wearing a pair of mirrorshades."	"http://bit.ly/16cfZ2S"
"scrawled text reading [bold type]HISTORY IS A LIE[roman type]![line break]"	"http://bit.ly/13naTgl"
"a small crude image of a television."	"http://bit.ly/18pRO02"
"a small figure, flying, wearing a cape."	"http://bit.ly/18O4POl"
"a small imp giving you the finger!"	"http://bit.ly/ZBwJsV"
"a crude drawing of the Twin Towers with the word 'REALLY?'"	"http://bit.ly/ZBwMoI"
"a crude robotic figure reaching up pleadingly."	"http://bit.ly/13d2hdd"
"the scrawled words [bold type]THIS IS JIMMY FULL OF BLOOD.[roman type]"	"http://bit.ly/11cbpAS"
"the scrawled words(?) [italic type]Nath bhoshu alef ad'yegh. Aum.[roman type]"	"http://bit.ly/ZLGvfN"


Table of Gizmos
component		item-id 
broadcast chip		"M1" 
memory chip		"M2" 
Klein blaster		"M3"
disposable camera		"M4"
ID bomb		"M5"
spool		"M6"
harness		"M7"
descender		"M8"

Table of Outcome Objects
component list	result 
{"M1", "M2"}	"M3" 
{"M3", "M4"}	"M5"
{"M6", "M7"}	"M8"



Section 10 - NPCs

[servers]
A server is a kind of person.  A server is always scenery. The description of a server is "A slightly harrassed-looking food service worker, intent on trading meals for funds.  [one of]He[or]She[sticky random] is busy serving customers."
Report examining a server:
	stop.
A server is in every foodstore.

[bystander]
A bystander is a kind of person.  A bystander is always scenery.  The description of a bystander is "You see a [one of]young[or]middle-aged[or]elderly[or]harrassed-looking[or]worried[or]smiling[or]blank-faced[or]distracted[or]indeterminate[as decreasingly likely outcomes] [one of]office worker[or]executive[or]student[or]tech worker[or]delivery worker[purely at random] [one of]with a messenger bag[or]with a briefcase[or]juggling some packages[or]towing a travel case[or]with some flowers[or]with a child[or]intent on their destination[or]eating a snack[or]carrying a newspaper[or]reading from a handheld[or]answering a text[purely at random]."

Report examining a bystander:
	stop.
	
Understand "man" as a bystander.
Understand "woman" as a bystander.
Understand "person" as a bystander.
Understand "people" as a bystander.


[customers]
A customer is a kind of bystander.

Some customers are in every foodstore.

[commuters]
A commuter is a kind of person.  A commuter is always scenery.  The description of a commuter is "A [one of]young[or]middle-aged[or]elderly[or]harrassed-looking[or]worried[or]smiling[or]blank-faced[or]distracted[or]indeterminate[as decreasingly likely outcomes] [one of]office worker[or]executive[or]student[or]tech worker[or]delivery worker[purely at random] [one of]with a messenger bag[or]with a briefcase[or]juggling some packages[or]towing a travel case[or]with some flowers[or]with a child[or]intent on their destination[or]eating a snack[or]carrying a newspaper[or]reading from a handheld[or]answering a text[purely at random] [one of]hurries[or]walks swiftly[or]runs[or]jogs[or]marches[or]swerves[or]meanders[or]sashays[as decreasingly likely outcomes] past you [one of]and is gone[or]before vanishing[or]before disappearing into the crowd[or]before slipping out of sight[or]on their way out of the area[as decreasingly likely outcomes]."

Instead of touching a commuter:
	say "You try to reach out into the fast-moving stream of people to intercept them, but they effortlessly dodge your grasp without looking your way and are lost in the crowd."
	
Instead of speech when the noun is a commuter:
	say "Your words are lost as the commuter slips past you and continues on their way."
	
Instead of pushing a commuter:
	say "You try to shove the commuter as they go by, but their experience at avoiding crowds allows them to slip past you without stopping."
	
Instead of attacking a commuter for the first time:
	now instantiate is true;
	say "You probably shouldn't do anything to draw attention from the police."
	
Instead of attacking a commuter for the second time:
	now instantiate is true;
	say "Really, attacking people isn't going to help and is just going to get you in trouble."
	
Instead of attacking a commuter for the third time:
	say "[bracket]Fine, if you insist…[close bracket] Your attempted attack is easily dodged, but the commuter gives you a hostile stare and shouts for the police.  Officers appear and make a beeline for you at your victim's behest, and one brings out a MitKlein scanner.  When it bleeps a harsh tone, they all look at you with gimlet eyes.";
	end the story saying "You have been arrested!".
	
[Understand "man" as a commuter.
Understand "woman" as a commuter.
Understand "person" as a commuter.
Understand "people" as a commuter.]


[riders]
A rider is a kind of bystander.

Instead of touching a rider:
	say "You start to reach out into the crowd of people, but realize you don't want to cause a disturbance and desist."
	
Instead of speech when the noun is a rider:
	say "Your words are lost in the rushing sound of the capsule. The transit rider ignores you."
	
Instead of pushing a rider:
	say "You start to shove a transit rider, but realize you don't want to cause a disturbance and desist."
	
Instead of attacking a rider for the first time:
	now instantiate is true;
	say "You probably shouldn't do anything to draw attention from the police."
	
Instead of attacking a commuter for the second time:
	now instantiate is true;
	say "Really, attacking people isn't going to help and is just going to get you in trouble."
	
Instead of attacking a commuter for the third time:
	say "[bracket]Fine, if you insist…[close bracket] Your attempted attack is easily dodged, but the transit rider gives you a hostile stare and shouts for the police.  The Capsule shudders to a halt.  A door at the front slides open; officers appear and make a beeline for you at your victim's behest, and one brings out a MitKlein scanner.  When it bleeps a harsh tone, they all look at you with gimlet eyes.";
	end the story saying "You have been arrested!".
	
Understand "man" as a rider when the location is the Transit Capsule.
Understand "woman" as a rider when the location is the Transit Capsule.
Understand "person" as a rider when the location is the Transit Capsule.
Understand "people" as a rider when the location is the Transit Capsule.
Understand "transit rider" as a rider when the location is the Transit Capsule.


[staff members]
A staff member is a kind of person.  A staff member is always scenery.  The description of a staff member is "A [one of]resident[or]attending[or]nurse[or]medical student[or]hospital administrator[purely at random] [one of]with some case files[or]fiddling with a tablet[or]talking on a phone[or]reading a note[or]looking at a chart[purely at random] [one of]hurries[or]walks swiftly[or]runs[or]slips[purely at random] past you."

Report examining a staff member:
	stop.
	
Instead of touching a staff member:
	say "You reach for the staff member's arm but they're past you before you can actually touch them and are gone."
	
Instead of speech when the noun is a commuter:
	say "The staff member ignores you, intent on their business."
	
Instead of pushing a staff member:
	now instantiate is true;
	say "You desist, unwilling to draw attention to yourself from security."
	
Instead of attacking a staff member:
	now instantiate is true;
	say "You desist, unwilling to draw attention to yourself from security (or worse, the police)."

Understand "staff" as a staff member.


[policemen]
A policeman is a kind of man.  The description of a policeman is "A typical example of the Metro police force, wearing patrol gear including light body armor, crowded equipment belt and what look like actually comfortable boots."

Instead of attacking a policeman:
	now instantiate is true;
	say "You're determined to get out of this mess, and that's definitely not going to happen if you do that.  You smother the impulse."
	
[bartender]
The Bartender is a man in the Proletariat Bar.   The description of the bartender is "The bartender is busily polishing a glass. He is ignoring you entirely, but you don't feel insulted as he seems to be ignoring everyone in the bar."
The Bartender is holding the glass.  The glass is scenery.  The description of the glass is "A slightly dirty standard bar drink holder."
 
Report examining the bartender:
	stop.
Instead of speech when the noun is the bartender:
	if the topic understood matches the text "roberto" or the topic understood matches the text "velez":
		if Roberto Velez is in the Proletariat Bar:
			say "The bartender looks up and then nods meaningfully towards Roberto, who is sitting at a table.  'He's in here most nights, like clockwork[if Roberto Velez is preJacket]. Having some trouble at work, I understand.  Best ask him about it, not me[end if].'";
			rule succeeds;
		otherwise:
			say "The bartender looks up.  'He comes in here most afternoons around three.  Works the early shift at the Bank.'";
			rule succeeds;
	if the topic understood matches the text "reserve" or the topic understood matches the text "spacescraper" or the topic understood matches the text "bank":
		say "The bartender shrugs.  'Don't know much about what goes on in there.  You might ask Roberto, though.'";
		rule succeeds;
	if the topic understood matches the text "mitklein":
		say "The bartender scowls.  'Don't remind me.  Most folks in here don't like [']em, but there ain't much we can do.'";
		rule succeeds;
	if the topic understood matches the text "drink" or the topic understood matches the text "beer":
		say "The bartender gives you a professional look.  'You don't got no money.  No money, no drink.'";
		rule succeeds;
	if the topic understood matches the text "man" and Roberto Velez is unknown:
		if Roberto Velez is inPlay:
			say "The bartender looks over at the seated man.  'Him?  He's in here most nights.  If you want to know anything else about him, try asking him.'";
	otherwise:
		say "[one of]The bartender looks at you briefly before  shrugging and returning his attention to the glass.[or]The bartender cocks his head as you speak, then shakes his head eloquently.  Looks like he doesn't have anything to say.[or]The bartender seems to be ignoring you.[purely at random]".

[Roberto Velez] [See Ex. 205 for spicing up Roberto]
Roberto Velez is a man in the Proletariat Bar.  The printed name of Roberto Velez is "a man". Roberto Velez can be either preJacket or postJacket. Roberto Velez is preJacket.  Roberto Velez can be known or unknown.   Roberto Velez is unknown.  Roberto Velez can be inPlay or inHolding.  Roberto Velez is inPlay. Roberto Velez can be runningErrand or notrunningErrand.  Roberto Velez is notRunningErrand.  Roberto Velez is wearing the torn jacket.  The description of Roberto Velez is "A medium-height man of middle age and dark but somewhat pasty-looking skin.  His hair, black and cut short, is just beginning to grey at the temples.  His hands are rough and callused.  He is wearing work shoes and dark blue trousers, slightly scuffed.  [if Roberto Velez is wearing the torn jacket]He is wearing a dark blue trade uniform jacket with a long narrow gash at the left shoulder[tagged details].[otherwise]  He is wearing a cheap white button-down shirt."

To say tagged details:
	if the nametag is part of the torn jacket, say " and his name (Roberto Velez) on a tag clipped to the breast".
	
After examining the nametag for the first time: recognize Roberto.
After examining Roberto Velez for the first time:  recognize Roberto.

To recognize Roberto:
	now Roberto Velez is known;
	now the printed name of Roberto Velez is "Roberto Velez".

[Roberto's movement rules]
At the time when boozing starts:
	if Roberto Velez is off-stage:
		if the location is The Proletariat Bar:
			say "The door opens.  [if Roberto Velez is unknown]A medium man in a blue trade uniform[otherwise]Roberto Velez[end if] comes in, orders a beer and sits down at a table.";
		move Roberto Velez to The Proletariat Bar;
		now Roberto Velez is inPlay;
		snoozing starts at 2:00 AM.
		
At the time when snoozing starts:
	if Roberto Velez is in The Proletariat Bar:
		if the location is The Proletariat Bar:
			say "Roberto stands up, stretches, pays his bill and ambles out.";
		remove Roberto Velez from play;
		now Roberto Velez is inHolding;
		boozing starts at 3:00 PM.

[Roberto's possessions]
The torn jacket is a thing.  The torn jacket is wearable.  The torn jacket is medium.  The description of the torn jacket is "A dark blue uniform jacket with black snap closures and false side pockets.  There is a long gash on the outside of the left sleeve near the shoulder.[if nametag is part of the torn jacket]  There is a nametag clipped to the jacket which reads 'Roberto Velez.'"

The nametag is a thing.  The nametag is small.  The nametag is part of the torn jacket.  The nametag is scenery.  The description of the nametag is "A small black nametag with the name 'Roberto Velez' inscribed on it."

After examining the nametag for the first time:
	now Roberto Velez is known.

[Roberto's conversation]	
Instead of speech when the noun is Roberto Velez:
	if the topic understood matches the text "jacket" or the topic understood matches the text "uniform":
		if Roberto Velez is preJacket:
			say "Roberto cranes his head to look at the damage.  'Oh, yes,' he says.  'This happened at work.  I caught it on a shelf.'  He shakes his head dolefully.  'They are making me pay for the jacket,' he says to you, 'but they are charging me the new price for it!  The price, it is ridiculous!  I would replace it myself but I cannot afford one like it.  I will have to let them dock my pay for months.'";
			now Roberto Velez is postJacket;
		otherwise:
			say "[one of]Roberto pokes a finger through the tear glumly.  'I need to replace this.'[or]Roberto nods.  'Yes, I still must find a way to replace this.'[or]Roberto looks at you sharply.  'Can you help me?  Or are you just amused by my misfortune?'[as decreasingly likely outcomes]";
	otherwise if the topic understood includes "job/work/bank/reserve/spacescraper":
		say "Roberto sighs.  'I have a good job,' he says.  'I am a custodian there at the Reserve Bank, downtown.  The work is not bad, and the pay is not terrible, but they are very strict about the uniform.'";
	otherwise if the topic understood includes "who/name":
		say "The man looks up.  'My name is Roberto Velez,' he says, tapping his nametag.";
		recognize Roberto;
	otherwise:
		say "Roberto looks at you curiously.  You have a sneaking suspicion his English is not very good.".

[Roberto's transactions]
Instead of the player trying giving the blue jacket to Roberto Velez:
	if Roberto Velez is runningErrand, say "Roberto won't accept the jacket unless he can pay you for it." instead;
	if Roberto Velez is wearing the blue jacket, say "He already has it!" instead;
	if Roberto Velez is carrying the blue jacket, say "He already has it!" instead;
	say "Roberto stands up and eagerly examines the blue jacket.  'This would be a perfect replacement!' he says enthusiastically, showing you how closely it resembles his torn uniform jacket.  'Would you be willing to part with it? I cannot give you much, but I would happily pay you what I can; it will be less than what those dogs would take from my salary to replace this one!' He pats his pockets, then shakes his head.  'I need to go to the ATM.'  With that, he stands up.";
	now Roberto Velez is runningErrand.

Every turn when the player can see Roberto Velez and the location is The Proletariat Bar:
	if a random chance of 1 in 5 succeeds, say "[one of]Roberto shuffles his feet.[or]Roberto takes a swig of his beer.[or]Roberto stands and goes to the bar for some peanuts, returning to the table.[or]Roberto examines his jacket sleeve and sighs.[as decreasingly likely outcomes]".

[Shopkeeper]
In Garb-oh is a woman called the shopkeeper.  The description of the shopkeeper is "[if Shoplifting is happening]The shopkeeper is standing with the police and the shopper near the doors, gesticulating angrily and haranguing both the police and shopper.[otherwise] The shopkeeper is a somewhat frumpy older lady.  You can't help but wonder if she has been deliberately selected for her appearance so as to present a contrast with the merchandise."

Instead of speech when the noun is the shopkeeper:
	if the topic understood includes "jacket/shirt/pants/clothes":
		say "The shopkeeper nods.  'The latest fashions, available at reasonable prices.'";
	otherwise if the topic understood includes "buy/purchase/sell/money/cash":
		say "The shopkeeper says 'All of our transactions are handled by the sales counter's Mitsui-Klein readers.'  She points to the sales counter.  'If you have a purchase, your Mitsui-Klein will cause our shopsystems to summon staff.'";
	otherwise if the topic understood includes "mitsui-klein/mitsui/klein/mitklein/encapsulation/capsule":
		say "She looks at you suspiciously.  'Everyone has one, obviously.  Why wouldn't they?'";
	otherwise if the topic understood includes "tags/antitheft/security/sensor/sensors":
		say "She glares at you.  'Of course we have security tags on our merchandise.  You wouldn't believe the problems we had with shoplifting, even with the cameras, and the police don't seem interested in using all that footage to actually catch criminals.  Lord knows what they [italic type]do[roman type] use it for.  Anyway, don't try to pull those tags off - unless you have the matching tag remover tool, all you'll do is damage the goods!'";
	otherwise if the topic understood includes "police":
		say "She shakes her head.  'They won't patrol in the store, no matter how much I ask them to, but their response time since we put the security system in place has been quite impressive.'";
	otherwise if the topic understood includes "cameras/camera/surveillance":
		say "She nods firmly.  'It's a much safer world with those cameras in it.  I'm glad that the government is concerned enough about our safety to go to the trouble.'";
	otherwise if the topic understood includes "shopper/woman":
		say "You get an old-fashioned look.  'Please do not harrass the other shoppers.  We're recording all events in the store in case anyone complains.'";
	otherwise:
		say "The shopkeeper shakes her head, moving away.  'I'm quite busy.  Please examine our wares at your leisure.'"



[Shopper]
In Garb-oh is a woman called the shopper.  The shopper can be carryingSwag or notcarryingSwag.  The shopper is notcarryingSwag.  The shopper is wearing the shoulder bag.  The description of the shopper is "[if Shoplifting is happening]In tears, the shopper stands near the police officers, protesting her innocence and trading angry accusations with the shopkeeper.[otherwise] The shopper is a young woman wearing large headphones, loose clothes. She is bouncing her head in what is probably the rhythm of the song she is listening to, and seems to be paying very little attention to her surroundings.  Every once in a while she pulls an item from a rack and holds it up in front of a mirror before returning it to its place.  She is wearing a large shoulder bag."

The shoulder bag is a container.  The shoulder bag is open.  The description is "An open-topped satchel with a carrying strap meant to be strung over one shoulder.[if the shopper is wearing the shoulder bag]  It is currently over the shoulder of a woman shopper."


Instead of inserting into the shoulder bag:
	if the noun is a garment:
		say "You stealthily slide [the noun] into the shoulder bag!";
		now the noun is inside the shoulder bag;
		if the noun is tagged:
			now the shopper is carryingSwag;
		continue the action;
	otherwise:		
		say "The shopper feels you placing [the noun] into the bag! She spins around, clutching the bag tightly to herself and hisses 'Do you want me to scream for a cop?'" instead.

Report inserting into the shoulder bag:
	stop.

Persuasion rule for asking the shopper to try doing something:
	say "[one of]The shopper ignores you.[or]The woman looks at you disbelievingly, rolls her eyes and moves on.[or]The shopper points at her headphones with an insincere smile of apology and moves away.[purely at random]";
	persuasion fails.
	
[Officer Prescott]
Officer Prescott is a policeman.  Officer Prescott is carrying the flitterkey.  The description of Officer Prescott is "A normal-looking Metro Policeman, Prescott is wearing light patrol gear with his holobadge displaying his name and rank across his left breast. Every once in a while, the comm unit attached to his belt murmurs to him through his earpiece.[if the location is Green Commercial Bistro Paris] At the moment, he's sitting at a table nursing a coffee."

Rule for deciding the concealed possessions of Officer Prescott:
	if the particular possession is the flitterkey, no;
	otherwise yes.

Persuasion rule for asking Officer Prescott to try doing something:
	if a random chance of 1 in 3 succeeds, say "[one of]Officer Prescott looks at you briefly, then shakes his head.[or]Officer Prescott ignores you in favor of listening to a static-ridden message on his comm unit.[or]Officer Prescott shakes his head and says 'Ask at the station, I'm busy.'[as decreasingly likely outcomes]";
	persuasion fails.

Instead of speech when the noun is Officer Prescott:
	if the topic understood matches the text "key" or the topic understood matches the text "flitterkey":
		say "Officer Prescott unconsciously brushes his hand over the transponder on his belt.  'This is for official use only,' he says gruffly." instead;
	if the topic understood matches the text "patrol" or the topic understood matches the text "flitter" or the topic understood matches the text "plaza":
		say "[one of]Officer Prescott says 'We'll be patrolling the plaza off and on for a while.'[or]Officer Prescott nods.  'That's my flitter.  I'll be stopping in from time to time.'[or]Officer Prescott glares at you. 'Don't mess with my flitter!'[purely at random]" instead;
	if the topic understood matches the text "ambulance":
		say "Officer Prescott says 'Ambulances are official City vehicles.  Don't mess with them.  Only those with proper authorization (he touches the transponder on his belt) can open 'em.'" instead;
	if the topic understood matches the text "surveillance" or the topic understood matches the text "camera" or the topic understood matches the text "mit-klein":
		say "'We're watching for your protection.'" instead;
	if the topic understood matches the text "ramirez" or the topic understood matches the text "sergeant":
		say "Officer Prescott nods. 'Ramirez is my sergeant.  He's on desk duty back at the station in Green Service.'" instead;
	if the topic understood matches the text "drugs" or the topic understood matches the text "drug":
		if South Primrose Lane is reported:
			say "The sergeant stares suspiciously at you.  'Someone already reported that.' He peers at you. 'In fact, I think it was you.  Are you trying to be funny?'" instead;
		if the player has been in the Drug Market:
			now South Primrose Lane is reported;
			say "Officer Prescott says 'Did you see something?'  When you respond that you have, he suddenly becomes animated, looking directly at you.  'Did you say drugs?  Where did you see this?'  You tell him about the shifty characters and drugs in the Drug Market.  He taps his comm unit and starts talking excitedly. The word 'drugs' and 'extreme' and 'losers' come up frequently.  He has lost interest in you." instead;
		otherwise:
			say "Officer Prescott says 'Did you actually see drug trafficking?' When you shake your head, he shakes his head and returns his attention to his coffee." instead;		
	if the topic understood matches the text "shoplifter":
		say "Officer Prescott shakes his head.  'Not your business.'" instead;
	otherwise:
		say "[one of]Officer Prescott looks at you and shakes his head.[or]Officer Prescott ignores you.[or]Officer Prescott says 'Is it an emergency?' before ignoring you.[purely at random]"

[Police]
The Patrolman is a policeman.  The description of the Patrolman is "A street cop, dressed in uniform[if the location of the Patrolman is South Primrose Lane] rather than the riot armor of a SWAT team member.  He is patrolling the barrier, making sure no passers-by intrude on the scene[end if]."


[Sergeant Ramirez]
In the Front Desk is a policeman called Sergeant Ramirez. The description of Sergeant Ramirez is "Seated behind his desk, this grizzled uniformed policeman is clearly a veteran of many years' service.  He scowls at you, waiting for you to make his life more annoying."

Every turn when the player can see Sergeant Ramirez:
	if a random chance of 1 in 5 succeeds, say "[one of]Sergeant Ramirez scowls at his paperwork.[or]Sergeant Ramirez sharpens a pencil.[or]The telephone rings.  Sergeant Ramirez answers gruffly, speaks a few words and hangs up.[or]The door swings open and two officers come in, manhandling a suspect between them.  Ignoring their suspect's complaints, they pause briefly to check in with the desk before moving on into the police station.[or]Sergeant Ramirez picks his nose.[as decreasingly likely outcomes]";	

Persuasion rule for asking Sergeant Ramirez to try doing something: 
	say "[one of]The sergeant stolidly ignores you.[or]'You want me to run you in?'[or]'Beat it, I'm busy.'[or]'Look, go bother somebody else, okay?'[or]The sergeant stares at you fixedly, ostentatiously comparing your face to the screen of his computer.[as decreasingly likely outcomes]";
	persuasion fails.
	
Report examining Sergeant Ramirez:
	stop.
	
Telling someone about something is speech.
Asking someone about something is speech.
Answering someone that something is speech.

Instead of speech when the noun is Sergeant Ramirez:
	if the topic understood matches the text "drug":
		if South Primrose Lane is reported:
			say "The sergeant stares suspiciously at you.  'You already reported that.  You trying to be funny?'" instead;
		if the player has been in the Drug Market:
			say "The sergeant suddenly becomes animated, looking directly at you.  'What?' he barks.  'Drugs?  Where?'  You explain to him that you had seen shifty characters and drugs in the Drug Market.  He picks up the phone and has an animated conversation with someone on the other end, the word 'drugs' and 'extreme' and 'losers' coming up with frequency.  He has lost interest in you.";
			now South Primrose Lane is reported;
		otherwise:
			say "Sergeant Ramirez snorts.  'Did you actually witness drug trafficking?' he asks.  When you shake your head, he sighs theatrically and goes back to his paperwork.";
	if the topic understood matches the text "ponyfriend" or the topic understood matches the text "chunky":
		say "The sergeant shakes his head.  'That guy needs serious help.  I'd stay away from him if I was you.'";
	if the topic understood matches the text "curfew":
		say "Sergeant Ramirez looks at you suspiciously.  'Yeah, Green Residential has a curfew for those that don't live there.  Why?'  He continues to look at you, then shakes his head and returns to his paperwork.";
	if the topic understood matches the text "spacescraper" or the topic understood matches the text "bank" or the topic understood matches the text "reserve":
		say "The sergeant raises his eyes to the ceiling.  'DHS is all over that place like a cheap suit.  No way a decent cop can even get a snack in the food court there right now.'";
	otherwise:
		say "[one of]The sergeant snorts and ignores you.[or]'Look, kid, why don't you let me get some work done?'[or]'Yeah, yeah, you and everybody else…'[or]'You want I should have the boys haul you in for bugging me?'[as decreasingly likely outcomes]".

[security guard]
In Lift Lobby is a man called the Security Guard.  The description of the Security Guard is "He's dressed in a standard security guard outfit.  It appears his job is keep people from fiddling with the ashtrays or perhaps the fake plants."
There is a commuter in the lift lobby.

[Ponyfriend Chunky]
In Civil Center Steps is a man called Ponyfriend Chunky.  Ponyfriend Chunky can be cellBereft or cellEnabled.  Ponyfriend Chunky is cellBereft. Ponyfriend Chunky is carrying the begging sign. Ponyfriend chunky is carrying the pager.  The description of Ponyfriend Chunky is "Dressed in ragged clothing, this man is looking around himself nervously, trying not to meet anyone's eye.  He is holding a sign that reads 'HELP ME COMPLETE MY MISSION GIVE WHAT YOU CAN.'"


The begging sign is scenery.  The description of the begging sign is "Reading 'HELP ME COMPLETE MY MISSION GIVE WHAT YOU CAN,' the sign appears to be written in shaky black marker on a piece of cardboard."


Rule for deciding the concealed possessions of Ponyfriend Chunky:
	no.
		
After giving the phone to Ponyfriend Chunky:
	say "Ponyfriend clutches the cell phone and mumbles 'This is so much better, now I can get my instructions directly rather than having to call them back!'  He stands there for a moment, then seems to come to a realization.  'In fact, they can call me!  I don't need this pager!' he says.";
	now Ponyfriend Chunky is cellEnabled;
	try Ponyfriend Chunky giving the pager to the player.

After asking Ponyfriend Chunky about something: respond to Ponyfriend.  
After answering Ponyfriend Chunky that something: respond to Ponyfriend.

After telling Ponyfriend Chunky about something, say "Ponyfriend says 'I don't think you know what's happening here.  I'm sorry, but I can't accept your information."
	
Persuasion rule for asking Ponyfriend Chunky to try giving:
	if the noun is the pager:
		say "Ponyfriend looks frightened and clutches the pager to his chest.  'No! You can't have it!  THEY gave it to me! How would I know They needed me if I gave it to you?'" instead;
	otherwise:
		say "[one of]Ponyfriend shakes his head mutely.[or]Ponyfriend backs away from you slightly.[or]Ponyfriend says, curtly, 'No.'[or]Ponyfriend starts speaking to a nearby paving stone in a slightly manic tone.[or]Ponyfriend closes his eyes and sticks his fingers in his ears.[purely at random]";
	persuasion fails.

To respond to Ponyfriend:
	repeat through the table of Ponyfriend Responses:
		if the topic understood includes topic entry:
			say "[one of]Ponyfriend's face animates and he looks up at you[or]Ponyfriend responds out of the corner of his mouth, looking away[or]Ponyfriend shrugs and replies[or]Ponyfriend's shoulders shake for a few moments before he replies to you, mumbling in the direction of your feet[purely at random]. '[response entry]'[paragraph break]";
			rule succeeds;
	say "[one of]Ponyfriend looks at you blankly before dismissing your babble.[or]Ponyfriend avoids your eye.[or]Ponyfriend lifts his hand to his ear, looks at you suspiciously and begins muttering into his palm.[or]Ponyfriend ignores you, looking at his watchless wrist.[purely at random]"

Table of Ponyfriend Responses
Topic		Response
"pager"	"Oh, my pager, yes.  This is how They send me my mission briefings. Well, what I mean is, they page me and I call them to get the briefings, yes.  I'm sorry, I have to keep checking to make sure they haven't paged me.  I wish…I wish I could talk to them directly, though."
"them/they"	"They are…up there. [italic type](Ponyfriend points up, dramatically).[roman type]  They watch everything, and they know where we are and what we're doing, and sometimes they have to…	correct things.  That's where I come in.  I get missions."
"mission/missions"	"My missions?  They're…well…(a suspicious look comes over his face) They're secret! You can't know!"
"mitklein/bottle/chip"	"The Mitsui-Klein blessing…yes…that is how we know they love and watch over us."
"sign"	"Oh…(he looks a bit crestfallen) …yes.  I, I'm not a wealthy man, and I must ask for your support in my missions."
"phone"	"It would be much nicer if I had a phone of my own."
"police/officer/cops"	"Them! (his brow furrows).  They…sometimes I think they're here to prevent me carrying out my missions.  I have to stay away from them…"
"subway/transit"	"I like it in the Transit system in winter.  It's warm."
"who/name"	"My name is Ponyfriend.  Ponyfriend Chunky.  I'm…I'm…[italic type](he shakes himself suddenly)[roman type]…I'm sorry, what were you saying?"
"spacescraper/reserve/bank"	"The Tower! (Ponyfriend points eagerly towards the Spacescraper visible in the distance)  I think I'll need to go there…that mission, though…(he stops talking suddenly and looks at you suspiciously.)"
"ramirez"	"Him.  He's obsessed. Always asking me where my drugs are.  I'm clean, I've [italic type]told[roman type] him, but still he harasses me."
"flitter/ambulance"	"I wish I could fly."
"homeland/security/dhs"	"SSSHHH! Don't…don't mention Them!"
"surveillance"	"They watch over us, yes.  They love us."
"civic/government"	"Oh…(he turns to look at the building)…I've only been inside once.  It's very cold in there."
"beep/red/light"	"You…do you hear the beeps?  Do you see the red lights?  It's [italic type]them[roman type] I tell you, they're watching us!"



Ponyfriending is a recurring scene.  Ponyfriending begins when the location contains Ponyfriend Chunky.  Ponyfriending ends when the location does not contain Ponyfriend Chunky.

Every turn during Ponyfriending:
	if a random chance of 1 in 10 succeeds:
		if Ponyfriend Chunky has the pager:
			say "[one of]Ponyfriend frantically whips his pager out and scrutinizes the blank display before putting it away, apparently crestfallen.[or]Ponyfriend wipes his pager's display with a dirty sleeve.[or]Ponyfriend looks up sharply, muttering 'Did you hear that?' and checks his pager.[purely at random]";
		otherwise if Ponyfriend Chunky has the phone:
			say "[one of]Ponyfriend checks his cell phone, looking disappointed that no-one has called.[or]Ponyfriend mutters to himself about finding somewhere to charge his cell phone.[or]Ponyfriend's eyes light up and he pulls out his (dead) cell phone.  Raising it to his head, he has a brief conversation with it before putting it away carefully and looking around furtively.[as decreasingly likely outcomes]";
	if a random chance of 1 in 7 succeeds:
		say "[one of]Ponyfriend tries to interest as passer-by in his theories of a mechanistic Deity. Unsuccessfully.[or]Ponyfriend furtively scratches underneath his none-too-clean shirt.[or]Ponyfriend sighs and sits down for a few moments before springing back up, muttering.[or]Ponyfriend scans the horizon, looking for something.[purely at random]"


Section 11 - Hints

[Uses Adaptive Hints v6 extension by Eric Eve]

[Hint tables]

Table of Potential Hints (continued)
title		subtable
"What should I do?"		Table of General Hints
"What were my original SMS messages?"		Table of SMS Hints
"How do I disable my MitKlein?"		Table of MitKlein Hints
"What do I do with the microwave?"		Table of Microwave hints
"How do I get into the Spacescraper?"		Table of Spacescraper Hints
"How do I get past the Spacescraper Eye Scanner?"		Table of Eyescanner Hints
"How do I get into vehicles?"		Table of Vehicle HInts
"How do I get into the Maintenance Closet?"		Table of Closet Hints
"What do I do at the Reserve Bank?"		Table of Goal Hints
"How do I get to the Reserve Bank Atrium?"		Table of Atrium Hints

Table of General Hints	
hint				used
"Your goal is to escape the city."				a number
"Have you received and read your SMS messages?"
"Have you gotten out of Green Residential?"
"Have you found your drop message of instructions?"
"Have you found a way into the Spacescraper?"
"Have you found a way through that suspicious fence in South Primrose Lane?"
"Have you found a way into the Maintenance Closet?"
"Have you found a way to the main level of the Atrium?"


Table of SMS Hints
hint	used
"REPORT RECEIVED.  MISSION SUCCESSFUL.  ATTACK PROGRAM CREATED USING INFORMATION IN REPORT. <more>"
"DANGER DANGER DANGER:  OPERATIVE COMPROMISED DURING OPERATION.  YOUR MITKLEIN CODE READ BY HOMELAND SECURITY.  YOUR ID RECORDS DELETED BUT MITKLEIN CODE ALONE ENOUGH TO ID YOU AS TARGET.<more>"
"NEW INSTRUCTIONS FOLLOW: <more>"
"- YOU MUST FIND A WAY TO DISABLE YOUR MITKLEIN USING ATTACK PROGRAM WHICH WILL BE DELIVERED<more>"
"- YOU MUST NOT BE IN SURVEILLED AREA DURING CURFEW WITH ACTIVE MITKLEIN OR SECURITY SWEEPS WILL IDENTIFY YOU AS TARGET<more>"
"- YOU MUST NOT BE ID-SCANNED UNTIL MITKLEIN IS DISABLED<more>"
"- ONCE MITKLEIN IS DISABLED, RETRIEVE DROP MESSAGE FOR NEW INSTRUCTIONS.  CONTACT WILL LEAVE DROP MESSAGE NEAR FOUNTAIN IN GREEN COMMERCIAL.<more>"
"- ATTACK PROGRAM AVAILABLE FOR DOWNLOAD BY NETBOOTING ANY COMPUTER WITH YOUR PHONE IN PROXIMITY<more>"
"- ONCE PROGRAM DOWNLOADED PERMANENTLY DISABLE THIS PHONE TO PREVENT TRACKING BY HOMELAND SECURITY<more>"
"GOOD LUCK. MESSAGE ENDS."


Table of MitKlein Hints
hint						used
"You're a hacker.  Check your SMS messages."
"The file isn't enough to do the job.  It needs to be broadcast to your skull."
"You'll need a Memory chip to hold the payload, and something to broadcast it."
"If you don't see anything that fits the bill, maybe it's not immediately visible."
"Do you see anything else which might need to store and broadcast information?"
"You'll need to make sure your components are attached."
"Find the appropriate tool to connect electronic components."
"A regular broadcast chip won't do the job.  At least, not alone.  Not enough power."
"You should find some way of boosting the signal."
"Can you find something that puts out a lot of electromagnetic energy?"
"You might have to look inside something that isn't supposed to be opened by the average consumer."
"Okay, fine.  Open the microwave oven.  Not the main door."
"Add one thing to the other!"
"Remember - the microwave has shielding in the box and door to prevent its energy from getting to you…"


Table of Microwave Hints
hint						used
"Microwaves put out radio energy.  A lot of it."
"You can use it to handle your problem with your phone, if you're ready to do that."
"It won't let you harm electronics.  At least, not as it is."
"Your multitool is probably your friend here."
"In addition to destroying things, the microwave can be used to hack things if you have a sufficiently sophisticated attack program and a means of getting the microwave to broadcast it."
"The safety limiter changed the behavior of the microwave.  You need to do the same.  Try making a replacement for it."
"You'll need to find components for this.  They're somewhere in the house."
"Look at the car key very, very carefully.  Then think about it."
"Once you've found your components, one of them will need to be prepared…"
"…and then they'll need to be attached to each other somehow."

Table of Spacescraper Hints
hint						used
"The Spacescraper is the center of Homeland Security activity for the region."
"The Transit system can take you to the Spacescraper."

Table of Eyescanner Hints
hint						used
"There's no way in other than the eye scanner door."
"You'll have to fool it somehow."
"It can't tell the difference between a contact lens and your naked eye."
"The contact lens will have to ID you as someone who has a reason to be inside the Reserve Bank Spacescraper."
"You might not have to meet that person in person, as it were."
"There is a Food Court in the base of the Spacescraper.  Some businesses there might have other branches."
"Ah, France!"
"You'll need to take a high-resolution picture of your target's eye.  For ID purposes."
"Then you'll need to make a contact lens with the image."


Table of Vehicle Hints
hint						used
"To gain access to a vehicle, you need its key."
"Well, perhaps not its actual key, but at the least an exact duplicate."
"Most public safety vehicles use a common keycode."
"Try finding someone with a key.  Perhaps you can copy theirs."
"You don't have to be holding it to copy it."
"You'll need something which can receive and store a vehicle transponder broadcast."
"Maybe something which sends can be rebuilt to receive."
"Then you'll need to be present when a real key is used."
"Once you'd done that, you'll need to make sure your key can send, too."


Table of Closet Hints
hint						used
"Only authorized personnel can enter the maintenance closet."
"You'll need to find someone who is allowed to enter the closet."
"Oh, and you'll need to find a way to convince the door's palm lock that you are, in fact, them."
"Remember the contact lens?"
"Do you really want me to get more explicit?"
"Oh, fine.  If you've found your target, try talking to him about his job."
"He needs to replace his jacket."
"You'll need to get him a replacement."
"Is he wandering around confused?  Well, then, ask yourself what he tried to do."
"He used his palm on the ATM, didn't he."
"Somehow, somewhere, this can be used to your benefit."
"You're trying to find a way to make a detailed model of a piece of tissue.  Doctors do this. So do EMTs."
"The hospital ER makes tissue, usually because a medic is on the way in with a patient they've scanned."
"Look in the ambulance."


Table of Goal Hints
hint						used
"If you've gotten this far, your MitKlein is disabled.  Being the only one with such is very dangerous."
"What if other citizens' MitKleins were dead as well?"
"The newspaper should tell you why the Reserve Bank is important."
"What if those other people were in fact Homeland Security personnel?"
"There's a whole convention of Homeland Security personnel meeting in the Main Lobby."
"You can't see or reach them from the basement.  The only thing that might work is an assault from above."
"You won't be able to use the Lobby Lifts."
"Think about what you made to free yourself."
"What if you could find a portable power source for that?"
"This portable version would probably have to have some form of capacitor in it to achieve the requisite burst strength."
"You'll need several of these portable versions to cause enough confusion to escape."


Table of Atrium Hints
hint						used
"The Main lifts aren't the only lifts in the building."
"Stuck at the top?  Sometimes violence [italic type]is[roman type] the answer.  If you have the tools."
"Glass that is too strong to break just means…maybe you need a bigger hammer. Or explosives."
"There are explosives purpose-built to get through obstacles.  But generally only the military and police have them."
"The police would only use them to go after something they have orders to go after."
"Like drug dealing, if you can find any."
"That would take somewhere quiet, hidden from sight."
"Behind closed…fences."
"Of course, once you've found it, you'll have to tell the [italic type]police[roman type] about it."

[Hint activation/deactivation rules]
[handled by situation, not items etc.]
	

Chapter 1 - Transit

Section 0 - Setup

A transitStation is a kind of room. A transitStation has some text called a stationName.  A transitStation has a number called a stationNumber.

Definition:  A room is entrained if the station of the Capsule is it.

A plaque is in every transitStation.

A commuter is in every transitStation.

A Transit Map is a kind of thing.  A Transit Map is always fixed in place.  The description of a Transit Map is "A metal sign displaying a map of Green Line Transit:[line break][map diagram]".

To say map diagram:
	say "[fixed letter spacing]        -------------[line break]";
	say "        |   Green   |[line break]";
	say "        |  Service  |[line break]";
	say "        -------------[line break]";
	say "          /        ^[line break]";
	say "         /          \[line break]";
	say "        v            \[line break]";
	say " -----------    -------------[line break]";
	say " | Reserve |    |   Green   |[line break]";
	say " |  Bank   |    |Residential|[line break]";
	say " -----------    -------------[line break]";
	say "       \              ^[line break]";
	say "        \            /[line break]";
	say "         v          /[line break]";
	say "         ------------[line break]";
	say "         |  Green   |[line break]";
	say "         |Commercial|[line break]";
	say "         ------------[line break][variable letter spacing]".

A Transit Map is in every transitStation.

Understand "floor" as the ground when the location is a transitStation.
Understand "wall" and "walls" as the plaque when the location is a transitStation.

Transit System is a list of objects that varies.

Transit is a region.  Transit Capsule is in Transit.  All transitStations are in Transit.  

The transit web is a thing.  The transit web is a backdrop.  It is in Green Residential Platform. It is in Reserve Bank Station.  It is in Green Commercial Platform.  It is in Green Service Platform. The transit web is large.  The description of the transit web is "Not really a web so much as a series of maglev rings linked by guides, the Transit Web is separated from the platform by a barrier fence with automatic doors, which line up with Transit Capsule doors when a Capsule is in the station.  The Web rings glow faintly with the Magfield."

Understand "barrier" and "autodoors" and "rings" as the transit web when the location is a transitStation.

Instead of taking the transit web:
	now instantiate is true;
	say "You're already taking the subway." instead.
	
Instead of entering the transit web:
	now instantiate is true;
	say "A barrier fence with closed autodoors blocks your way." instead.

Instead of examining up in a transitStation, say "The ceiling is of slightly weathered duramex."
Instead of examining up in the Transit Capsule, say "The Capsule's ceiling is just out of reach, lined with glowing scripplepaint."

The Voodoo Subway is a thing.  The Voodoo Subway is a backdrop. The Voodoo Subway is large. The printed name of the Voodoo Subway is "Capsule". The description is "A fifty-person maglev Transit Capsule.  The front window is dark, indicating that the capsule is running on automatic.  The Magfield causes a slight bluish glow around the bottom of the capsule.  Its doors are precisely level with the platform."

Instead of taking the Voodoo Subway:
	say "You can't take that.  If you want to board the capsule, try using ENTER.".

Instead of entering the Voodoo Subway:
	say "You move into the Transit Capsule.";
	move the player to the Capsule instead.
	
Instead of exiting from the Transit Capsule:
	say "You exit the Transit Capsule.";
	move the player to the station of the Capsule instead.

Understand "the capsule" as the Voodoo Subway.
Understand "capsule" as the Voodoo Subway.
Understand "train" as the Voodoo Subway.
Understand "subway" as the Voodoo Subway.
Understand "doors" as the Voodoo Subway when the location is the station of the capsule.
Does the player mean entering the Voodoo Subway:  It is likely.
Understand "doors" as an autodoor when the location is a transitStation.


Section 1 - Scenes

Transit Stop is a recurring scene.  Transit Stop begins when the turn count is three. Transit Stop begins when Transit Enroute ends.

When Transit Stop begins:
	now transitTurn is turn count + 3;
	now the station of the Capsule is entry 1 in Transit System;
	rotate Transit System backwards;
	move the Voodoo Subway backdrop to all entrained rooms;
	update backdrop positions;	
	if the location is the station of the Capsule:
		say "[capsuleArrivalMessage of the Capsule]";
	otherwise if the location is the Transit Capsule:
		say "[capsuleArrivalMessage of the Capsule]".

Before examining the Voodoo Subway during Transit Stop:
	unless the location is the Station of the capsule:
		say "You can't see any such thing." instead;
	otherwise:
		continue the action.

Every Turn during Transit Stop:
	if the location is the station of the Capsule, say "A few commuters get on and off the Transit capsule.";
	if the location is the Capsule, say "A few riders get on and off the Transit capsule."

Instead of going east in Reserve Bank Station during Transit Stop:
	if the location is the station of the Capsule:
		say "You enter the Transit capsule.";
		move the player to the Capsule;
	otherwise:
		try entering the Transit Web instead.

Before going west in Transit Capsule during Transit Stop:
	if the station of the Capsule is Reserve Bank Station:
		say "You exit the Transit capsule.";
		move the player to the station of the Capsule instead;
	otherwise:
		continue the action.
		
Instead of going north in Green Commercial Platform during Transit Stop:
	if the location is the station of the Capsule:
		say "You enter the Transit capsule.";
		move the player to the Capsule;
	otherwise:
		try entering the Transit Web instead.
		
Before going south in Transit Capsule during Transit Stop:
	if the station of the Capsule is Green Commercial Platform:
		say "You exit the Transit capsule.";
		move the player to the station of the capsule instead;
	otherwise:
		continue the action.
		
Instead of going west in Green Residential Platform during Transit Stop:
	if the location is the station of the Capsule:
		say "You enter the Transit capsule.";
		move the player to the Capsule;
	otherwise:
		try entering the Transit Web instead.
				
Before going east in Transit Capsule during Transit Stop:
	if the station of the Capsule is Green Residential Platform:
		say "You exit the Transit capsule.";
		move the player to the station of the capsule instead;
	otherwise:
		continue the action.
		
Instead of going south in Green Service Platform during Transit Stop:
	if the location is the station of the Capsule:
		say "You enter the Transit capsule.";
		move the player to the Capsule;
	otherwise:
		try entering the Transit Web instead.
				
Instead of going north in Transit Capsule during Transit Stop:
	if the station of the Capsule is Green Service Platform:
		say "You exit the Transit Capsule.";
		move the player to the station of the Capsule instead;
	otherwise:
		continue the action.
		

Transit Stop ends when turn count is transitTurn.

When Transit Stop ends:
	if the location is the Station of the Capsule:
		say "[capsuleDepartureMessage of the Capsule].";
	otherwise if the location is the Transit Capsule:
		say "[capsuleDepartureMessage of the Capsule].";
	Now the station of the Capsule is the Capsule;
	remove the Voodoo Subway from play;
	update backdrop positions.


Transit Enroute is a recurring scene.  Transit Enroute begins when Transit Stop ends.

When Transit Enroute begins:
	now transitTurn is turn count + 3;
	if the location is Transit Capsule, say "You hold onto your strap as the Capsule rapidly accelerates."

Every Turn during Transit Enroute:
	if the location is Transit Capsule:
		if a random chance of 1 in 5 succeeds, say "[one of]Someone coughs.[or]A man nearby yawns.[or]You find yourself mesmerized by an advertisement for disposable cameras.[or]The capsule shudders as it passes a junction in the Web.[or]A shabbily-dressed man wanders up to you.  He appears to be about to ask you for something, but then he catches a look at your eyes and instead wanders away again.[or]A nearby commuter's handheld begins beeping loudly.  She hurriedly shuts it off.[purely at random]"
		
Transit Enroute ends when turn count is transitTurn.

Transit Platform is a recurring scene.  Transit Platform begins when the location is a transitStation.

Every Turn during Transit Platform:
	if a random chance of 1 in 8 succeeds, say "[one of]A commuter walks by.[or]A public address system reminds you to be alert and 'if you see something, say something!'[or]You see a small mouse scurry along the Transit Web and vanish back into the tunnels.[or]A police officer strolls through the area, giving you a suspicious look before moving on.[or]A busker puts down his cap and pulls out a flute.  Before he gets more than a few notes out a pair of policemen hurry up and hustle him and his cap away out of sight.[as decreasingly likely outcomes]";
	if a random chance of 1 in 20 succeeds:
		unless the station of the Capsule is the location, say "Warning lights along the platform edge begin to blink rapidly.  A light grows in the tunnel.  With a deep moan and gust of wind, an express Transit Capsule blasts through [the stationName of the location] and vanishes into the darkness once more.";
	if a random chance of 1 in 250 succeeds:
		unless the station of the Capsule is the location, say "Warning lights along the platform edge begin to blink rapidly.  A light grows in the tunnel.  With a deep moan and gust of wind, an express Transit Capsule blasts through [the stationName of the location].  To your shock, a human figure closely follows the Capsule, suspended in the Magfield of the Transit Web!  It is wearing mirrorshades and what appear to be glowing bracelets and anklets.  Before you can make out anything else, the Capsule has vanished into the darkness, leading its strange follower away.  You're not sure you really saw that."

Transit Platform ends when the location is not a transitStation.


Section 2 - The Capsule

The Transit Capsule is a room.  The Transit Capsule is unmapped. The Capsule has a room called the station.  The station of the Capsule is the Capsule.  The Transit Capsule has some text called capsuleArrivalMessage.  The capsuleArrivalMessage is "[if the location is a transitStation]A light grows in the tunnel.  [end if]With a deep thrumming and the whoosh of displaced air, the Transit Capsule slides smoothly into [the station of the Capsule] and comes to a stop, hovering in the Web.  The doors slide open and a few commuters enter and exit the capsule."  The Transit Capsule has some text called capsuleDepartureMessage.  The capsuleDepartureMessage is "The capsule doors slide shut.  The humming noice increases in volume, and the capsule slides out of the station, gathering speed as it goes, and slides into the tunnel."

There is a rider in the capsule.

The portal is in the Transit Capsule.  The portal is scenery.  The portal is plural-named. The description of the portal is "Long, narrow windows of armorglass running down the sides of the capsule.  Through them you can see [if the station of the Capsule is the capsule]the darkness of the Transit Web, with occasional blurry streaks of lights as the moving Capsule flashes past them.[otherwise]the [station of the Capsule].[end if]"

Understand "window" and "windows" as the portal when the location is the Transit Capsule.

The description of the Transit Capsule is "A fifty-person maglev Transit capsule.  You're standing, holding on to a strap.  [if the station of the Capsule is the capsule]A deep hum resonates through your bones, indicating that the Vectorfield is active.  Outside the narrow windows, the tunnel is dark.  Occasional blurry streaks show lights flashing past the moving Capsule.[otherwise]Through the windows you can see the [station of the Capsule].[end if] Several riders share the Capsule with you."

Instead of exiting when the player is in the Capsule:
	if the station of the Capsule is the Capsule:
		say "The capsule is moving through the Transit tunnels at high velocity.  You'll have to wait until it reaches a station.";
	otherwise:
		move the player to the station of the Capsule instead.
		
Before going outside when the player is in the Capsule:
	try exiting instead.
	
Before going inside when the player is in the station of the Capsule:
	move the player to the Capsule instead.



Chapter 2 - Global Map

[spacescraper]
The spacescraper is a backdrop.  It is not scenery.  The initial appearance is "The Reserve Bank Spacescraper is visible in the distance, rising over the low skyline."  The description of the spacescraper is "Visible in the distance above the surrounding buildings, the Reserve Bank Spacescraper is home to more than just the regional Reserve Bank.  It is a two-hundred-level building containing all manner of businesses and government offices, as well as a hotel and several floors of extremely high-priced residential apartments.  Centrally located Downtown, it boasts its own Transit station and a food court in its lower levels.  Conventions and events are often held in its soaring Atrium, an open space within the building core which rises over fifty floors entirely indoors.  It is several miles away."

Understand "Reserve Bank" as the spacescraper.
Understand "Reserve" as the spacescraper.
Understand "Bank" as the spacescraper.
Understand "Skyscraper" as the spacescraper.

Instead of taking the spacescraper, say "That would be a very neat trick. It's miles away in any case."
Instead of touching the spacescraper, say "That would be a very neat trick.  It's miles away in any case."
Instead of attacking the spacescraper, say "It's a bit big for you.  It's miles away in any case."
Instead of climbing the spacescraper, say "It's miles away."
Instead of listening to the spacescraper, say "Any sound it is making is lost in the miles between you and it."
Instead of cutting the spacescraper, say "It's a bit big for you.  It's miles away in any case."

After examining the spacescraper for the first time:
	activate the Table of Spacescraper Hints.
	

[streetlights]
The streetlights is a backdrop.  The streetlights is plural-named.  [The streetlights is scenery.  The streetlights is fixed in place.] The description of the streetlights is "The area is served by a number of familiar tall metal streetlights.  [if evening is happening]Their bright LED arrays shine against the darkening sky.[otherwise if night is happening]Their bright LED arrays illuminate the area against the night, casting a few faint shadows.[end if]  Obvious surveillance cameras protrude from the top of their vertical poles, several meters overhead."

Understand "streetlight" as the streetlights.
Understand "street light" as the streetlights.

Instead of climbing the streetlights, say "The poles are too slick.  You struggle for a moment before giving up."


[surveillance cameras]
The surveillance cameras is a backdrop.  The surveillance cameras is plural-named.  The description of the surveillance cameras is "[one of]A collection of dark glass domed objects, all placed out of reach with good fields of view.[or]An array of obvious sensors placed strategically around the region.[or]Almost comically obvious cameras which look more like old-style closed-circuit TV cameras than anything else.[sticky random]  You can't help remembering your training, which convinced you that these things are like cockroaches - if you can see a few of them, a horde of them are waiting and watching just beneath your notice."

Does the player mean opening the surveillance cameras: it is unlikely.
Does the player mean taking the surveillance cameras: it is unlikely.
Does the player mean and-attaching the surveillance cameras: it is unlikely.

Understand "cameras" as the surveillance cameras.

Instead of taking the surveillance cameras:
	say "They're far out of reach."

Understand "obscure [something]" as blocking.
Understand "cover [something]" as blocking.

Instead of blocking the surveillance cameras:
	say "There are too many of them, and they're out of reach.  Their placement is very efficient."

Instead of attacking the surveillance cameras:
	say "You wind up for your attack before remembering that you very much don't want to be noticed. Cold sweat trickling down your spine at the thought of the cameras['] current imagery being flagged for Homeland Security, you desist and look away."
	


[sky]
The sky is a backdrop.  The sky is scenery.  The description of the sky is "[if morning is happening]The sky is a pale robin's egg, with a few wispy clouds visible.[otherwise if afternoon is happening]The sky is the color of a television, turned to a dead channel.  Well, maybe a bit lighter than that.  With a few clouds in it.[otherwise if evening is happening]The sky is a deep blue, with colors fading into the reds towards the western horizon behind the streetlights.[otherwise if night is happening]The sky is difficult to see past the glare of the streetlights, but a few of the brightest stars - and possibly planets - are visible in its depths."

Instead of taking the sky, say "I can't take the sky from you.  Because you don't have it.  And can't take it."
Instead of touching the sky, say "You can't reach that."
Instead of climbing the sky, say "I don't see a beanstalk anywhere."
Instead of burning the sky, say "I don't think you have a flame large enough."

Instead of examining up when the player is out of doors:
	try examining the sky;
	rule succeeds.



Chapter 3 - Green Residential

Section 3 - Map


GreenResidential is a region.  Front Lobby is in GreenResidential. Entry is in GreenResidential. Home Office is in GreenResidential. Kitchen is in GreenResidential. Hall is in GreenResidential. Bedroom is in GreenResidential. Bathroom is in GreenResidential. Drug Den is in GreenResidential.  Green Residential Station is in GreenResidential.

ResidentialOutside is a region. ResidentialOutside is in GreenResidential. Primrose & Station is in ResidentialOutside. South Primrose Lane is in ResidentialOutside. Front Path is in ResidentialOutside. Drug Market is in ResidentialOutside. Green Residential Park is in ResidentialOutside.  Side Yard is in ResidentialOutside.  Back Yard is in ResidentialOutside.

The Spacescraper is in ResidentialOutside.  The streetlights is in ResidentialOutside.  The sky is in ResidentialOutside.

Green Residential Platform is a transitStation.  The stationName of Green Residential Platform is "Green Residential".  The stationNumber of Green Residential Platform is 3. The description of Green Residential Platform is "Green Residential's platform serves mostly residential commuters.  There is an exit at the center of the platform which leads east through a set of closed automatic doors to a stairway leading up to the main station, just next to a large plaque with the name of the station on it.  The platform abuts the Transit web to the west[if the location is the station of the Capsule], where a Transit capsule hovers impatiently.  The capsule doors are open.[otherwise], now empty.[end if]".
Instead of going west in Green Residential Platform, try entering the Transit Web instead.

The Green Residential Station door is east of Green Residential Platform and below Green Residential Station.  The Green Residential Station Door is an autodoor.  The Green Residential Station door is closed. 

Instead of opening the Green Residential Station door:
	if the location is Green Residential Platform:
		say "The Eye Scanner laser delicately probes your iris, and the doors slide smoothly open.";
		now the Green Residential Station Door is open;
		the autodoors close in zero turns from now;
	otherwise if the location is Green Residential Station:
		if the MitKlein is unhacked:
			activate the Table of MitKlein hints;
			say "You're pretty sure that your last hacking session left a record of your Mitsui-Klein signature on various government computer systems.  Your retina print will get you on, but if you allow the autodoor to scan your MitKlein the police will be able to link you to the hacking attempts, and you'll be a fugitive.  You decide not to risk it." instead;
		otherwise:
			say "The Door Scanner scans your iris to determine your identity.  The Transit Security and Accounting Subroutine determines that you have a legitimate account with the Transit system, and the doors slide smoothly open.";
		now the Green Residential Station door is open.

After going down from Green Residential Station:
	if the player encloses the phone:
		if the phone is working:
			the phonewarn happens in 0 turns from now;
	continue the action.


Green Residential Station is above Green Residential Station Door.  The description of Green Residential Station is "This is a utilitarian shelter intended mostly to keep the rain out of the Transit System.  A stairway leads down to the autodoor leading to the Transit platform and an exit leads east to the street."
The stairway is unimportant stuff in Green Residential Station. Understand "stairs" as the stairway when the location is Green Residential Station.

Primrose & Station is east of Green Residential Station.  The description is "This staid neighborhood intersection of Primrose Lane and Cedar Street fronts the local Transit station, Green Residential.  The station entrance is to the west.  Primrose Lane continues to the south."

Green Residential Park is north of Primrose & Station. The description is "Primrose Street ends here in a small circular cul-de-sac.  You're in a small green park to the north of this, bounded on its three other sides by high fences.  A few trees rise over well-manicured grass.  There is a curfew sign at the park's entrance."
The curfew sign is in Green Residential Park.  The curfew sign is scenery.  The curfew sign is fixed in place.  The description is "A metal sign on a metal pole, it reads 'NOTE: PARK CLOSED DURING GREEN RESIDENTIAL AREA CURFEW - 8:00PM to 5:00 AM - NO LOITERING.'"
The greenery is unimportant stuff in Green Residential Park.  The printed name of the greenery is "trees".  The description of the greenery is "A small number of manicured trees, scattered around the park."
Understand "trees" as the greenery when the location is Green Residential Park.
Understand "tree" as the greenery when the location is Green Residential Park.
The grass is unimportant stuff in Green Residential Park.
The fences is unimportant stuff in Green Residential Park.
The cul-de-sac is unimportant stuff in Green Residential Park. Understand "street" as the cul-de-sac when the location is Green Residential Park.


South Primrose Lane is south of Primrose & Station.  South Primrose Lane can be reported or unreported.  South Primrose Lane is unreported. The description is "Primrose Lane continues to the north.  To the south is a boarded-up empty house; sumac plants can be seen peeking over the top of the dilapidated fencing.  The fence has a plastic tarp strung behind it which prevents you from seeing much of the house.  To the west is a single-family home with a large warning sign and an enormous dog on the front lawn.  To the east is a three-family residence's front path."
The lawn is unimportant stuff in South Primrose Lane.
Some sumac plants are in South Primrose Lane.  The sumac plants are scenery.  The description of the sumac plants is "You can see the tops of a few trees over the top of the fence.  Their leaves are greenish red, waving out of reach in the slight breeze."

The warning sign is in South Primrose Lane.  The warning sign is fixed in place.  The warning sign is scenery.  The description is "It reads 'YOUR SKIN MUST BE THIS THICK (here there is a lifelike picture of a dog's tooth, perhaps an inch long) TO BURGLE THIS HOUSE.'  There is an arrow pointing down and to the side, which actually points at the dog."
Understand "sign" as the warning sign when the location is South Primrose Lane.
Understand "burglar sign" as the warning sign.
Understand "Alarm sign" as the warning sign.

The large dog is here.  The large dog is fixed in place.  The large dog is scenery.  The description is "This snoozing beast must mass thirty kilos or more.  Its ancestry appears to include Mastiff, Doberman Pinscher, Rottweiler and tribble. You have no desire to get anywhere near it."
Understand "dog" as the large dog when the location is South Primrose Lane.

Check touching the large dog:
	say "Uh…you really don't want to try that." instead.
	
Check pushing the large dog:
	say "Uh…you really don't want to try that." instead.

Check attacking the large dog:
	say "Uh…you really, REALLY don't want to try that." instead.
	
Instead of taking the dog, try touching the dog instead.

Instead of going west in South Primrose Lane:
	now instantiate is true;
	say "As you approach the lawn of the house, the large dog raises its head to look at you and growls, softly but very communicatively.  You decide discretion is the better part of valor and retreat.".

The fence is in South Primrose Lane.  The fence is scenery.  The fence can be either cut open or uncut.  The fence is uncut.  The description of the fence is "[if fence is uncut]A combination of cyclone fence - interleaved wire - with plastic sheeting hung behind, it blocks your view.  You can hear rustling and low murmuring from behind it, as of people moving around and talking furtively.[otherwise] A combination of cyclone fence and plastic sheeting, there is a large hole cut in the middle."

Understand "behind fence" as the fence when the location is South Primrose Lane.
Understand "tarp" as the fence when the location is South Primrose Lane.
Understand "sheeting" as the fence when the location is South Primrose Lane.
Understand "wire" as the fence when the location is South Primrose Lane.

Before going south in South Primrose Lane:
	unless the fence is cut open:
		say "You can't see any holes in the fence." instead;
	otherwise:
		continue the action.
		
Check cutting the fence with something:
	unless the second noun is the tag remover:
		say "That won't cut cyclone fencing." instead;
	otherwise:
		continue the action.

Carry out cutting the fence with the tag remover:
	if the noun is cut open:
		say "There is already a hole in the fence large enough to slip through.";
		stop the action;
	otherwise:
		say "You carefully cut through several strands of the fence until you have an opening big enough to slip through and slice a rent in the backing plastic.";
		now the noun is cut open;
		change south exit of South Primrose Lane to Drug Market;
		change north exit of Drug Market to South Primrose Lane;
		rule succeeds.

Instead of cutting the fence:
	say "You'd need to cut [the noun] with something; you can't do it bare-handed." instead.

Instead of climbing the fence:
	say "The gaps are too small for your toes and you're not strong enough to climb it with only your fingers." instead.

The Drug Market is a room.  The Drug Market is blind. The description of Drug Market is "Standing just south of the fence, you see an abandoned house on the south side of the lot. The front yard is a mess of trash and litter.  [if Drug Market is raided]The area is empty of people; yellow police line tape covers the empty front doorway.[otherwise]A few people are hanging around the closed front door.  They are looking at you with unfriendly stares. You're fairly sure you can see small vials and cash changing hands in the shadows."
The drugtrash is unimportant stuff in the Drug Market.  Understand "trash" and "litter" as the drugtrash when the location is the Drug Market.
The policetape is unimportant stuff in the Drug Market.  Understand "police line" and "tape" as the policetape when the location is the Drug Market.

Index map with The Drug Market mapped south of South Primrose Lane.

The denizens is in the Drug Market.  The denizens is scenery.  The description of the denizens is "This small group of locals is clustered around the front entryway.  They're quite intimidating despite their somewhat glassy fixed stares, and you don't want to draw their attention to you.  At all."

Understand "the people" as the denizens when the location is Drug Market.
Understand "locals" as the denizens when the location is Drug Market.
Understand "people" as the denizens when the location is Drug Market.

Instead of speech when the noun is the denizens:
	say "They give you stony looks before turning away." instead.

Before going south in Drug Market:
	unless Drug Market is raided:
		say "Your path is blocked by two hostile-looking types.  One is clearly holding a gun behind his back.  Deciding you're not that curious, you retreat." instead;
	otherwise:
		continue the action.
		
The Drug Den is south of Drug Market.  The Drug Den is blind. The description is "The empty ruins of a drug market hangout.  The SWAT team's breaching charges have blown the heavy metal main door into the hallway.  The house is thoroughly trashed, and rubble prevents you from moving any further into the building.  Discarded drug paraphernalia and random trash litters the floor."
The rubble is unimportant stuff in the Drug Den. Understand "trash" and "paraphernalia" and "drug paraphernalia" as the rubble when the location is the Drug Den.
The metal door is a supporter.  The metal door is in the Drug Den.  The metal door is fixed in place. The description of the metal door is "Bent and blackened, the armored door survived the breach but was blown into the interior of the house.  The handle is blown off.[if the metal door is charged]  As you lift the edge of the door to look underneath it, you see what looks like an undetonated breaching charge still attached to it!".

Instead of taking the metal door:
	say "You strain to lift the door, then give it up as a bad job." instead.

Front Path is east of South Primrose Lane.  The description is "This front path is paved with cracked flagstones.  Primrose Lane is to the west, a three-family building is to the east, and the building's side yard is to the northeast."
The flagstones is here.  The flagstones is scenery.  The flagstones is plural-named. The description of the flagstones is "Weathered stones, which appear to be naturally smooth rather than having been shaped."
Understand "stones" as the flagstones when the location is Front Path.
Check looking under the flagstones:
	try pushing the flagstones instead.

Instead of examining down in Front Path, try examining the flagstones instead.

Instead of going inside in Front Path, try going east instead.

West of Side Yard is northeast of Front Path.  The description is "A narrow side yard with a high solid fence on the north side and a few straggly decorative plants.  The yard extends east behind the house and west to the front of the house."
The decorative plants is in the side yard.  The decorative plants is plural-named.  The decorative plants is scenery.  The description is "A few straggly brown and green plants huddling near the base of the fence and the side of the house."
Instead of taking the decorative plants, say "They're just weeds, really." instead.
Instead of pushing the decorative plants, say "You shove a few stalks around for a few moments before giving up." instead.
The solid fence is unimportant stuff in the Side Yard.  Understand "fence" as the solid fence when the location is the side yard.

North of Back Yard is east of Side Yard.  The description is "An enclosed back yard, this small square of grass is surrounded by a high fence and the east side of the attached home.  A narrow frosted window - likely a bathroom - is visible in the middle of the stretch of wall, and a larger clear window with curtains behind it is visible at the south end."
Yardgrass is unimportant stuff in Back Yard.  Yardfence is unimportant stuff in Back Yard. Yardwall is unimportant stuff in Back Yard. Understand "grass" as yardgrass when the location is Back Yard.  Understand "fence" as yardfence when the location is Back Yard. Understand "wall" as Yardwall when the location is Back Yard.

The bathroom window is a backdrop.  The description is "A very narrow window of frosted glass, it appears to be painted shut."
The bathroom window is in Back yard.  The bathroom window is in the Bathroom.
Understand "frosted window" as the bathroom window when the location is Back Yard or the location is the Bathroom.
Understand "narrow window" as the bathroom window when the location is Back Yard or the location is the Bathroom.

Instead of entering bathroom window, say "It's painted shut, and too small for you in any case."
Instead of opening bathroom window, say "It's painted shut."
Does the player mean entering the bathroom window: it is very unlikely.
Does the player mean closing the bathroom window: it is very unlikely.

The bedroom window is a backdrop. The bedroom window is in Back Yard.  The bedroom window is in Bedroom.  The bedroom window is scenery.  The bedroom window can be hacked or unhacked.  The bedroom window is unhacked. The description is "A large clear two-pane window, it is locked with a latch mechanism at the join of the two panes.[if the bedroom window is unhacked]  Having the latch on the outside probably violates some building code somewhere.[end if][if the bedroom window is hacked]  The lower pane is open.[end if]"

Understand "clear window" as the bedroom window when the location is Back Yard.
Understand "large window" as the bedroom window when the location is Back Yard.
Understand "larger window" as the bedroom window when the location is Back Yard.
Understand "windows" as the bedroom window when the location is Back Yard or the location is The Bedroom.
Understand "window" as the bedroom window when the location is Back Yard.

The latch is a container.  The latch is part of the bedroom window. The latch is unopenable and open.  The latch can be hacked or unhacked.  The latch is unhacked. The latch contains the cotter pin.  The latch is scenery.  The description of the latch is "This is a fairly standard window latch.  It prevents the two windowpanes from sliding past one another. [if the cotter pin is inside the latch] The locking tab is secured with a cotter pin which, for some reason, is on the outside of the window[otherwise] The cotter pin that locks the latch seems to be missing[end if]."
Understand "mechanism" as the latch.  Understand "latch mechanism" as the latch.  Understand "lock" as the latch when the location is Back Yard.
The cotter pin is a thing.  The cotter pin is small. The description is "A small steel pin made up of a length of wire doubled over on itself with a loop at one end."
Understand "loop" as the cotter pin when the cotter pin is visible.

Rule for printing room description details of the latch: stop.

Instead of key-unlocking the cotter pin:
	now instantiate is true;
	say "[The noun] can't be locked or unlocked." instead.

Instead of removing the cotter pin with the multitool:
	if the cotter pin is in the latch:
		say "You deftly remove the cotter pin with the multitool.";
		now the cotter pin is carried by the player;
		now the latch is hacked;
		change the west exit of Back Yard to Bedroom;
		change the east exit of Bedroom to Back yard;
		rule succeeds;
	otherwise if the cotter pin is in a container:
		say "You don't need the multitool for that.";
		try taking the cotter pin;
		rule succeeds;
	otherwise:
		say "The pin isn't inside anything.";
		rule fails.

Procedural rule while taking off the cotter pin: ignore the carrying requirements rule.

Instead of dropping the cotter pin:
	say "You drop the cotter pin and it falls to the ground, vanishing into the pocket dimension reserved for screws, clips, single socks and pens.";
	remove the cotter pin from play.

Instead of inserting the cotter pin into the latch:
	say "You try for a minute or so, but the pin must have bent - it won't go back into the latch." instead.

Check taking the cotter pin:
	if the cotter pin is inside the latch:
		say "You can't get enough purchase with your fingers to pull the pin out." instead;
	otherwise:
		continue the action.

Check pulling the cotter pin:
	if the cotter pin is inside the latch:
		say "You can't get enough purchase with your fingers to pull the pin out." instead;
	otherwise:
		continue the action.
		
Check taking off the cotter pin:
	try taking the cotter pin instead.

Instead of going inside in Back Yard:
	try going west instead.

Before going west in Back Yard:
	if the latch is unhacked:
		now instantiate is true;
		say "The bedroom window is closed and securely locked." instead;
	if the bedroom window is unhacked:
		try opening the bedroom window.	
	
Before going east in the Bedroom:
	if the bedroom window is unhacked:
		try opening the bedroom window.

Check opening the bedroom window:
	if the bedroom window is hacked:
		say "It's already open." instead;
	if the latch is hacked:
		now the bedroom window is hacked;
		say "You slide the bedroom window open." instead;
	otherwise:
		say "It's locked." instead.
		
Check closing the bedroom window:
	if the bedroom window is unhacked:
		say "It's already closed." instead;
	otherwise:
		say "You slide the bedroom window closed.";
		now the bedroom window is unhacked;
		rule succeeds;
		stop.
		
Check entering the bedroom window:
	if the location is Back Yard, try going west instead;
	if the location is the Bedroom, try going east instead.


The House door is east of Front Path and west of Front Lobby.  The House door is an autodoor.  The House door is closed.

Front Lobby is east of the House door.  The description is "The slightly shabby front lobby of this multi-family building.  A door leads outside to the west, gated stairs leading up to the upper two floors are to the east, and an apartment door is to the south."
The newspaper is here.  The pamphlet is here.
Instead of going east in Front Lobby:
	now instantiate is true;
	say "You can't open the security gate." instead.
Instead of going up in Front Lobby:
	now instantiate is true;
	say "You can't open the security gate." instead.
Instead of going outside in Front Lobby, try going west instead.

Does the player mean opening the apartment door when the location is the Front Lobby:  it is likely.

The security gate is in the Front Lobby.  The security gate is scenery.  The description of the security gate is "A worn but imposing gate of metal bars.  It is locked."

Check taking the security gate:
	say "You rattle the bars for a few seconds before giving up." instead.
	
Check opening the security gate:
	say "It's locked." instead.

The Apartment door is south of Front Lobby and north of Entry.  The Apartment door is a door. The Apartment door is scenery. The Apartment door can be hacked or unhacked.  The Apartment door is unhacked. The Apartment door is closed.  The description is "The ground floor apartment front door is metal-reinforced wood.[if the location is Front Lobby]  A brass numeral '1' adorns the door.[otherwise if the location is The Entry] Multiple throw bars adorn the inside of the door."

The post-it is here.  "A small post-it note is stuck to the door of Apartment 1."  The post-it is tiny.  The description of the post-it is "A short scribble, which reads 'The techs were by to turn off your water.  Have a nice vacation!'"
Understand "note" as the post-it.


Check opening the Apartment door:
	if the location is Front Lobby:
		If the Apartment door is unhacked:
			say "The door is securely locked." instead;
		otherwise:
			continue the action;
	If the location is The Entry:
		if the Apartment door is unhacked:
			now the Apartment door is hacked;
			say "You undo the throw bolts.  Since you have no key, you leave the door unlocked.";
		continue the action.


The Entry is south of the Apartment door.  The Entry is blind.  The description is "This is the small entryway to the ground-floor apartment. A pile of mail, most of it unread, nearly covers the side table just inside the apartment door.  The apartment hallway is to the south.  To the west is an office, and to the east is a bathroom."
There is a side table in the Entry.  The car key is on the side table.  The mail is on the side table.  The mail is scenery.  The description of the mail is "[one of]Pretty much what you'd expect.[or]A stack of someone else's mail you've already thumbed through.[stopping]".
Instead of taking the mail, say "You're just not interested in someone else's bills and advertisements." instead.

The Home Office is west of The Entry.  The home office is blind.  The description is "This is obviously a home office, a room which in other homes might be a living room. It is not very tidy.  Random detritus covers most available surfaces except for a workbench."

The workbench is a supporter. The workbench is in the Home Office.  The description is "It's actually a very nice piece of furniture; just the right height, easy to get your legs under. "

Understand "bench" as the workbench when the location is the Home Office.

The Hall is south of the Entry.  The Hall is blind. The description is "The central hallway of this modest home.  It's relatively clean and neat, as there is no furniture in it."

The Bathroom is a restroom.  The Bathroom is east of the Entry and north of the Bedroom.  The Bathroom is blind. The description is "This home only has the one bathroom, which means that the fact that it's not very clean is somewhat embarrassing.  Or at least, it would be if the owner had expected visitors. It contains a sink, mirror, toilet and shower."
The shower is a container in the Bathroom.  The shower is scenery.  The shower is fixed in place. The shower is enterable, openable, transparent, and closed.  "A one-piece shower unit."
Check switching on the shower:
	say "The apartment owners must have shut off their water while away; nothing happens." instead.
Check switching on a sink when the location is The Bathroom:
	say "The apartment owners must have shut off their water while away; nothing happens." instead.
The home mirror is a mirror in the Bathroom.  The description of the home mirror is "A mid-range but functional mirror mounted over the sink.  It has various illegible smudges around the edge which suggest that its owner uses it to write temporary notes to themself.  One corner has a small piece of graffiti done in black marker."
The smudges are a part of the home mirror.  The smudges are plural-named. The description of the smudges is "The smudges appear to be the remnants of Magic Marker notes, each now rubbed out - unlike the graffiti in the lower corner."

The Bedroom is east of the hall and south of the Bathroom.  The bedroom is blind.  The description is "This bedroom is rather plain.  Its owners must not spend much time in it while awake.  It contains a bed - currently unmade - and a bedside table with a lamp on it.  Cheap curtains partially cover the window."

The curtains are in the bedroom. The curtains are scenery.  The curtains are plural-named. The description of the curtains is "These hang sloppily in front of the window, fixed in place."

Instead of going outside when the location is the bedroom, try going east instead.

Making up is an action applying to one thing.
Understand "make [something]" as making up.
Instead of making up the bed, say "There's no point."

The bedside table is a supporter.  The bedside table is in the Bedroom.  The bedside table is scenery. The description is "A cheap but sturdy bedside table. There is a table lamp atop it."

The bed is a supporter.  The bed is in the Bedroom.  The bed is scenery.  The description is "A basic, functional flat-pack bed.  A slight imprint in the shape of a body can be seen in the center."

Check entering the bed:
	say "You're not sleepy, and the bed isn't comfortable otherwise." instead.

The table lamp is a device on the bedside table.  The table lamp is scenery.  The table lamp is fixed in place. The description is "A generic compact fluorescent lamp, it is screwed to the table, presumably to prevent it falling over.[if table lamp is switched on]  It is presently giving off a wan bluish light."

Instead of burning the table lamp, try switching on the table lamp.

The Kitchen is south of the Home Office and west of the Hall.  The Kitchen is blind. The description is "This kitchen is decorated in a style some four decades old, which is probably when it was last renovated.  It is fairly clean, likely reflecting the fact that the occupants don't cook for themselves much.  The built-in sink takes up most of the available counter space, with the microwave oven occupying almost all of the rest.  The refrigerator hulks along the opposite wall."
There is a sink in the kitchen.

After going to The Kitchen the first time:
	activate the Table of Microwave Hints;
	continue the action.


Chapter 4 - Green Commercial

Section 3 - Map

GreenCommercial is a region.  Metro Savings is in GreenCommercial.  RoughIt is in GreenCommercial.  Green Commercial Bistro Paris is in GreenCommercial.  Bistro Paris Restroom is in GreenCommercial.  The Proletariat Bar is in GreenCommercial.  Proletariat Restroom is in GreenCommercial.  Garb-Oh is in GreenCommercial.  Accessorize is in GreenCommercial.  Green Commercial Station is in GreenCommercial.

GreenCommOutside is a region.  GreenCommOutside is in GreenCommercial.  Green Commercial Plaza North is in GreenCommOutside.  Green Commercial Plaza Center is in GreenCommOutside.  Green Commercial Plaza South is in GreenCommOutside.

The spacescraper is in GreenCommOutside.  The streetlights is in GreenCommOutside.  The sky is in GreenCommOutside.


Green Commercial Platform is a transitStation.  The stationName of Green Commercial Platform is "Green Commercial One".  The stationNumber of Green Commercial Platform is 2. The description of Green Commercial Platform is "Green Commercial One is one of the oldest stations on the Transit web.  Although it has been refurbished several times, its age still manages to show through the layers of tile and paint.  The platform opens out at the middle to a lobby area which is dominated by a row of automated doors to the south, which lead to stairways up to the main station.  The flow of commuters moves steadily through these doors.  The floor and walls are both extremely scuffed duramex nanotile, and the station name (Green Commercial One) is indicated on a large plaque set into the walls. The platform abuts the Transit web to the north[if the location is the station of the Capsule], where a Transit capsule can be seen hovering.  The capsule doors are open.[otherwise], now empty.[end if]". 
Instead of going north in Green Commercial Platform, try entering the Transit Web instead.

The Green Commercial Station door is south of Green Commercial Platform and below Green Commercial Station.  The Green Commercial Station door is an autodoor.  The Green Commercial Station door is closed.

Green Commercial Station is above the Green Commercial Station door.  The description is "Green Commercial One's Transit station usually does most of its business around the rush hours, as Green Residental commuters stop off to take care of errands.  The station is relatively small, but well kept up - the Green Commercial Business Improvement District organization sees to that.  Open doorways lead south to Green Commercial One proper, and a stairway leads down to the doors to the Transit platform."


Green Commercial Plaza North is south of Green Commercial Station.  The description is "Green Commercial One is built around a plaza, and this is its northern end.  No vehicles are permitted within the public areas of Green Commercial One, so the entire area is pedestrian-only.  To the north are the doorways to the Green Commercial Station.  To the east is RoughIt.  To the west is a storefront bank with an ATM.  The plaza continues to the south."
There is a trash can in Green Commercial Plaza North.

Green Commercial Plaza Center is south of Green Commercial Plaza North.  The description is "This is the center of the Green Commercial Plaza.  There is a fountain here with a bench facing it.  The plaza continues to the north and south; to the east is a bar called (ironically, you hope) the Proletariat.  To the west is a Bistro Paris cafe."
The drop message is in a trash can in Green Commercial Plaza Center.  The drop message is small.  The drop message can be folded or unfolded.  The drop message is folded. "You see a small folded message with your ID sigil on it stuck to the inner side of the trash can!"  The description is "A small piece of flash paper [if folded]attached to the inside of the can and folded shut.[otherwise] which contains the following message: 'IF THIS MESSAGE RETRIEVED ATTACK PAYLOAD IS FUNCTIONAL.  YOUR MK RECORD NOW DISTRIBUTED TO ALL SECURITY ELEMENTS.  TO EFFECT ESCAPE AND COMPLETE MISSION, USE PAYLOAD TO DISRUPT ANY BLOCKING HOMELAND SECURITY PERSONNEL.  FOR LARGE CROWDS, A MINIMUM OF THREE SEQUENTIAL ATTACKS WILL BE REQUIRED TO DISRUPT ENOUGH OPERATIVES TO PERMIT ESCAPE.  DROP SHUTTLE WILL MAKE PICKUP ONCE YOU REACH THE RESERVE BANK SPACESCRAPER SEMIBALLISTIC ROOF PADS.  ACCESS TO PADS ONLY AVAILABLE VIA SPECIAL LIFT TUBE IN MAIN ATRIUM LEVEL.'"
Understand "flash paper" as the drop message.

After taking the drop message:
	say "You unfold the message as you take it.";
	deactivate the Table of SMS Hints;
	now the drop message is unfolded.
	
Instead of dropping the drop message:
	say "You trigger the flash paper and drop the message.  There is a quick flash of flame, and it vanishes utterly!";
	now the drop message is off-stage.

The fountain is in Green Commercial Plaza Center.  The fountain is scenery.  The description of the fountain is "A fairly dull example of landscape features, no doubt because it was designed or selected by a business association."

The bench is in Green Commercial Plaza Center.  The bench is a supporter. The bench is enterable.  The bench is scenery.  The description of the bench is "A plascrete bench, functional but rather unyielding.  You suspect comfort was intentionally left out of the design to discourage loitering."
Report entering the bench:  
	say "You sit down on the bench." instead.
Report exiting from the bench:
	say "You stand up." instead.
	
Instead of sleeping when the bench encloses the player:
	now instantiate is true;
	say "This bench is far, far, [italic type]far[roman type] too uncomfortable to sleep on." instead.

Green Commercial Plaza South is south of Green Commercial Plaza Center.  The description is "The southern end of the Green Commercial Plaza, which continues to the north.  To the east is Accessorize, a fashion store, and to the west is Garb-oh, a trendy clothing shop.  The south end of the mall is closed off by an elaborate landscaping installation of trees and shrubs, presumably to hide a relatively ugly building behind it."
There is a trash can in Green Commercial Plaza South.

The trees are in Green Commercial Plaza South.  The trees are scenery.  The description of the trees is "A small number of heavily landscaped trees and shrubs which hide the buildings to the south."
Understand "shrub" as the trees.
Understand "shrubs" as the trees.
Understand "tree" as the trees.

Instead of going south in Green Commercial Plaza South:
	now instantiate is true;
	say "You can't find a path between the shrubs."

Metro Savings is west of Green Commercial Plaza North and northwest of Green Commercial Plaza Center. The description of Metro Savings is "This is a completely nondescript bank storefront which exists solely to house an ATM.  It's so nondescript, in fact, that it took you some actual effort to determine which bank owns it, probably to ensure that they can charge you access fees no matter what.  To the east is Green Commercial Plaza."

The ATM is a device.  The ATM is in Metro Savings.  The ATM is fixed in place.  The ATM can be hacked or unhacked.  The ATM is unhacked. The description is "This is a standard ATM, using palm prints and Mit-Klein authentication to permit customers to perform banking transactions. A palm reader juts out from the front of the console."
The palm reader is a part of the ATM. The palm reader is a container.  The palm reader is open. The palm reader is scenery.  The description is "This is a standard palm reader, which is used to verify the identity of the ATM customer.  A flat plate, slightly inset, it is placed at a convenient angle to allow the palm to lie against it.  This one, however, has a broad crack in it across which someone has written 'KAPUT' in black marker."
Understand "plate" as the palm reader when the location is Metro Savings.
Understand "crack" as the palm reader when the location is Metro Savings.
Understand the command "hide" as insert.

Instead of inserting into the palm reader:
	if the noun is the tissue sampler:
		say "You carefully fit the tissue sampler into the hollow of the palm reader so that it lies over the read area.";
		now the tissue sampler is in the palm reader;
		now the ATM is hacked;
	otherwise:
		say "You can't put that in the palm reader!".


Instead of switching on the ATM:
	unless the tissue sampler is in the palm reader, say "The palm reader appears to be broken; it does not respond." instead;
	if the actor is the player:
		say "You start to reach out to use the ATM, but the machine is unable to contact your MitKlein Encapsulation.  It flashes a red light and shuts off." instead;
	otherwise:
		if the location is Metro Savings:
			say "[the actor] presses a palm to the ATM's palm reader.   Presumably, they complete their transaction to their satisfaction, although you can't see from where you are." instead.


RoughIt is east of Green Commercial Plaza North and northeast of Green Commercial Plaza Center.  The description is "This diorama of a shop is the City's largest camping and outdoors supplier.  Although the store is full of equipment, it's just props, firmly secured - because everything is only available via an automated vending system, provided you don't mind your purchases being relentlessly catalogued by the Department of Homeland Security.  You stopped shopping here after they told you you couldn't buy a coffee without using biometric authentication.[if the thermos is on the vending system]  One item catches your eye, though - there is a metal thermos sitting out of place atop the vending system.  Someone must have forgotten it.[end if]"

The vending system is in RoughIt.  The vending system is scenery.  The description of the vending system is "One wall is taken up by the automatic vending and dispensing system.  Usually, you can use the system to view a catalog of available items and purchase your choice; however, since the store is unable to scan your MitKlein, the system remains stubbornly blank."
Understand "vending machine" as the vending system when the location is RoughIt.
Understand "machine" as the vending system when the location is RoughIt.

The Proletariat Bar is east of Green Commercial Plaza Center and southeast of Green Commercial Plaza North and northeast of Green Commercial Plaza South. The description of the Proletariat Bar is "The Proletariat is a local bar (not a pub).  It's just far enough above a 'dive' to be allowed zoning here, but steadfastedly refuses to cater to upscale tastes.  You like it.  Restrooms are to the east; the bar runs along the north side with a stolid bartender behind it and a jukebox sits against the back wall.  A few hardy drinkers sit here, communing with their spirits.  In a nod to the place's name, a Public Surveillance Notice covered with stickers and graffiti tags has been framed above the bar.[if the jukebox is switched on][paragraph break][one of]A low tune can barely be made out over the ambient noise.[or]Thin music can be heard.[or]You barely recognize the Muzak as something that was once punk.[purely at random]".
Some people called the drinkers are in the proletariat bar.  The drinkers are scenery. The drinkers are plural-named. The description of the drinkers is "These people look fairly introverted and are focused on their drinks."

Instead of examining the drinkers:
	say "They're ignoring you and appear to be concentrating on their drinks of choice."

Instead of pushing the drinkers:
	try taking the drinkers instead.

The Proletariat restroom is a restroom.  The Proletariat restroom is east of the Proletariat Bar.  The Proletariat restroom is blind. The description of the Proletariat restroom is "The one-holer restroom at the Proletariat is cleaner than you might think, although that may be due to the fact that it is midweek.  A scratched mirror over the sink has been covered with marker graffiti."
There is a trash can in the Proletariat restroom.
The Bar mirror is here.  The Bar mirror is a mirror.  The description is "This is a cheap but sturdy mirror, attached to the wall.  Its surface is nearly covered (except for a spot in the center, where you can see your own face) with scratches and permanent marker scrawls.  One graffito catches your eye near the bottom, but you'd have to look closely to make it out fully."

A foodstore called Green Commercial Bistro Paris is west of Green Commercial Plaza Center and southwest of Green Commercial Plaza North and northwest of Green Commercial Plaza South.  The description is "This is a branch of the popular lunch and coffee shop Bistro Paris.  There are a few tables near the front.  A restroom is to the west.  On the north wall, opposite the counter, is a collection of Paris-themed prints.  In the center is a large holoportrait of the chain's owner, Zuzu, and a sign claiming that the Bistro Paris has restaurants here, in the Reserve Bank Spacescraper, and in London.  A server behind the counter is waiting on several customers."
There is a trash can in the Green Commercial Bistro Paris.
The portrait is here.  The portrait is scenery.  The description is "This portrait is somewhat horribly overdone.  In it, Zuzu's face, in three-quarter profile, floats in front of what appears to be this very restaurant.  Her face is so large and detailed that you're sure they had to edit out her pores, although they probably left her bright green eye unretouched."
Zuzu's eye is a part of the portrait. Zuzu's eye is scenery.  The description of Zuzu's eye is "Zuzu's eye is bright emerald green, which is easy to see as she is looking wide-eyed into the camera."
Understand "the eye" as Zuzu's eye when the location is Green Commercial Bistro Paris.
Understand "the eyes" as Zuzu's eye when the location is Green Commercial Bistro Paris.
Understand "Zuzu's Eyes" as Zuzu's eye when the location is Green Commercial Bistro Paris.
Understand "the holoportrait" as the portrait.
Understand "holoportrait" as the portrait.
Understand "holo" as the portrait when the location is Green Commercial Bistro Paris.
The prints is unimportant stuff in Green Commercial Bistro Paris.
The tables are unimportant stuff in Green Commercial Bistro Paris.

The location sign is in Green Commercial Bistro Paris.  The location sign is scenery.  The description is "This sign helpfully wants you to know that the Bistro Paris chain has two other locations, one in London and one in the Reserve Bank Spacescraper downtown.  You wonder why London rather than Paris, but shrug it off."

Understand "the sign" as the location sign when the location is Green Commercial Bistro Paris.

The Bistro Paris Restroom is a restroom.  The Bistro Paris Restroom is west of Green Commercial Bistro Paris.  The description is "This public restroom is squeakily clean, as befits Bistro Paris['] image.  A stall offers minimum privacy, and a large mirror is affixed over the double sink.  Despite the best efforts of the staff, a bit of graffiti seems to have made it onto the mirror."
The Bistro Paris mirror is here.  The Bistro Paris mirror is a mirror.  The description is "This mirror is large and very clean, although near the bottom right a small permanent marker graffito catches your eye."

The Accessorize is east of Green Commercial Plaza South and southeast of Green Commercial Plaza Center.  The description is "This well-lit store purveys all manner of cosmetic aids and fashion accessories.  Everything from wrist bangles to skin creams to custom cosmetic contacts can be purchased here."

Some stock is in Accessorize.  The stock is scenery.  The stock is plural-named. The description of the stock is "A variety of personal grooming products and fashion accessories graces the shelves."

Understand "bangle" as the stock.
Understand "skin cream" as the stock.
Understand "cosmetics" as the stock.
Understand "cream" as the stock.
Understand "goods" as the stock.

Check taking the stock:
	say "As you reach for it, the store's systems detect your lack of functioning MitKlein bottle.  A bright red light flashes and a buzzer sounds.  You quickly retract your hand." instead.
	
Instead of pushing the stock:
	try taking the stock instead.

instead of buying the stock:
	try taking the stock instead.

The Garb-oh door is an autodoor.  The Garb-oh door is west of Green Commercial Plaza South and east of Garb-oh.  The description is "A thick glass autodoor with built-in eye scanner.  A discreet warning sign on the door indicates that theft protection is in use."

Before going through the Garb-oh door:
	if the player is thieving:
		say "As you approach the autodoor, a cyclone light goes off, triggered by radio emissions from the antitheft system detecting the antitheft tag you are carrying!  The attendant hurries over as a policeman rushes in.  The tag is swiftly found!";
		end the story saying "You have been arrested!";
	otherwise:
		continue the action.

Garb-oh is west of the Garb-oh door.  The description is "Garb-oh! is a trendy clothing shop.  Images of the shop's icon Greta Garbo abound, each dressed in the clothing item offered on the rack below it.  Jackets, scarves, bandannas, trousers, shirts and more are on inviting display."

The racks is a supporter.  The racks is in Garb-oh.  The racks is plural-named.  The racks is fixed in place. The racks is scenery.  The description is "Garb-oh has the latest in shiny, innocuous chromed clothing racks."

Understand "rack" as the racks.

the sales counter is a container in Garb-oh.  The sales counter is enterable, transparent, open, not openable, and fixed in place.  "The sales counter runs along the north side of the store."

Instead of entering the sales counter, try going north.

Understand "behind counter" as the sales counter when the location is Garb-oh.
Understand "behind sales counter" as the sales counter when the location is Garb-oh.
Understand "behind the sales counter" as the sales counter when the location is Garb-oh.

The sales drawer is in the sales counter.  The sales drawer is a container.  The sales drawer is openable, closed, and fixed in place.  "There is a wide drawer below the counter level."

Before opening the sales drawer:
	unless the sales counter encloses the player:
		say "You can't reach that from here; you'd need to be behind the sales counter." instead.

Before going north in Garb-oh:
	if Shoplifting is happening:
		say "You move around behind the sales counter.";
		now the player is in the sales counter instead;
	otherwise:
		say "[one of]You try to move behind the sales counter, but the shopkeeper glares at you and blocks the way![or]The shopkeeper blocks you again.  You need a distraction.[or]The shopkeeper blocks you.[stopping]" instead.

Before going south in Garb-oh:
	if the sales counter encloses the player:
		say "You move out from behind the sales counter.";
		now the player is in Garb-oh instead.

Chapter 5 - Green Service

Section 3 - Map

GreenService is a region.  Booking is in GreenService.  Front Desk is in GreenService.  Hospital Lab is in GreenService.  Hospital Lounge is in GreenService.  Hospital Lobby is in GreenService. Hospital Elevators is in GreenService.  Hospital Restroom is in GreenService.  Triage is in GreenService.  Emergency Room is in GreenService.  Green Service Station is in GreenService.

GreenServOutside is a region.  GreenServOutside is in GreenService.  Government Square South and Government Square North and Police Station Steps and Civil Center Steps and Hospital Entrance and Hospital Driveway are in GreenServOutside.

The spacescraper is in GreenServOutside.  The streetlights is in GreenServOutside.  The sky is in GreenServOutside.


Green Service Platform is a transitStation.  The stationName of Green Service Platform is "Green Service One".  The stationNumber of Green Service Platform is 3. The description of Green Service Platform is "Green Service One's platform is underground.  It serves mostly city workers during the day.  There is an exit at the center of the platform which leads north through a set of closed automatic doors to a stairway leading up to the main station, just next to a large plaque with the name of the station on it.  The platform abuts the Transit web to the south[if the location is the station of the Capsule], where a Transit capsule hovers impatiently in the web.  The capsule doors are open.[otherwise], now empty.[end if]".
Instead of going south in Green Service Platform, try entering the Transit Web instead.

The Green Service Station door is north of Green Service Platform and below Green Service Station.  The Green Service Station door is an autodoor.  The Green Service Station door is closed.

Green Service Station is above the Green Service Station door.  The description is "Green Service is the local government services cluster.  The Transit station seems to reflect this, exhibiting a weary conformity - although you couldn't say exactly how.  A stairway leads down to the platform access doors, and a set of doorways lead north out onto Government Square."

Government Square South is north of Green Service Station.  The description is "This is the southern half of Government Square.  Several benches and landscape features are scattered throughout the area.  A roadway approaches from the west, loops north around the square and continues to the east.  Groundcars move back and forth along the road, mixed with official vehicles such as police cars, ambulances and the ubiquitous slightly shabby black flitters used by government agencies.  The doors to Green Service Transit station are to the south.  Across the road to the east is Green Hospital's driveway.  The Hospital's main entrance is to the northeast.  The square continues to the north.  To the northwest, across the road on the other side, is the front steps of the local police station."
The benches is unimportant stuff in Government Square South.
The landscape features is unimportant stuff in Government Square South.
The govcars is a backdrop.  The govcars is plural-named. The printed name of the govcars is "vehicles". The description is "A stream of vehicles passing by."
The govcars is in Government Square North and Government Square South.
Understand "groundcars" and "vehicles" and "flitter" and "flitters" and "car" and "cars" as the govcars when the govcars is in the location.
Instead of entering the govcars, say "They're moving. You'd be injured."
Instead of climbing the govcars, say "They're moving. You'd be injured."
Instead of blocking the govcars, say "They're moving.  You'd be injured."

Government Square North is north of Government Square South.  The description is "The north half of Government Square is surrounded on three sides by roadway.  Groundcars trundle back and forth, and the occasional flitter whines down to or screams up from flitter pads out of sight atop the surrounding buildings.  The hospital driveway is to the southeast, across the road; the hospital entrance to the east and the police station to the west.  To the north is the steps to the Civil Center, the local government office building."


Hospital Driveway is east of Government Square South and southeast of Government Square North and south of Hospital Entrance.  The description is "The driveway and parking area for the Hospital ER, which lies directly to the east.  To the north is the main entrance to the Hospital building."

After inserting into the car key when the location is Hospital Driveway:
	If the player is flitterEnabled:
		now the ambulance is unlocked;
		say "The ambulance flashes its lights twice as the locklarm unlocks the back.";
	continue the action.

After going from Hospital Driveway:
	if the ambulance is open:
		now the ambulance is closed;
		now the ambulance is locked;
	continue the action.

The ER door is east of Hospital Driveway and west of Triage.  The ER door is an autodoor.  The ER door is closed.

Hospital Entrance is north of Hospital Driveway and northeast of Government Square South and east of Government Square North.  The description is "This is the front entryway pavilion of the local hospital.  The automatic entryway doors are to the east, and the ER entrance and driveway is to the south."

The Hospital door is east of the Hospital Entrance and west of the Hospital Lobby.  The Hospital door is an autodoor.  The hospital door is closed.
Understand "doors" as the Hospital door when the location is Hospital Entrance.
Understand "doors" as the Hospital door when the location is Hospital Lobby.

Hospital Lobby is east of the Hospital door.  The description is "This is the main entrance to a busy regional hospital. Autodoors lie to the west.  Patients and staff rush back and forth, all too busy to pay you any attention.  To the south is an archway with a sign reading 'TRIAGE'; to the east is the elevator core and to the north is the waiting lounge."
There is a commuter in the Hospital Lobby.
There is a staff member in the Hospital Lobby.
Understand "patient" as a commuter when the location is the hospital lobby.
Understand "patients" as a commuter when the location is the hospital lobby.

Hospital Lounge is north of Hospital Lobby.  Hospital Lounge is blind. The description is "This lounge is full of marginally-comfortable seating and antiquated magazines.  A door to the east reads 'LAB' and the main lobby is to the south.  It is deserted; looking at the decor, you're pretty sure you know why."
The magazines is unimportant stuff in the Hospital Lounge.

Hospital Lab is east of Hospital Lounge.  The description is "This is an all-purpose pathology laboratory receiving area.  The lab itself is behind a bulletproof glass wall to the east, and a small window allows samples or paperwork to be passed back and forth."
The labwindow is unimportant stuff in the Hospital Lab. Understand "window" as the labwindow when the location is Hospital Lab.
The glass wall is unimportant stuff in the Hospital Lab.
Understand "wall" and "bulletproof glass" and "glass" as the glass wall when the location is Hospital Lab.
There is a trash can in the Hospital Lab.

Triage is south of Hospital Lobby and east of the ER door and west of the Emergency Room.  The description is "This is a triage area for the ER to the east.  To the north is the main Hospital lobby, and west lies the automatic doors out to the driveway.  Patients and staff are moving back and forth through the area."
There is a commuter in Triage.
There is a staff member in Triage.
Understand "patient" as a commuter when the location is Triage.
Understand "patients" as a commuter when the location is Triage.


The Emergency Room is east of Triage and south of the Hospital Elevators.  The description is "This is a prep and emergency treatment area for the emergency ward to the east, which is locked.  Triage is to the west, and a door leads north.  The ER is presently unused, and lies empty."

Instead of going east in Emergency Room:
	now instantiate is true;
	say "The emergency ward is locked."

Hospital Elevators is north of the Emergency Room and east of Hospital Lobby.  The description is "The main elevator bank for the hospital seems to require either an appropriate Mit-Klein scan or a hospital ID to swipe.  Patients and staff move through the area. The lobby is to the west.  The ER is through a door to the south, and a restroom is to the east."
There is a commuter in Hospital Elevators.
There is a staff member in Hospital Elevators.
Understand "patient" as a commuter when the location is Hospital Elevators.
Understand "patients" as a commuter when the location is Hospital Elevators.


Hospital Restroom is a restroom.  Hospital Restroom is east of Hospital Elevators.  Hospital Restroom is blind. The description is "A clean restroom that smells strongly of disinfectant and hand sanitizer.  There is a single sink with a small mirror over it and a single stall."
There is a trash can in the Hospital Restroom.
The hospital mirror is a mirror. The hospital mirror is in the Hospital Restroom. The description is "A small oval mirror set at an angle for those in wheelchairs, which forces you to hunch down slightly.  A blue permanent marker graffito is visible at the very bottom if you look carefully."

Civil Center Steps is north of Government Square North.  The description is "These are the front steps of an impressive government building.  Civil servants hurry in and out through the security checkpoint, going about their business."
Instead of going north in Civil Center Steps:
	now instantiate is true;
	say "In order to pass the checkpoint, you would need to have a Government authorized Mitsui-Klein signature.  Realizing this, you retreat."
Instead of going up in Civil Center Steps:
	now instantiate is true;
	say "In order to pass the checkpoint, you would need to have a Government authorized Mitsui-Klein signature.  Realizing this, you retreat."
The security checkpoint is scenery in Civil Center Steps.  The description is "A checkpoint visible at the entrance to the Civil Center where civil servants enter and depart."
Instead of pushing the security checkpoint, say "That's not a good idea for someone trying to remain unnoticed by law enforcement."
Instead of touching the security checkpoint, say "You'd rather not get too close."


Some people called the civil servants are here.  The civil servants are plural-named.  The description of the civil servants is "A crowd of bored-looking government functionaries."

Instead of examining the civil servants:
	say "They're ignoring you and appear to be concentrating on their errands."

Instead of pushing the civil servants:
	try taking the civil servants instead.

Police Station Steps is west of Government Square North and northwest of Government Square South.  The description is "These are the busy steps of the local police station.  To the east and southeast is Government Square, while the police station lies at the top to the west. Uniformed police and people in plain clothes are traversing the steps to exit and enter the building."

Some people called the cops are here.  The cops are plural-named.  The cops are scenery. The description of the cops is "A flow of police officers, both uniformed and plain clothed."

Understand "policemen" as the cops when the location is Police Station Steps.
Understand "police" as the cops when the location is Police Station Steps.

Instead of examining the cops:
	say "They're ignoring you.  SInce that's your preference, you decide not to stare."
	
Instead of pushing the cops:
	try taking the cops instead.

Front Desk is west of Police Station Steps.  The description is "This is the front desk of the police station. A harried sergeant is manning the desk, and is so busy he doesn't even have time to give you more than a brief scowl.  To the north is a security gate leading into the police station proper, and to the south is an open area with a sign reading 'BOOKING.'"
The police gate is in Front Desk.  The police gate is scenery.  The police gate is fixed in place. The description is "A scarred metal security gate of bars and mesh.  A bare hallway is visible trough it.  It is locked."
Understand "gate" and "security gate" as the police gate when the location is Front Desk.

Check opening the police gate:
	say "The gate is securely locked." instead.

Instead of going north in Front Desk:
	now instantiate is true;
	say "The gate is securely locked." instead.

Booking is south of Front desk.  The description is "This area is used for processing prisoners…er, excuse me, suspects, and as a waiting lounge.  There is a single hard bench, now empty, and a counter along the south wall with a stern poster on the wall above it.  One area has been kept clear and is a neutral pale blue, presumably to be used as a backdrop for photographing suspects."
The Police Poster is here.  The police poster is scenery.  The description of the Police Poster is "The poster has an almost laughably crude and kitschy burly policeman chasing a pair of hoodlums while blowing a whistle and brandishing a nightstick.  The hoodlums are leaving a trail of iconic Drug Paraphernalia.  A caption reads 'If you see any DRUG ACTIVITY, report it AT ONCE to your FRIENDLY LOCAL POLICE.'"
Understand "poster" as the Police Poster.
The hard bench is here.  The hard bench is a supporter. The hard bench is enterable. The hard bench is scenery. The hard bench is fixed in place.  The description of the hard bench is "This bench is made of (very) hardwood, scarred and wearing a patina of age and use."

Report entering the hard bench:
	say "You sit down on the hard bench.  It gives not a millimeter." instead.
	
Report exiting from the hard bench:
	say "You stand up." instead.
	
Instead of sleeping when the hard bench encloses the player:
	now instantiate is true;
	say "This bench is uncomfortable, and there are police everywhere.  You can't risk it." instead.

Understand "bench" as the hard bench when the location is Booking.



Chapter 6 - Reserve Bank

Reserve Bank Station is a transitStation. The stationName of Reserve Bank Station is "Reserve Bank". The stationNumber of Reserve Bank Station is 1. The description of Reserve Bank Station is "The Reserve Bank Transit Station. The platform opens out at the middle to a lobby area which is dominated by a row of automated doors to the west.  The flow of commuters moves steadily through these doors, with each person turning their head to the right as they approach for the eye scanner to verify their identity before opening the portal long enough for them to slip through.  The floor and walls are both clean duramex nanotile, and the station name (Reserve Bank) is indicated on large plaques set into the walls.  At either end of the platform, closed gates guard against any entry into the slideway tunnels. A platform abuts a Transit web[if the location is the station of the Capsule], where a Transit capsule can be seen hovering.  The capsule doors are open.[otherwise], now empty."
Instead of going east in Reserve Bank Station, try entering the Transit Web instead.

The Reserve Bank Station door is west of Reserve Bank Station and east of Station Corridor.  The Reserve Bank Station Door is an autodoor.  The Reserve Bank Station door is closed. 

Instead of opening the Reserve Bank Station door:
	if the location is Station Corridor:
		say "The Eye Scanner probes your eye and deducts Transit fare from the account associated with your iris pattern.";
		now the Reserve Bank Station Door is open;
		the autodoors close in zero turns from now;
	otherwise if the location is Reserve Bank Station:
		if the player is not wearing the contact lens:
			activate the Table of Eyescanner Hints;
			say "The Eye Scanner laser delicately probes your iris to determine your identity.  The Reserve Bank Security Subroutine determines that you have no legitimate reason to enter the Reserve Bank spacescraper.  A harsh buzzer sounds and the door remains locked.";
		otherwise if the player is wearing the contact lens:
			say "The Eye Scanner scans the iris printed on the contact lens to determine your identity.  The Reserve Bank Security Subroutine determines that 'you' have a legitimate reason to enter the Reserve Bank spacescraper, and the doors slide smoothly open.";
			deactivate the Table of Spacescraper Hints;
			deactivate the Table of Eyescanner Hints;
			activate the Table of Goal Hints;
			now the Reserve Bank Station door is open.


Station Corridor is west of the Reserve Bank Station Door.  "The corridor widens as it terminates at the automatic doors to the Reserve Bank Station, which lies to the east.  There is a directory and guide sign on the wall.  Although traffic is overwhelmingly to the west, there are two doors reserved for traffic into the station, indicated by green lightbars overhead, whose access scanners are active."  
The lightbars are unimportant stuff in Station Corridor.  Understand "green lightbars" as the lightbars when the location is Station Corridor.
The directory is in the Station Corridor.  The directory is fixed in place.  The description of the directory is "A large sign mounted to the wall.  It reads: [line break][bold type]Green Line Transit: Basement Level[line break]Food Court: Basement Level[line break]Atrium: Main Lobby Level[line break]Rooftop Bouncelift: Main Lobby Level".

Understand "guide" as the directory.  Understand "sign" as the directory when the location is station corridor.

Instead of taking the directory:
	say "You don't dare do anything that looks like vandalism with this many cameras around."

Food Court is a room.  Food Court is west of Station Corridor.  "The center of the Food Court beneath the Reserve Bank spacescraper is a busy place at all times of the day.  Around the periphery are several food stand franchises, some doing a brisk business.  Dozens of customers are here waiting in line at the food stands, sitting at the dozens of tables in the center, or just passing through from the Reserve Bank Station to the Lift Lobby up a ramp to the west or vice versa.  The floor is made of duramex tiles."  
There is a trash can in the Food Court.
There is a customer in the Food Court.
There is a server in the Food Court.
The foodtables are unimportant stuff in the Food Court.  Understand "tables" as the foodtables when the location is Food Court.
The tile floor is scenery in the Food Court.  The description of the tile floor is "The floor is made of duramex tiles, nondescript gray matte shedding scuff marks with the determination of the designed servant into nanogrout channels in between.  During the short nighttime lull, the floor will seem to creep slightly as the nanogrout slowly flows the daytime grime along the channels to dispose of it into the walls."

Understand "floor" as the tile floor when the location is Food Court. 
Understand "tiles" as the tile floor when the location is Food Court.

Instead of going up in the Food Court, try going west instead.
Instead of examining down in the Food Court, try examining the tile floor instead.
Instead of examining up in the Food Court, say "The ceiling is two levels up, peppered with DayBrite(™) lighting fixtures which make it difficult to see any detail through the glare."

A foodstand called Reserve Bank Bistro Paris is in Food Court.  "This is the counter-only version of Bistro Paris, a well-known faux French eatery offering somewhat soggy croissants and mediocre coffee alongside such wonders a coq au vin served in white styrofoam.  Sadly, it appears that it does not sell wine, which might go some way towards relieving the disappoitnement any gourmand feels when faced with the prospect of eating here.  A sign painted above the counter reads 'Try our Green Commercial One location!'"
The soggy croissants are unimportant stuff in Food Court.

A foodstand called I Have No Mouth is in Food Court.  "I Have No Mouth (but Ice Cream) is a popular frozen dessert chain.  Despite the somewhat disturbing corporate artwork and iconography, this counter offers a selection of solid flavors including Chocolate AMmond, PostApocalicks and We've All Gone Tutti-Frutti.  Two scoopers behind the counter are smoothly dishing up cones and cups to a large crowd of midday sweet-seekers."
The cones are unimportant stuff in Food Court.  Understand "cups" as the cones when the location is Food Court.

A foodstand called The Sheep Look Up is in Food Court. "The Sheep Look Up is a gyros restaurant, featuring small cartoon sheep heads looking imploringly up from the steam table behind the glass.  Two surly employees are hard at work slicing gyros and constructing sandwiches and lunch platters for the several hungry customers who wait in line."
Does the player mean examining The Sheep Look Up: it is unlikely.

A foodstand called Tacos Terriff is in Food Court. "Tacos Terriff is a bare-bones Mexicalitexazonan food joint.  Meat product is scooped into grain-plastic shells and covered with various unidentifiable industrial sauces and shredded veggies.  Despite this, it seems to have a dedicated following, as it is doing land-office business with the office set."

A foodstand called Apollo's is in Food Court. "Apollo's Coffee is done up in fake Ancient Greek, as befits its name. Plastic busts and columns adorn its facade.  For some reason, there is a silver robotic head behind the counter, mounted on the wall, where a red scanning laser moves monotonously back and forth."
The robotic head is a backdrop in Food Court.  The robotic head is scenery.  The robotic head is fixed in place. The description of the robotic head is "Large and chromed silver, this robot's head mounted behind the counter of Apollo's looks like a large helmet with rudimentary features.  Instead of eyes, a red band crosses the face, behind which a bright red light slowly moves back and forth."
Instead of taking the robotic head:
	say "It's mounted high behind the counter." instead.
Instead of pushing the robotic head:
	try taking the robotic head instead.
	
Understand "Apollos" as Apollo's when the location is Food Court.	
Understand "robot" and "robot head" and "head" as the robotic head when the location is Food Court.


Lift Lobby is west of Food Court.  "The Lift Lobby controls underground access to the Reserve Bank spacescraper, beneath the towers of industry and capital made pillars of money and sin.  Hundreds of people rush to and fro through the lobby on their way into or out of the building.  To the north is a large bank of bouncelifts, their liftfields on and glowing faintly blue behind security gates.  Access to the bouncelifts is controlled by Lift Scanners, set above and to the right of each bouncelift entry.  There is no ceiling; several meters up, the room opens out into the street level lobby above.  There is a railing around the perimeter of the floor above; several people are leaning against or over it, watching the flow of commuters below them and around you.  The Atrium, a wide open area extending at least halfway up the spacescraper, is visible above that. There is no way to reach the street lobby from here other than via the bouncelifts. A shallow ramp leads east down to the Food Court.[paragraph break]You can hear the confused murmur of a large crowd coming from the Atrium above." 
The lift scanners are unimportant stuff in the Lift Lobby.
The bouncelifts are in the Lift Lobby. The bouncelifts are scenery.  The bouncelifts are plural-named.  The description of the bouncelifts is "A bank of vertical gravtech lift tubes along the north wall.  Access to them is controlled by lift scanners, which require a working and authorized MitKlein signature to pass."

Instead of going up in the Lift Lobby:
	now instantiate is true;
	say "You can't go that way."
Instead of going down in the Lift Lobby, try going east instead.

Instead of going north in the Lift Lobby:
	now instantiate is true;
	say "The main bouncelifts are much more heavily secured than the public areas of the building.  Your dead MitKlein prevents you from gaining access."

Instead of entering the bouncelifts:
	try going north.

Instead of examining up in the Lift Lobby, say "Several meters up, the walls end at the street level and the spacescraper's enormous internal atrium is visible above.  The Main Lobby occupies the floor above, at the base of the atrium; railings circle the opening at the top of the Lift Lobby, and a few people are leaning over to look downwards.  Many stories above, the roof of the Atrium is barely visible behind the glare of its many enormous lighting fixtures."

After going west from the Food Court for the first time:
	activate the Table of Atrium Hints;
	continue the action.

The Powered Platform is an enterable supporter in the Lift Lobby.  The Powered Platform is fixed in place. The description of the Powered Platform is "This is a powered platform resting near the south wall.  Judging from the equipment locked to it, it is used to clean the walls and windows of the Atrium.  A locked-down winch control is at one end, and there is a safety railing around the edge."
The winch control is a device.  The winch control is part of the Powered Platform.  The description of the winch control is "A simple control panel, used for winding or unwinding cables and thus raising or lowering the platform.  It is shut off.  A keylock on the control is set to 'OFF.'"
The keylock is part of the winch control.  The description of the keylock is "It's a simple keyslot.  It's set to 'OFF.'"
The railing is a part of the Powered Platform.  The description of the railing is "A metal safety fence around the platform."

Check entering powered platform:
	unless the player is camoflaged, say "Before you can step up onto it, the security guard rushes over and shoves you away from the platform, glaring at you." instead;
	say "The security guard looks over, sees your maintenance jacket and gives you a nod."
	
Check taking the spool:
	if the spool is on the powered platform:
		unless the player is on the powered platform, say "You can't reach it from outside the railing." instead.

Check climbing the railing:
	say "It nearly encloses the platform.  There's no point." instead.


Maintenance Area is [west of Reserve Bank Bistro Paris and ]northwest of Food Court[ and north of Apollo's].  Maintenance Area is blind. "This corner of the food court is drab and uninhabited.  A closed door marked 'MAINTENANCE' lurks to the west, and another marked 'RESTROOM' to the north.  The floor and walls are scuffed around the door, no doubt from cleaning implements banging against them on their daily travels."

A restroom called The Food Court Restroom is north of Maintenance Area.  "Bog-standard restroom.  Several stalls offer a minimum of privacy.  A large mirror covers the walls over the sink."
The Food Court Restroom mirror is a mirror.  The Food Court Restroom mirror is in the Food Court Restroom.  The description is "A wall-covering mirror over the sinks.  The edges are covered in fingerprints, and you note that even the surveillance warning has not prevented a small scrawl of marker graffiti on the left edge."

The Maintenance Door is west of Maintenance Area.  The Maintenance Door is an autodoor. The Maintenance Door is scenery.  The description is "The maintenance closet is sealed by an autodoor.  There is no eye scanner on this door, but a flat plate above the door handle indicates a palm scanner lock."
Understand "palm lock" or "lock" as the maintenance door when the location is Maintenance Area.

Before opening the maintenance door in the Maintenance area:
	unless the player is handvalid:
		activate the Table of Closet Hints;
		say "The palm lock ignores you. The door remains firmly closed." instead;
	otherwise:
		deactivate the Table of Closet Hints;
		say "You press your doctored palm against the scanner.  The lock clicks open.";
		continue the action.
	

Utility Closet is west of the Maintenance Door. Utility Closet is blind. The description is "The maintenance closet is dimly lit and, ironically, not terribly clean.  There are various cleaning implements and supplies stored on shelves around the walls, a fire equipment wall rack, and a large metal solvents cabinet taking up one wall.  A fluorescent light panel flickers wanly in the ceiling. Two doors lead out of the closet, one east and one west."
The fluorescent light panel is unimportant stuff in Utility Closet.  Understand "light" and "panel" as the fluorescent light panel when the location is Utility Closet.

The Solvents Cabinet is in the Utility Closet.  [The Solvents Cabinet is a thing.] The Solvents Cabinet is scenery.  The description of the Solvents Cabinet is "A large metal cabinet with several industrial warning icons on it occupies one wall. This cabinet is apparently used to store toxic cleaning and plumbing chemicals.  It seems to be locked."

The cleaning equipment is in the Utility Closet.  The cleaning equipment is scenery.  The description of the cleaning equipment is "A collection of half-empty bottles and jugs and some very well-used mops, brooms and rags."
Understand "supplies" and "implements" as the cleaning equipment when the location is Utility Closet.

Check taking cleaning equipment:
	say "You can't carry all that, and indeed don't want to." instead.

Check pushing cleaning equipment:
	say "There's quite a bit of it, and you'd rather not pick it up without a HAZMAT suit." instead.

Check opening the Solvents Cabinet: 
	say "It's firmly locked, and you can't find a visible locking mechanism.  It must have a MitKlein scanner on it." instead.

The wall rack is in the Utility Closet.  The rack is a supporter. The rack is scenery. The description is "A set of wall-mounted hooks[if the fire axe is on the rack], holding a fire axe[end if][if the gas mask is on the rack] and a gas mask[end if]."

Maintenance Corridor is west of the Utility Closet.  Maintenance Corridor is blind.  The description is "This is the middle of a short corridor running north to south.  The walls are gray-painted cinderblocks and have many scuff marks and scars.  The floor is an industrial non-slip surfaced concrete.  A door to the east is marked 'STORAGE.'"

North End of Maintenance Corridor is north of Maintenance Corridor.  North End of Maintenance Corridor is blind.  The description is "The corridor comes to an end here.  To the north is large door marked 'HVAC ACCESS' which is closed and securely locked.  A bulletin board on the wall to the right contains a dizzying array of official Workplace Notices, all of which bear the symbol of the Health and Safety Board."
The bulletin board is unimportant stuff in North End of Maintenance Corridor.  Understand "workplace notices" as the bulletin board when the location is North End of Maintenance Corridor.

South End of Maintenance Corridor is south of Maintenance Corridor. South End of Maintenance Corridor is blind.  The description is "The corridor extends to the north from here.  To the west is a service bouncelift."
Before going west from South End of Maintenance corridor, say "The weight on your feet lightens as the bouncelift field grabs you."

Bottom of Service Bouncelift is west of South End of Maintenance Corridor.  Bottom of Service Bouncelift is blind.  "Inside the Service Bouncelift, the blue glow of the liftfield illuminates the two-meter cylinder and suspends you just off the floor.  Here at the bottom, there is an exit to the east."
Before going east from Bottom Of Service Bouncelift, say "You swim through the liftfield towards the exit, grasping the safety handle and swinging out of the bouncelift."
Before going up from Bottom of Service Bouncelift, say "You move to the up half of the cylinder and the liftfield wafts you upwards.  This service bouncelift has no intervening exits, so you are in the lift for some time before the top end comes into sight."
Instead of jumping when the location is Bottom of Service Bouncelift:
	say "The liftfield grabs you as you push off.";
	try going up.

Top of Service Bouncelift is above the Bottom of Service Bouncelift.  Top of Service Bouncelift is blind. "You are floating gently in midar at the top of the Service Bouncelift, there is an exit to the east."
Before going east from Top of Service Bouncelift, say "You angle yourself towards the door.  The liftfield gently moves you to the edge of the tube, and you swing yourself out of the lift via the safety handle."
Before going down from Top of Service Bouncelift, say "You move to the down half of the cylinder and the liftfield allows you to sink downwards.  This service bouncelift has no intervening exits, so you are in the lift for some time before the top end comes into sight."
Instead of jumping when the location is Top of Service Bouncelift:
	say "Your feet are floating in the air with the rest of you. You thrash around for a few moments until the field slowly brings your head upwards again."

Bouncelift Vestibule is east of Top of Service Bouncelift.  Bouncelift Vestibule is blind.  The description of Bouncelift Vestibule is "The service bouncelift opens onto a small vestibule, not much larger than the size of a closet.  A sign painted on the wall reads 'LEVEL 35 - MEZZANINE'. There is a door with a palm lock to the east."
Before going west from Bouncelift Vestibule, say "You step off the edge into empty space.  As always, there is a quick moment of adrenaline until your body realizes that the liftfield is working and you float into the tube."

Vestibule Door is a door.  Vestibule door is lockable.  Vestibule door is locked. Vestibule Door is scenery. Vestibule Door is east of Bouncelift Vestibule and west of Office Corridor.  The description of Vestibule Door is "A scuffed but sturdy security door.[if the location is Bouncelift Vestibule] There is a palm lock on this side to prevent unauthorized access to the floor beyond.  It looks like the lock is a retrofit, as it is attached to the door rather than an integral part. A sign reads 'PUBLIC AREA BEYOND THIS DOOR.'[end if][if the location is Bouncelift Vestibule and the Vestibule Door lock is broken]  The lock is smashed.[end if]"

Vestibule Door lock is a part of Vestibule door. Vestibule Door lock can be intact or broken.  Vestibule Door lock is intact.  The description of Vestibule Door lock is "[if intact]A retrofitted palm lock which juts out from the door's surface.[otherwise]  The remnants of a palm lock, smashed and broken to the point where the door moves freely."

Office Corridor is east of Vestibule Door.  The description of Office Corridor is "You are in the middle of a nondescript office corridor.  To the west is a security door to the service bouncelift.  To the north is a door reading 'RESTROOM'.  The corridor continues to the east."

Office Restroom is a restroom.  Office Restroom is north of Office Corridor.  The description of Office Restroom is "This is a restroom.  Since it is within corporate space, it is decorated a notch above most public restrooms, with the walls of the stall still bright white.  You still wouldn't eat off the floor, though.  Also, unlike most public restrooms, it seems to be under surveillance.  You're gratified to see that even this restroom doesn't seem to be safe despite that - a small graffito lurks on the left side of the mirror over the sink."
There is a trash can in the Office restroom.
The Office mirror is a mirror.  The Office mirror is in the Office Restroom.  The description is "A wall-covering mirror bolted over the sinks.  Although it is free of fingerprints and grime, you note that even the surveillance warning has not prevented a small scrawl of marker graffiti on the left edge."

Seating Area is east of Office Corridor.  The description of Seating Area is "The corridor ends in a small open seating area.  There is a door leading north, presumably to the rest of the office space.  It is closed and locked.  [if the observation window is intact]An observation window looks out east onto a ledge over the spacescraper's hollow core.[otherwise]The wreckage of an observation window leads east out to a ledge." 

The observation window is a supporter.  The observation window is in the Seating Area.  The observation window is scenery.  The observation window can be broken or intact.  The observation window is intact.  The description is "[if intact]A wall-sized armorcrys window which looks out over a ledge jutting into the airspace of the spacescraper's atrium.  The ledge, one of many spotted around the interior of the atrium, holds some flowers and a single tree, all in plascrete planters.[end if][if the observation window encloses the breaching charge]  A breaching charge is stuck to the window.[end if][if broken]The remnants of a wall-sized armorcrys window looking out over a ledge jutting into the atrium.  The ledge, on of many spotted around the interior of the atrium, holds some empty low planters and a single scarred tree in the middle of the ledge."

Instead of examining outside when the location is Seating Area, try examining the observation window instead.

Check inserting something into the observation window:
	say "You can't put something in the window." instead.

Check putting something on the observation window:
	unless the noun is the breaching charge, say "That won't stick to the window." instead.

Before going from the Seating Area to Atrium Ledge:
	if the observation window is intact:
		say "The observation window is quite solid.  You can't walk through it." instead;
	otherwise:
		say "You step gingerly through the jagged hole in the observation window onto the ledge.";
		continue the action;
		
Atrium Ledge is a room.  The Atrium Ledge is unmapped. The Atrium Ledge is blind. The description of Atrium Ledge is "This ledge, along with the others at the Mezzanine level, looks out over the huge hollow core of the Reserve Bank spacescraper's lower third.  The central column containing the main bouncelifts is visible perhaps fifty meters away.   Above, the roof of the atrium is hazily visible through the glare from its light fixtures some thirty floors up.  Thirty floors below, the main lobby can be made out.  To one side of the bouncelift column, the sublevel Lift Lobby can be seen one level below.  A very low glass wall surrounds the ledge for safety, but it's clear that this space isn't meant for the public.  There are a few holes in the plascrete floor where plants once rested; one large planter in the center holds a scarred but defiantly unbent tree."

Index map with Atrium Ledge mapped east of the Seating Area.

The scarred tree is in Atrium Ledge.  The scarred tree is scenery.  The scarred tree is fixed in place.  The description is "A scarred but unbent decorative tree stands here in a plascrete planter.  The trunk is some four inches across.  You have the urge to hold onto it as you stand on the ledge, looking out over many stories of empty space."
Understand "planter" as the scarred tree when the location is Atrium Ledge.

The plascrete floor is in Atrium Ledge.  The plascrete floor is scenery.  The plascrete floor is fixed in place.  The description is "The ledge's floor is a plascrete surface with several shallow holes in it which once held decorative plants."
Instead of taking the plascrete floor:
	say "That would be a neat trick."
Instead of pushing the plascrete floor:
	say "That would be a neat trick."
Understand "hole" and "holes" as the plascrete floor.

The broken window is in Atrium Ledge.  The broken window is scenery.  The broken window is fixed in place.  The description is "All that remains of the observation window is a bent, scarred frame and a few shards of armorglass here and there."

The shards are in Atrium Ledge.  The shards are scenery.  The shards are fixed in place.  The description is "A few scattered pieces of armorglass. Most of the window must have been blown over the edge."
Instead of taking the shards:
	now instantiate is true;
	say "They're sharp.  You'd only hurt yourself." instead.
Instead of pushing the shards:
	now instantiate is true;
	say "You dare not risk them going over the edge and hurting someone below." instead.

Before going west in Atrium Ledge:
	if the player is harnessed:
		now instantiate is true;
		say "You can't maneuver through the wreckage of the window with the stiff cable trailing out behind you." instead.

Instead of examining down in Atrium Ledge:
	say "You look carefully over the edge.  The Main Lobby can be seen some thirty floors down, with the Lift Lobby visible one level below that.  The bouncelift column descends to the Main Lobby, plunging through the floor to terminate in the Lift Lobby.  To one side is a smaller separate bouncelift column which leads to the rooftop semiballistic shuttle pads; there is an entry vestibule for it on the Main Lobby level.  A crowd of people, most seated facing a speaker's podium, occupy the Main Lobby floor. It's a long way down.";
	rule succeeds.

Instead of examining up in Atrium Ledge:
	say "The atrium continues upwards for some thirty floors, ending in a ceiling which is mostly obscured by the glare from the various powerful lighting fixtures which provide daylight-quality illumination to the interior space.";
	rule succeeds.

Before going down from Atrium Ledge:
	if the player does not enclose the descender:
		now instantiate is true;
		say "You can't go that way - you'd fall." instead;
	otherwise unless the cable is tied:
		now instantiate is true;
		say "You can't go that way - you'd fall." instead;
	otherwise unless the player is wearing the descender:
		now instantiate is true;
		say "you're not confident enough in your grip to go over the edge while simply holding your lifeline." instead;
	otherwise:
		now Bombs Thrown is 0;
		say "You carefully ease yourself over the edge, and before you can think better of it you let go!  The descender slowly pays out cable with a steady whir, and you find yourself dropping through empty space!".

The Atrium Midair Top is a room with printed name "The Atrium (Midair)". The Atrium Midair Top is down from the Atrium Ledge.  The Atrium Midair Top is unmapped. The Atrium Midair Top is blind. The description is "You are hanging in empty space some ways down from the ledge, the cable attached to your harness holding you face-down.  Below you you can see the crowds of people at the convention gathered on the Atrium floor."

The Atrium Midair Middle is a room with printed name "The Atrium (Midair)".  The Atrium Midair Middle is down from The Atrium Midair Top.  The Atrium Midair Middle is unmapped. The Atrium Midair Middle is blind. The description is "You are perhaps halfway down the atrium now.  You can make out individual people in the crowd of Homeland Security conventioneers below you.  People are coming to the windows all around the atrium now as word of your descent spreads."

The Atrium Midair Bottom is a room with printed name "The Atrium (Midair)".  The Atrium Midair Bottom is down from The Atrium Midair Middle.  The Atrium Midair Bottom is unmapped. The Atrium Midair Bottom is blind. The description is "You are nearly to the bottom.  The crowd below you has seen you, and a few people are pointing up."

The Main Lobby is below the Atrium Midair Bottom.  The Main Lobby is above the Lift Lobby. The Main Lobby is blind. The description is "This is the floor level of the main lobby, at the bottom of the tower atrium."

The Atrium Airspace is a region.  The Atrium Midair Top is in the Atrium Airspace.  The Atrium Midair Middle is in the Atrium Airspace.  The Atrium Midair Bottom is in the Atrium Airspace.

Before going down in the Atrium Airspace:
	now instantiate is true;
	say "You're hanging from a descender.  It is lowering you at a preset rate." instead.

Before going up in the Atrium Airspace:
	now instantiate is true;
	say "You're hanging from a descender.  It is lowering you at a preset rate." instead.

Instead of jumping in the Atrium Airspace:
	now instantiate is true;
	say "You're hanging from a descender.  It is lowering you at a preset rate." instead.

Instead of examining up in the Atrium Airspace:
	now instantiate is true;
	say "The atrium continues upwards for some thirty floors, ending in a ceiling which is mostly obscured by the glare from the various powerful lighting fixtures which provide daylight-quality illumination to the interior space.  The descender cable stretches out above you before disappearing over the edge of the atrium ledge above.";
	rule succeeds.

Instead of examining down in the Atrium Airspace:
	now instantiate is true;
	say "The Main Lobby can be seen below, with the Lift Lobby visible one level below that.  The bouncelift column descends to the Main Lobby, plunging through the floor to terminate in the Lift Lobby.  To one side is a smaller separate bouncelift column which leads to the rooftop semiballistic shuttle pads; there is an entry vestibule for it on the Main Lobby level.  A crowd of people, most seated facing a speaker's podium, occupy the Main Lobby floor. It's a long way down.";
	rule succeeds.
