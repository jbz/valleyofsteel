"Valley of Steel" by The Custodian of http://everything2.com

The release number is 1.
The story creation year is 2012.
The story headline is "A tale of the surveillance society". The story genre is  "Science Fiction". The story description is "Your crusade against the powers that be, see, hear and know".

Chapter 0 - Game Rules And Item Setup

Section 1 - Game Settings and Setup

Use American dialect, no scoring, and VERBOSE room descriptions.

[Use memory economy.]

[Use dynamic memory allocation of at least 16384.]

[Use no deprecated features.]

The carrying capacity of the player is 5.

Time of day is 12:00 PM.

The player is in the Bedroom.

When play begins: 
	add the list of transitStations to Transit System;
	sort Transit System in stationNumber order;
	now newsIndex is a random number from 1 to the number of rows in the Table of Stories;
	repeat with target running through doodles:
		now the graffitiIndex of the target is a random number from 1 to the number of rows in the Table of Graffiti;
	Move the Public Surveillance Notice backdrop to all panopticon rooms;
	boozing starts at 2:00 PM;
	[now Bombs Thrown is 0;]
	say "Welcome to the surveillance society.  Every citizen has been scanned, chipped, folded, spindled and mutilated - and it's enough to make you scream.";



Section 2 - Values, Rules, Definitions, Declarations

[Map corrections]
Index map with Green Commercial Platform mapped southwest of Green Residential Platform.
Index map with Green Service Platform mapped northwest of Green Residential Platform.
Index map with Reserve Bank Station mapped northwest of Green Commercial Platform.
Index map with Top of Service Bouncelift mapped west of Bouncelift Vestibule.
Index map with Bouncelift Vestibule mapped west of Office Corridor.
Index map with Seating Area mapped east of Office Corridor.
Index map with Lift Lobby mapped east of Bottom of Service Bouncelift.

[Extensions]
Include Exit Lister by Gavin Lambert.

[Include Exit Lister by Eric Eve.][This version has 'apparent' for particular room routes but no easy global 'turn off for this location']

Rule for listing exits while the location is unmapped: do nothing instead.

[Editable Stored Actions for the Microwaving rule rewriting 'the noun']
[Include Editable Stored Actions by Ron Newcomb.]

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

[Decision rules]

To decide whether player is eyevalid:
	unless the player is wearing the contact lens, decide no;
	decide yes.
	
To decide whether player is handvalid:
	unless the player is wearing the skin sample, decide no;
	unless the skin sample is valid, decide no;
	decide yes.

To decide whether player surveilled:
	if the location is panopticon, decide yes;
	decide no.
	
To decide whether player is solderable:
	unless the soldering iron is carried, decide no;
	unless the solder is carried, decide no;
	unless the solder is working, decide no;
	decide yes.

To decide whether player is camoflaged:
	if the player is wearing the torn jacket, decide yes;
	decide no.

To decide whether the side panel is hacked:
	unless the side panel contains a klein blaster, decide no;
	if the side panel is fried, decide no;
	decide yes.
	
To decide whether the player is harnessed:
	unless the player is wearing the descender, decide no;
	unless the cable is part of the railing, decide no;
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
	if the location of the Breaching Charge is Drug Den:
		unless the player is carrying the Breaching Charge:
			decide yes;
		otherwise:
			decide no;
	decide no.

To decide whether the player is thieving:	
	repeat with T running through the list of antitheft tags enclosed by the player:
		unless T is inside the thermos:
			unless T is disassembled, decide yes;
	decide no.



[Values and kinds and properties]
An armedState is a kind of value. The armedStates are disarmed, armed, exploding, or inert. 
A suspicionState is a kind of value.  The suspicionStates are clear, suspect, or fugitive.

A person has a suspicionState.  A person is usually clear.

A transitStation is a kind of room. A transitStation has some text called a stationName.  A transitStation has a number called a stationNumber.

[A tool is a kind of thing.  A tool is always portable.]

A room can be panopticon or blind.  A room is usually panopticon.
A room can be gassed or safe.  A room is usually safe.
A room can be mapped or unmapped.  A room is usually mapped.

the newsIndex is a number that varies.
the tempIndex is a number that varies.

the Bombs Thrown is a number that varies.
the Contents is a kind of value.

Things can be either assembled or disassembled.  Things are usually assembled.
Things can be tiny, small, medium, or large (this is its size property).  Things are usually medium.

transitTurn is a number that varies.

Section 3 - 'Every Turn' Rules, Timed Events and Global Rules

[Global rule overrides]

the block giving rule is not listed in the check giving it to rules.
	
To decide whether (item - a thing) interests (character - a person):
	if the character has the item, no;
	if the character is Ponyfriend Chunky and the item is the phone, yes;
	no.

Check giving (this is the polite refusal of unwanted objects rule):
	unless the noun interests the second noun:
		if the second noun is Ponyfriend Chunky, say "Ponyfriend shakes his head violently and pushes [the noun] back to you." instead;
		if the second noun is Officer Prescott, say "Officer Prescott shakes his head and narrows his eyes at you, refusing [the noun]." instead;
		if the second noun is Sergeant Ramirez, say "The Sergeant draws back and looks at you suspiciously." instead;
		if the second noun is the shopper, say "The shopper avoids eye contact and scuttles past you." instead;
		if the second noun is the shopkeeper, say "She holds her hands up to ward you off, gives you a quick glare, and moves away." instead;
		otherwise say "[the second noun] doesn't seem interested in that at all." instead;
	continue the action.


[
Report taking an object (called the noun):
	if action fails, say "You leave [the noun] where it is." instead.
]

[Zero-time actions]
Examining something is acting instant. Looking is acting instant.  Taking inventory is acting instant. Taking is acting instant.

The take visual actions out of world rule is listed before the every turn stage rule in the turn sequence rules.
This is the take visual actions out of world rule: if acting instant, rule succeeds.


[Every turn rules]
Every turn:
	 if the suspicionState of the player is fugitive:
		if player surveilled:
			unless the location is gassed:
				say "Police, having spotted you, swarm into the area! You are tackled and handcuffed before you can react![line break]";
				end the story saying "You have been arrested.";
[	if the player is suspect:
		if player surveilled:
			say "You hunch down into your collar at the thought of the police observing you."
]

Every turn:
	if the player is wearing the Gas Mask:
		if player surveilled:
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
	if player surveilled:
		if the player is carrying the knife:
			say "Police surveillance spots you openly carrying your knife, which is classified as a weapon.  Police rush in!";
			end the story saying "You have been arrested!".

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
			otherwise if the Breaching Charge is in an adjacent room:
				say "There is a loud [bold type]BOOM[roman type] from nearby! The floor shakes.";
				remove the Breaching Charge from play;
			otherwise:
				say "There is an explosion from some distance off![line break]";
				remove the Breaching Charge from play;
		otherwise if the activeMunition is the Tear Gas grenade:
			if the location of the Tear Gas grenade is the location:
				say "With a bang and an enormous hiss, the gas grenade goes off and fills the area with a cloud of opaque smoke and tear gas!";
			now the location of the Tear Gas grenade is gassed;
			[now the location of the Tear Gas grenade is blind;]
			The tear gas dissipates in 4 turns from now;
			remove the Tear Gas grenade from play;

At the time when the tear gas dissipates:
	if the location is gassed:
		say "The gas clears and a crowd of police rushes into the area, grabbing everyone they can see!";
		end the story saying "You have been arrested!";
	otherwise:
		repeat with gasSpot running through gassed rooms:
			now gasSpot is safe.		
		

At the time when the player incriminates:
	say "You're pretty sure the police saw you do that.  They'll be looking for you now.";
	now the suspicionState of the player is fugitive.
	

At the time when autodoors close:
	repeat with door running through open autodoors:
		say "The automatic door slides closed.";
		now the door is closed.
		
After looking when player surveilled, say "There is a Public Surveillance Notice here."


[Roberto's movement rules]
At the time when boozing starts:
	if Roberto Velez is off-stage:
		if the location is The Proletariat Bar:
			say "The door opens.  [if Roberto Velez is unknown]A medium man in a blue trade uniform[otherwise] Roberto Velez[end if] comes in, orders a beer and sits down at a table.";
		move Roberto Velez to The Proletariat Bar;
		snoozing starts at 8:00 PM.
		
At the time when snoozing starts:
	if Roberto Velez is in The Proletariat Bar:
		if the location is The Proletariat Bar:
			say "Roberto stands up, stretches, pays his bill and ambles out.";
		remove Roberto Velez from play;
		boozing starts at 2:00 PM.


Section 4 - Test Code - Not for release


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
	say "The capsule is presently [the station of the Capsule]. | The current Transit System is: [Transit System]."

Entraining is an action applying to nothing.
Understand "entraining" as entraining.
Report entraining:
	say "The list of entrained rooms is [list of entrained rooms]."


Copping is an action applying to nothing.
Understand "copme" as copping.

Carry out copping:  
	move Officer Prescott to the location.
	
Report copping:
	say "Officer Prescott appears, looking confused!"


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
A newspaper is a kind of thing.  Instead of examining a newspaper:
	say "Today[apostrophe]s front-page headline is: [bold type]Homeland Security convention to be held this week at the Reserve Bank Spacescraper[roman type].   'The best and the brightest of the various Homeland Security agencies will meet in the Reserve Bank Atrium this week to receive presentations on new security initiatives and to discuss the state of the art in security technology.'[paragraph break]The next headline reads: [bold type][headline in row newsIndex of the Table of Stories][roman type][line break]The story itself continues: '[newsstory in row newsIndex of the Table of Stories]' At the bottom, a small postscript reads [bold type]Would you like to know more?[roman type]  [url in row newsIndex of the Table of Stories]  [paragraph break]The thought of all those Homeland Security drones in one place makes you grind your teeth.  Then, however, a vision of all those heavily-secured workers with dead MitKlein bottles replaces it, and you have some difficulty wiping the resulting smile from your face.  If only..."

Understand "paper" as the newspaper.

An ID bomb is a kind of explosive. An ID bomb has a timer 1.  An ID bomb can be working or fried.  An ID bomb is usually working. An ID bomb has some text called item-id.  An ID bomb always has item-id "M5". An ID bomb has some text called fryDescription.  The fryDescription of an ID bomb is usually "There is a series of bright sparking flashes and a puff of smoke as the ID bomb begins to melt![line break]".  The description is "A small ID bomb with a single button. [if disarmed]The arming LED is dark.[else if armed]The arming LED is blinking green at shortening intervals![else if inert]The ID bomb is now a chunk of burnt and useless circuitry.[end if]". 

After dropping an id bomb:
	if the player surveilled:
		the player incriminates in 1 turn from now.

A memory chip is a kind of component.  A memory chip is usually portable.  A memory chip is tiny. A memory chip can be either blank or programmed.  A memory chip is usually blank. A memory chip usually has item-id "M0". A memory chip has some text called Contents. The Contents of a memory chip is usually "blank". A memory chip can be working or fried.  A memory chip is usually working. A memory chip has some text called fryDescription.  The fryDescription of a memory chip is usually "There is a sizzling noise. The chip is now scorched and smoking slightly." The description of a memory chip is "This is a standard Memory chip- a small solid-state data storage device about the size of a coin.  Data can be stored to a Memory chip by most electronic devices and computers.[if fried]  This chip is blackened and scorched; the magic smoke appears to have been released.[otherwise if programmed]   This memory chip has been programmed with the payload of a Klein-blaster virus.  If there was a way to transmit this payload to nearby MitKlein encapsulations, you'd really have something powerful."
Understand the programmed property as describing a memory chip.

A broadcast chip is a kind of component.  A broadcast chip is usually portable.  A broadcast chip can be working or fried. A broadcast chip is usually working. A broadcast chip always has item-id "M1". A broadcast chip has some text called fryDescription.  The fryDescription of a broadcast chip is usually "There is a sizzling noise. The chip is now scorched and smoking slightly." A broadcast chip is tiny.  The description of a broadcast chip is "This is a broadcast chip - a small solid-state radio about the size of a coin.  These can be found in most portable electronics these days.  Usually powered by small batteries in phones or car keys, these generally have a range of a few meters.  There are leads on the chip for connecting a data source and a power source.[if fried]  This chip is blackened and scorched; the magic smoke appears to have been released."

An antitheft tag is a kind of container.  An antitheft tag is portable.  An antitheft tag is usually closed and assembled. An antitheft tag can be working or fried.  An antitheft tag is usually working. An antitheft tag has some text called fryDescription.  The fryDescription of an antitheft tag is usually "There is a hissing noise. The plastic of the antitheft tag begins to melt." An antitheft tag is always small. An antitheft tag has a carrying capacity 1. A memory chip is in every antitheft tag. The description of an antitheft tag is "This is a small, nondescript black plastic tag, perhaps a centimeter thick and four by four centimeters square, with a security loop for attaching it to products.[if disassembled]  This tag has been pried open.[otherwise if fried] The tag has melted slightly.  Inside you can see what looks like the remains of some electronics, but the whole mess is melted together now."

An antitheft tag is part of every garment.

Rule for printing room description details of an antitheft tag: stop.

Instead of opening an antitheft tag:
	if the noun is fried, say "There's nothing to open. This tag has been melted into a single mass." instead;
	if the noun is disassembled, say "That's already been opened." instead;
	unless the player is carrying the knife, say "You don't have anything to open it with." instead;
	say "You cut open the antitheft tag with your knife.";
	now the noun is disassembled;
	now the noun is openable;
	now the noun is open.

Check inserting into an antitheft tag:
	Unless the second noun is tiny, say "That won't fit!" instead.

Instead of closing an antitheft tag:
	if the noun is closed:
		say "That's not something you can close." instead;
	otherwise:
		say "The damage looks permanent." instead.
		
Check taking an antitheft tag:
	if the noun is part of a garment, say "What do you want to remove that with?" instead.

Check cutting an antitheft tag:
	if the noun is part of a garment, say "What do you want to cut that off with?" instead;
	unless the player is carrying the knife, say "You don't have anything to cut that with." instead;
	try opening the noun instead.
	

A Klein Blaster is a kind of component.  A Klein Blaster is portable.  A Klein Blaster is tiny. A Klein Blaster can be working or fried.  A Klein Blaster is usually working.  A Klein Blaster always has item-id "M3". The description of a Klein Blaster is "A combination of a Broadcast chip and a Memory chip which has been programmed with the Kleinhacking signal.  It needs a power source to perform its task."


A disposable camera is a kind of component. A disposable camera can be assembled or disassembled.  A disposable camera can be working or fried.  A disposable camera is usually assembled.  A disposable camera is usually working.  A disposable camera always has item-id "M4". A disposable camera has some text called the Contents.  The Contents of a disposable camera is usually "blank". The description of a disposable camera is "A cheap piece of integral electronics, made cheaper by the fact that any portable or phone has a perfectly good camera in it.  It offers a timer and a built-in flash."



[objects - specific]

[player/people]
The MitKlein is part of the player.  The MitKlein is scenery. The MitKlein can be hacked or unhacked.  The MitKlein is unhacked.

Instead of examining the MitKlein, say "You can't see any such thing." instead.

[props]
The backpack is a player's holdall. The backpack is wearable. The player is wearing the backpack. The backpack is a container.  It is open. The description is "A black rip-stop backpack which you normally use for toting tools and books."
Understand "pack" as the backpack.

The receive chip is a component.  The receive chip is in the pager.  The receive chip can be working or fried.  The receive chip is working.  The receive chip has some text called fryDescription.  The fryDescription of the receive chip is "There is a sizzling noise. The chip is now scorched and smoking slightly."  The receive chip is tiny.  The description of the receive chip is "This is a receive chip - a small solid-state radio about the size of a coin.  These can be found in most portable electronics that need to receive distant broadcasts, able to pull in signals from beyond a few meters.  There are leads on the chip for connecting data lines and a power source.[if fried] This chip is blackened and schorced; the magic smoke appears to have been released."

The Tear Gas grenade is in the police flitter. The Tear Gas grenade is an explosive.  The Tear Gas grenade has a timer 1.  The Tear Gas grenade can be working or fried.  The Tear Gas grenade is working.  The description of the Tear Gas grenade is "A small canister roughly the side of a soda can with a tab on one end.  Stenciled text reads 'M7A4 RIOT - SMOKE/CS'." [TESTING][LOCATION]

The Gas Mask is on the wall rack.  The Gas Mask is wearable.  The description of the Gas Mask is "This is an industrial breath mask meant to protect the wearer against fumes from solvents or other dangerous chemicals.  A clear mask covers the entirety of the face, and a filter canister covers the mouth for breathing." 

There is a blue jacket on the racks.  The blue jacket is a jacket. The description is "A dark blue jacket, very bland cut.  You almost expect to see a name sewn on the front at the breast in gold thread.  It's probably three sizes too large for you."

There is a red jacket on the racks.  The red jacket is a jacket. The description is "This jacket is a wine red sports coat.  You had thought this style vanished in the 1970s, but here it is.  It is several sizes too small for you."

There is a white shirt on the racks.  The white shirt is a shirt. The description is "A white button-down shirt, almost ironically formal."

There is a green shirt on the racks.  The green shirt is a shirt. The description is "Hunter green, this pullover is probably the only thing Garb-oh sells that you'd be caught wearing."

There is a blue pair of pants on the racks.  The blue pair of pants is a pair of pants. The description is "Dark blue formal trousers.  Not your thing at all, and look uncomfortable."

There is a brown pair of pants on the racks. The brown pair of pants is a pair of pants. The description is "Brown dungarees are never really in style, ergo they can't ever really be out of style either."  

The Breaching Charge is an explosive.  The Breaching Charge has a timer 4.  The description of the Breaching Charge is "[if disarmed]A gray-green brick of blasting plastic, soft and slightly tacky.  There is a detonator integrated into one side of the brick; an arming tab extends out, waiting to be pulled.[otherwise]A menacing-looking block of blasting plastic.  The detonater is hissing slightly.  The arming tab has been pulled."
The Breaching Charge is in the Drug Den.

The Fire Axe is on the wall rack.  The description is "Made of metal and painted red save for the blade, this one-piece tool is for emergency use by safety personnel."
Instead of inserting the Fire Axe into the backpack, say "The axe is far too large to fit in there."

The fire extinguisher is in the Bouncelift Vestibule.  The fire extinguisher is portable.  The fire extinguisher can be working or fried.  The fire extinguisher is working. The description is "A large, heavy metal cylinder with fire safety instructions written on it which read 'POINT AT FIRE.  PULL PIN.'"
Instead of inserting the fire extinguisher into the backpack, say "The extinguisher is far too large to fit in there."
[BFR: Handle using the Fire Extinguisher!]

The multitool is on the workbench.  The description is "Your pocket multitool.  Has various pliers, blades and attachments and, in a pinch, can probably do 80 percent of what a full toolbox could.  You are paranoid that one day you'll forget and try to get on an airplane with it and that'll be the last you'll see of it, so you've etched your name, address and 'BUSINESS REPLY MAIL' onto it."
Understand "tool" as the multitool.

The watch is wearable.  The watch is on the bedside table. The watch can be working or fried.  The watch is working.  The watch has some text called fryDescription.  The fryDescription is "The watch sparks slightly and the face darkens." The description of the watch is "A cheap digital, your watch [if working]reads [time of day].[otherwise]appears to be dead."

Understand "put on" as wearing.

Carry out wearing the watch:
	if the watch is working:
		 now the left hand status line is "Time: [time of day] / [location]";
		continue the action.
	
Carry out taking off the watch:
	now the left hand status line is "[location]";
	continue the action.

[cell phone]
The phone is on the bedside table.  The phone is portable.  The phone is small.  The description of the phone is "Your cell phone was a standard candybar model with a nice screen.  'Was' because apparently, in your paranoia-fueled hacking binge, you must have decided it was too easy for the government to spy on you through it, and done something about that.  Now it's dead.  The screen is black.[if ponyfriend chunky encloses the phone]  Ponyfriend Chunky has it now, and seems to be tapping energetically at the dead screen."

Check opening the phone:
	say "It's a sealed unit." instead.

Check cutting the phone:
	say "It's quite hard and slick.  You'd just hurt yourself." instead.
	
Check switching on the phone:
	say "It's stone dead." instead.
	

[pager]
The pager is a container.  The pager is closed.  The pager is small. The pager is openable.  The description of the pager is "It looks like a pretty old-school radio pager.  It also looks like it isn't working; the display is fogged over, there are no lights on it, and one of the two buttons on the front is missing.[if closed] There is a small sliding panel on the back, possibly for a battery.[otherwise]  A small sliding compartment on the back is open."

Check inserting into the pager:
	unless the noun is the receive chip, say "That won't go in there." instead.

Check switching on the pager:
	say "It's stone dead." instead.
	
Check cutting the pager:
	say "It's fairly slick.  You'd just hurt yourself." instead.
	
Before opening the pager:
	unless the player is carrying the pager, try silently taking the pager;
	unless the player is carrying the pager, stop the action.


The cryopack is a container.   The cryopack is in the Hospital Lab.  The cryopack has carrying capacity 1.  The cryopack is openable. The cryopack is closed.  The cryopack can be either operating or dead.  The cryopack is operating. The description of the cryopack is "This is a roughly fist-sized container, white with red crosses and an instructions sticker with WARNING! printed at the top.  [if operating]It feels slightly cold to the touch.  A green LED labelled 'OPERATING' is lit.[otherwise]A red LED labelled 'INACTIVE' is lit."

After opening the cryopack: 
	if the cryopack is operating:
		now the cryopack is dead.

The warning sticker is part of the cryopack. The warning sticker is scenery.  The description of the warning sticker is "WARNING: This is a single-use cryogenic transport pack.  Opening the cryopack will disrupt the superconductor charge and disable the cryopack until it is recharged for its next use."
Understand "instructions sticker" as the warning sticker while the cryopack is visible.
Understand "instructions" as the warning sticker while the cryopack is visible.

The skin sample is a biosample.  The skin sample is wearable.  The skin sample can be valid or invalid. The skin sample is invalid. The skin sample can be frozen, warm, slightly green or decomposing (this is its freshness property). The skin sample is frozen. The description of the skin sample is "Disgusting - but also kind of neat.  This is a small [freshness] oblong of human skin, perhaps four by eight centimeters.  One side is clearly the 'outside' - folds and wrinkles are visible.  The other side is rough and appears to contain cauterized blood vessels."
Before wearing the skin sample, say "Fortunately it's sticky enough to adhere to your palm."

The biogen feedstock is a biosample.  The description of the biogen feedstock is "This is a small cube of material which resembles freeze-dried beef.  It is a standard supply unit for biotech synthesizers."

The lens case is a container.  The lens case is in the delivery slot. The lens case has carrying capacity 1. The lens case is openable.  The lens case is closed and transparent.  The description of the lens case is "A small clear plastic cylinder, full of preservative liquid."

Check inserting into the lens case:
	unless the noun is the contact lens, say "That won't go in there!" instead;
	continue the action.	

The contact lens is wearable. The contact lens is tiny. The description of the contact lens is "Larger than a regular contact lens, this example is discolored around the edges although clear in the middle."
Instead of examining the contact lens when the player is wearing the contact lens, say "While it's in your eye?  That'd be a neat trick!"
Instead of dropping the contact lens:
	say "Oh, no! The contact lens slips from your fingers and flutters away![line break]";
	remove the contact lens from play.
	
The tissue sampler is in the ambulance.  The tissue sampler is portable.  The tissue sampler has some text called tissueDonor.  The tissueDonor is "blank". The description is "This is a tissue sampler, used by hospital and emergency medical technicians for scanning skin or tissue in order to permit a tissue generator to produce compatible skin grafts. It is flat and translucent, and is intended to be laid against the skin to be replicated."

The coffee is in the refrigerator.  The coffee is a thing.  The coffee is edible. The coffee is portable.  The coffee can be either hot or cold.  The coffee is cold.  The coffee has some text called the cookDescription.  The cookDescription is "Steam begins to rise from the coffee."  The description is "The remains of your morning coffee in a convenient takeaway cup.[if cold]  It's cold.  Nothing worse than cold coffee.[otherwise]  It is just shy of too hot.  Perfect."

Instead of drinking the coffee:
	unless the coffee is hot, say "Ugh.  Cold coffee is undrinkable." instead;
	remove the coffee from play;
	say "You drain the life-giving caffeine suspension, crumpling and throwing away the empty cup.  Ahhhhh."

The thermos is a container.  The thermos is in the Kitchen.  The thermos is openable and closed.  The thermos is portable.  The thermos has carrying capacity The description is "A stainless steel vacuum flask, this all-metal thermos excels at keeping hot things hot."

The flitterkey is a thing.  The flitterkey can be either working or fried.  The flitterkey is working.  The flitterkey has some text called fryDescription.  The fryDescription is "With a slight hissing noise, the ballistic plastic of the flitter key begins to melt."  The description is "the flitterkey is a scuffed, hardened ballistic plastic transponder.[if fried] It looks like it has been partially melted; scorched electronics poke through the uneven plastic shell."

The car key is a container.  The car key is unopenable. The car key is closed.  The car key has carrying capacity 2.  The car key can be either working or fried.  The car key is working. The car key has some text called fryDescription.  The fryDescription is "With a slight hissing noise, the rubberized plastic of the car key begins to melt." The description is "The 'key' is really a small rubberized, sealed plastic transponder which automatically unlocks the car when you're near it.  It won't do much of anything at the moment, however, since your car has been in the shop for three days.[if fried]  It may not do anything ever again, in fact; it looks like it has melted slightly.  Some electronic bits can be seen in the mass of deformed plastic.[otherwise if open] The plastic has been cut away from one end of the key, revealing two component slots."

[car key rules]
Rule for printing room description details of the closed car key: stop.

In the car key is a broadcast chip.
In the car key is a memory chip.

Understand "cut [something] with [something]" as cutting it with.

Carry out cutting the car key with something:
	if the noun is fried, say "The key is melted into a single mass." instead;
	if the noun is disassembled, say "That's already been opened." instead;
	if the second noun is the knife:
		say "You carefully cut open the car keys with your knife and peel back the rubber to reveal [a list of things in car key].";
		now the noun is disassembled;
		now the noun is openable;
		now the noun is open;
	otherwise:
		say "What do you want to cut it with?" instead.		

instead of cutting the car key:
	say "What do you want to cut it with?" instead.

Check inserting into the car key:
	Unless the noun is tiny, say "That won't fit!" instead.

Instead of closing the car key:
	if the noun is closed:
		say "That's not something you can close." instead;
	otherwise:
		say "The plastic appears to be cut away. The damage looks permanent." instead.

Instead of unlocking the car key with the knife:
	try cutting the car key with the knife instead;
	continue the action.

The ID camera is a thing. The ID camera is in Booking.  The ID camera is fixed in place.  The ID camera can be either blank or programmed.  The ID camera is blank.  The ID camera has some text called Contents.  The Contents of the ID camera is usually "blank". The description is "A battered but serviceable device, this camera is used for recording the identity of suspects brought in.  It is high resolution, but has only onboard memory for a single hi-res hologram[if the ID camera is fixed in place] (which isn't used at the moment as the camera is recording directly to the station's systems.) It is securely chained down to the countertop to prevent anyone from walking off with it.[otherwise]. Although it was once chained down, the chain seems to have been cut; a broken piece hangs off the camera."
The camera chain is part of the ID camera.

Understand "the chain" as the camera chain.

Check cutting the camera chain:
	if the second noun is the tag remover or the player is carrying the tag remover:
		say "Looking around quickly, you snip through the ID chain with the tag remover!";
		now the ID camera is portable instead;
		
Check taking the ID camera:
	if the ID camera is fixed in place:
		say "The camera is chained down securely." instead;
	otherwise:
		continue the action.


The tag remover is in the sales drawer.  The tag remover is a thing.  The description is "This is a combination antitheft tag remover and wirecutter, useful for removing antitheft tags or pesky labels from products."

The knife is on the workbench.  The knife is a thing. The printed name of the knife is "lockblade knife".  The description is "This is a battered but extremely sharp folding lockblade knife.  You've had it for years.  It's a wonder you haven't lost it to the TSA yet."

After taking the knife for the first time:
	say "This knife is large enough to run afoul of local weapons laws.  It would be a bad idea to let it be seen where the police are watching."

Check opening the knife:
	say "You flip the blade open and stare at it for a few seconds, mesmerized by the clean steel, before closing it since you don't have a task for it right now." instead;

The soldering iron is a device.  The soldering iron is on the workbench. The soldering iron is portable.  The soldering iron is switched off.  The description is "Your portable soldering iron.  It uses a sealed battery rather than requiring a power connection.[if switched on]  An LED on it is lit red, and the tip is quite hot."

Before inserting the soldering iron into:
	if the soldering iron is switched on, say "That's dangerous.  You might want to switch the soldering iron off first." instead.

The solder is a thing. The solder is on the workbench.  The indefinite article is "some".  The solder can be either working or fried. The solder is working. The solder has some text called the fryDescription.  The fryDescription of the solder is "With an audible bubbling hiss, the solder melts into a puddle."  The description is "[if working]A small spool of resin-cored solder.[otherwise]A melted pool of useless solder."

[laptop]
The laptop is on the workbench.  The laptop is medium.   The description is "Your laptop is a fairly powerful one.  You've spent a good deal of time and energy outfitting it with as many anti-surveillance tools as you could get your hands on.  Apparently you left it on after your epic caffeine-fueled hacking spree last night; the screen contains a downloaded file.  Just below the screen, the chipslot download light is blinking green, indicating it is ready to save.[unless the chipslot is empty] There is a chip in the chipslot."
The screen is part of the laptop.  The screen is scenery.  The description is "You read the screen with slightly bleary eyes.  Apparently, you managed to locate what you've been looking for for months- a file which claims to be a binary payload which, if broadcast into a person's Mitsui-Klein Encapsulation, can wipe the MitKlein entirely!  Since the MitKlein is inserted at infancy, wiping a person's MitKlein would mean making them very difficult to track in a surveillance society overrun with chip scanners!"
The chipslot is part of the laptop.  The chipslot is a container.  The chipslot is scenery. The chipslot is open.  The chipslot has carrying capacity 1.  The description is "The chipslot is used for external storage.  Right now, its status LED is blinking, indicating that it has been set to autosave data [if empty]but no storage is available.[otherwise] to the Memory chip in the slot."

Understand "download slot" as the chipslot.
Understand "slot" as the chipslot when the location is the location of the laptop.
Understand "file" as the screen.

Instead of inserting into the laptop:
	try inserting the noun into the chipslot instead.

Check inserting into the chipslot:
	unless the noun is a memory chip, say "That won't go in there." instead.
	
After inserting into the chipslot:
	say "The Download light flashes red intermittently for a few seconds before returning to a regular blinking green.";
	now the item-id of the noun is "M2";
	now the Contents of the noun is "The Signal";
	now the printed name of the noun is "programmed memory chip";
	now the noun is programmed.


The harness is a component.  The harness is in the Police Flitter. The item-id of the harness is "M7". The harness is wearable.  The description of the harness is "A strong harness made of black industrial strapping.  It has an attach point in the center of the back - a set of what appear to be metal locking hooks.  It fastens with sturdy plastic buckles.  It is probably used as a safety harness."

The spool is a component.  The spool is on the Powered Platform. The item-id of the spool is "M6". The spool is medium.  The description of the spool is "A metal spool of what appears to be very strong cable, it seems to have a winding mechanism at its center.  The mechanism is locked.  There is a carabiner at the end of the cable, but it's locked into the spool.[if the spool is enclosed by the powered platform]  It is attached to the platform's winch frame with several locking clamps."

The descender is a thing.  The descender is in limbo. The descender is wearable. The descender has some text called item-id.  The item-id of the descender is "M8". The description of the descender is "This is a small but strong-looking harness meant to be worn around the torso.  A large spool of narrow but strong-looking cable is attached to it, ending in a spliced loop.[if the player is wearing the descender]  It's currently around your midsection, and is a bit tight."
The cable is a part of the descender.  The cable can be tied or untied.  The description is "A spool of extremely strong cable attached to the descender with a spliced-in carabiner at the end.[if tied]  One end of the cable is looped around the balcony rail and attached with the carabiner."

Before tying the cable to something:
	unless the second noun is the railing:
		say "You can't tie the cable to that." instead.

Instead of tying the cable to the railing:
	now the cable is part of the railing;
	say "You pass the cable spool around the railing and through the splice loop at the end and pull it tight, firmly attaching the cable to the railing.";
	now the cable is tied. 
			


Section 6 - Fixed/Scenery Objects

[kinds]
An autodoor is a kind of door. An autodoor is always scenery. The description of an autodoor is "This is an automatic sliding door.  It is connected to an Eye Scanner and will determine if you are allowed passage by scanning your iris pattern as you approach. The door is presently [if the noun is open]open.[otherwise]closed."
Understand "autodoor" as a door.
Before going through an autodoor, the autodoors close in zero turns from now.

An Eye Scanner is a kind of thing. An Eye Scanner is part of every autodoor. An Eye Scanner is scenery. The description of the Eye Scanner is "Above and to the right of each automated door is a Door Scanner. These spherical devices have a glass plane inset in the side facing you, and an eerie red light flickers deep inside each as it waits for you to present a recognizable iris to the scanning laser within.  Until you do so, the door controlled by the scanner will remain closed."
Understand "the scanner" as an Eye Scanner.

The Public Surveillance Notice is a backdrop.  The description of A Public Surveillance Notice is "A mounted sign which reads: PUBLIC SURVEILLANCE AREA.  ALL ACTIVITY MONITORED FOR HOMELAND SECURITY."

Instead of taking the Public Surveillance Notice, say "That's firmly mounted in place, by law."

[trash cans]
A trash can is a kind of container.  A trash can is fixed in place.  A trash can is openable. A trash can is usually closed.  A trash can is usually assembled. The description of a trash can is "Painted industrial dark green, the [location] trash can awaits its daily diet of rubbish.  There is a solar panel on it; presumably it reports back to a central system when it is full.[if the solar panel is disassembled]  The solar panel on the can lid has been pried back, and an empty slot is visible.  Vandals!"
A rubbish is a kind of thing.  A rubbish is fixed in place.  A rubbish is in every trash can.  The indefinite article is "some". The description of a rubbish is "All you'd expect from a cheap public trash can."
Instead of taking the rubbish, say "It's too disgusting to touch."
A solar panel is a kind of container.  A solar panel is always scenery.  A solar panel is part of every trash can.  A solar panel is usually closed and assembled.  A solar panel has carrying capacity 1.  A broadcast chip is in every solar panel. The description is "A small (8x8cm) solar panel, apparently powering some unit embedded in the trash can."

Instead of opening a solar panel:
	if the noun is disassembled, say "That's already been opened." instead;
	unless the player is carrying the multitool, say "You don't have anything to open it with." instead;
	say "You pry open the solar panel with the multitool, ignoring the cracking sounds.";
	now the noun is disassembled;
	now the noun is openable;
	now the noun is not scenery;
	now the noun is open;
	if the player surveilled:
		unless the location is gassed:
			the player incriminates in 1 turn from now.

Check inserting into a solar panel:
	Unless the noun is tiny, say "That won't fit!" instead.

Instead of closing a solar panel:
	if the noun is closed:
		say "That's not something you can close." instead;
	otherwise:
		say "The panel is bent. The damage looks permanent." instead.

[mirrors]
A mirror is a kind of thing.  A mirror is always scenery.

A doodle is a kind of thing. A doodle is part of every mirror.  A doodle is always scenery.  A doodle has a number called the graffitiIndex.

Understand "graffiti" as a doodle.
Understand "graffito" as a doodle.
Instead of examining a doodle:
	now the tempIndex is the graffitiIndex of the noun;
	say "This small graffito is [image in row tempIndex of the Table of Graffiti] Just below it is a URL: [bold type][URL in row tempIndex of the Table of Graffiti][roman type]"

[plaques]
A Plaque is a kind of thing.  Plaques are always scenery.  A plaque is in every transitStation. The description of a plaque is "Metal, perhaps a meter by five meters, the plaque reads '[bold type][the stationName of the location][roman type]' in standard Transit Helvetica font."
Instead of taking a Plaque, say "You're here for a far nobler purpose than mere Transit vandalism."
Instead of taking a Plaque for the fourth time:
	say "The cops can see you messing with the plaque via their surveillance systems, and they don't think you should be vandalizing the Transit system.  They arrive en masse and grab you to take you away for processing, where they'll discover what you've done to your Mit-Klein Bottle - and that'll get you Readjusted.";
	end the story saying "You have been arrested."
	
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

One activate button is part of every device.


[Specific objects]

The mailbox is a container.  The mailbox is fixed in place.  The mailbox is openable. The mailbox is closed.  The description is "Postal Service standard mailbox.  Yours will open to your fingerprint."
Instead of opening the mailbox:
	say "You touch your finger to the lockplate, and the mailbox swings open.";
	now the noun is open.


The refrigerator is a container. The refrigerator is in the Kitchen.  The refrigerator is fixed in place.  The refrigerator is openable and closed.  The description is "Standard off-white home antiheating unit."
Understand "fridge" as the refrigerator.

Check inserting into the refrigerator:
	if the noun is the coffee:
		now the noun is cold;
	continue the action.


[microwave]
The microwave oven is a container.  The microwave oven is in the Kitchen.  The microwave oven is transparent and fixed in place.  The microwave oven is openable and closed.  The microwave oven can be working or fried.  The microwave oven is working. The carrying capacity of the microwave oven is 1. The description is "A microwave oven of perhaps a cubic foot capacity.  It is a relatively smart oven, able to determine the proper setting for whatever is placed in it using a plethora of sensors.  There is a single button (marked 'ON') on the front. A side panel sports a lurid warning.[if the side panel is open]  The service panel is bent open on the side."

The side panel is part of the microwave oven.  The side panel is a container.  The side panel can be working or fried.  The side panel is working. The side panel has carrying capacity 1. The side panel is closed.  The side panel is scenery.  The description of the side panel is "A label on the side panel reads NO USER SERVICEABLE PARTS INSIDE.  There is a warning icon of a small stick figure being electrocuted, irradiated and (as far as you can tell) being stung by bees after opening the panel.[if open]  The panel has been pried open. The magnetron is just visible here, right next to some circuitry.  The panel has room for perhaps a couple of small components inside it.  It's possible the circuit board controlling the magnetron in this microwave was designed for something else.[otherwise if fried]  The side panel is scorched and the innards melted.  Apparently the magnetron overloaded something.[end if][if the side panel is hacked]  The panel has been pried open.  The magnetron is just visible here, with a Klein Blaster wired in next to it.  A small LED (labelled TRNSMT RDY) is lit!"

Understand "warning" as the side panel when the location is the kitchen.
Understand "label" as the side panel when the location is the kitchen.
Understand "magnetron" as the side panel.
Understand "circuit" as the side panel when the location is the kitchen.

The cook button is part of the microwave oven.  The cook button is scenery.  The description is "The only control on the microwave, this button reads 'GO' in bold letters."
	
Instead of opening the side panel:
	if the noun is open, say "That's already been opened." instead;
	if the noun is fried, say "It's closed, and looks melted." instead;
	unless the player is carrying the multitool, say "You don't have anything to open it with." instead;
	say "You pry open the side panel with the multitool, ignoring the sound of breaking plastic.";
	now the noun is disassembled;
	now the noun is openable;
	now the noun is not scenery;
	now the noun is open.

Check inserting into the side panel:
	unless the noun is tiny, say "That won't fit!" instead;
	if the noun is a broadcast chip, say "There aren't enough connections on the broadcast chip to fill the space in the board." instead;
	if the noun is a memory chip, say "There aren't enough connections on the memory chip to fill the space in the board." instead;
	unless the noun is a Klein Blaster, say "The space has connections for electronics.  [The noun] doesn't have the proper connections." instead.

Before searching the side panel:
	say "The side panel shows one side of the oven's magnetron as well as part of a circuit board with several connections on it.[if the side panel is hacked]  A Klein Blaster has been wired into place here.";
	continue the action.

After inserting into the side panel:
	say "You insert the Klein Blaster into the side panel and wire it to the magnetron.";
	if the side panel is hacked, say "As you slide the component in, a small LED labelled 'TRNSMT RDY' lights up on the board!"

Instead of closing the side panel:
	if the noun is closed:
		say "That's not something you can close." instead;
	otherwise:
		say "The panel is bent. The damage looks permanent." instead.

Instead of pushing the cook button:
	if the microwave is open:
		unless the side panel is hacked:
			say "The oven won't work unless it is closed." instead;
		otherwise:
			carry out the KleinHacking activity with the MitKlein instead;
	unless the microwave is empty:
		let L be the list of objects inside the microwave oven;
		carry out the cooking activity with entry 1 of L;
	otherwise:
		say "There's nothing in the microwave.  Sensors prevent it from running empty; it's dangerous." instead.

Understand "go button" as the cook button.
Understand "microwave button" as the cook button.
Understand "oven button" as the cook button.

[Tissue Generator] [SEE Docs 4.14/Ex. 55!]
The tissue generator is a device. The tissue generator is in the Emergency Room.  The tissue generator is fixed in place.  The description of the tissue generator is "This is a medium-sized appliance found in most modern hospitals.  It is used to provide artificial tissue for grafting into or onto injuries.  In order to prevent rejection, the tissue generator must be given a complete scan of the patient's tissue, from which it will (by default) produce an exact duplicate of the scanned sample.  It has a button marked ACTIVATE. There is a large opening on the front of the machine labeled 'INSERT CRYOPACK' where, presumably, the generated tissue is delivered; there is a smaller opening labeled 'FEEDSTOCK' and there is a slot labeled 'SAMPLE' where a tissue sampler can be inserted.[unless the feed slot is empty]  The feed slot contains [list of objects in the feed slot]."

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
The Lens Crafter is in Accessorize.  The Lens Crafter is a device.  The Lens Crafter is fixed in place.  The Lens Crafter can be working or fried. The lens crafter is working. The description is "A floor-standing device used to produce custom-made cosmetic contact lenses (although for an extra fee, they can be made to a prescription).  A screen on the front presents a menu of options, or a Memory can be inserted into a slot with appropriate specifications."
The Lens Menu is part of the Lens Crafter.  The Lens Menu is scenery.  The description is "The menu screen, locked,  displays a password prompt. You don't have the password."
The delivery slot is a container.  The delivery slot is part of the Lens Crafter.  The delivery slot is open.  The delivery slot is not openable.  The description of the delivery slot is "A slot where the lens crafter delivers its product.  It is shaped to accept a standard lens case."

Check inserting into the delivery slot:
	unless the noun is the lens case, say "That won't fit." instead;
	unless the noun is open, say "The lens case must be open to fit in the delivery slot."

Instead of switching on the lens crafter:
	if the lens crafter is fried, say "The screen flashes red.  A message reads 'INSUFFICIENT STOCK.'" instead;
	unless the lens case is in the delivery slot, say "The lens crafter machine's screen flashes red.  A message reads 'NO DELIVERY CONTAINER AVAILABLE." instead;
	unless the location of the ID camera is Accessorize, say "The lens crafter machine's screen flashes red.  A message reads 'NO SOURCE DATA AVAILABLE.'" instead;
	unless the Contents of the ID camera matches the text "Zuzu's eye", say "The lens crafter machine's screen flashes red.  A message reads 'SOURCE DATA FOUND. SOURCE DATA UNUSABLE.'" instead;
	move the contact lens to the lens case;
	now the lens case is closed;
	now the lens crafter is fried;
	say "The lens crafter machine's screen flashes green.  A message reads 'SOURCE DATA ACCEPTED - COSTUME LENS SYNTHESIZED.'  The machine hisses slightly, and a sleeve descends around the lens case.  When the sleeve retracts, the lens case is closed." instead.


[police flitter]
The police flitter is a vehicle.  "A parked police flitter, armored and festooned with lights, looms here."  The police flitter is lockable and locked.  The police flitter is fixed in place. [The matching key of the police flitter is the flitterkey.] The police flitter can be violated or pristine.  The police flitter is pristine.  The description is "A Tesla-Fujiwara light aircraft, the police model of this particular flitter is upengined in order to carry armor and equipment.  Seating four, this example has the full lighting array and riot pod of a crowd control vehicle.[if locked]  It is securely locked, and a slowly blinking light indicates that its locklarm is armed."

Understand "flitter" as the police flitter.

Check opening the flitter:
	if the flitter is locked:
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

Check opening the ambulance:
	if the ambulance is locked:
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

[general understand rules]

Understand "talk to [someone]" as a mistake ("To start a conversation, try to ASK [the noun] ABOUT something or TELL [the noun] ABOUT something.").
Understand "use [something]" as a mistake ("How would you like to use [the noun]?").
Understand "use [something] on [something]" as a mistake ("How would you like to use [the noun]?").
Understand "use [something] with [something]" as a mistake ("How would you like to use [the noun]?").

Report examining someone:
	if the noun is the player:
		say "[if the number of unconcealed things carried by the noun is zero][The noun] are empty-handed.[otherwise][The noun] are carrying [a list of unconcealed things carried by the noun].";
	otherwise:
		say "[if the number of unconcealed things carried by the noun is zero][The noun] is empty-handed.[otherwise][The noun] has [a list of unconcealed things carried by the noun]."

[waiting until]
Hanging around until is an action applying to one time.

Check hanging around until: 
	if the time of day is the time understood, say "It is [time understood] now!" instead.
	[if the time of day is after the time understood, say "It is too late for that now." instead.]

Carry out hanging around until: 
	[while the time of day is before the time understood:]
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
		follow the turn sequence rules.

Report waiting more: 
	say "It is now [time of day + 1 minute]."

Check waiting more: 
	if the time understood is greater than six hours, say "You really haven't got that kind of patience." instead.


[removing]
Understand "remove [something] with [something]" as cutting it with.
Understand "detach [something] with [something]" as cutting it with.			

[cutting]
Cutting it with is an action applying to two things.

Check cutting it with:
	if the second noun is the multitool:
		say "The one thing this multitool doesn't have is a decent cutting edge." instead;
	if the noun is the car key:
		unless the car key is carried, say "You don't have the car key." instead;
		unless the second noun is the knife:
			say "You can't cut the key with that." instead;
		if the second noun is the knife:
			unless the knife is carried, try taking the knife;
			continue the action;
	otherwise if the noun is the fence:
		if the second noun is the knife:
			say "While sharp, this knife can't cut cyclone fencing." instead;
		unless the second noun is the tag remover:
			say "You can't cut the fence with that." instead;
		if the second noun is the tag remover:
			unless the tag remover is carried, try taking the tag remover;
			continue the action;
	otherwise if the noun is a disposable camera:
		say "The case of the camera is quite hard and slick. You'd only hurt yourself." instead;
	otherwise if the noun is an antitheft tag:
		unless the noun is part of a garment, say "That's not attached to anything." instead;
		unless the second noun is the tag remover, say "You can't remove the tag with that." instead;
		if the second noun is the tag remover:
			unless the tag remover is carried, try taking the tag remover;
			continue the action;		
	otherwise:	
		try cutting the noun instead.

Instead of cutting an antitheft tag (called the tag) with the tag remover:
	say "You deftly remove the tag with the tag remover.";
	now the tag is carried by the player.

	

[combining]
Combining it with is an action applying to two carried things.
Understand "combine [something] and [something]" as combining it with.
Understand "combine [something] with [something]" as combining it with.  
Understand "combining [something] to [something]" as combining it with.
Understand the command "attach" as something new.  Understand "attach [something] to [something]" as combining it with.

The combining it with action has an object called the resultant-item. 

[Some kinds of component are defined by the Table of Components.] [<- this doesn't seem to work, despite the manual claiming it will at bottom of 15.16]

Limbo is a container. Limbo contains 5 Klein Blasters.  Limbo contains 5 ID bombs.


Setting action variables for combining something with something:
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
	unless the noun provides the property item-id, say "[The noun] won't attach to [the second noun]." instead;
	unless the second noun provides the property item-id, say "[The second noun] won't attach to [the noun]." instead;
	if the resultant-item is nothing, say "[The noun] and [the second noun] don't make anything useful." instead;
	if the resultant-item is not in Limbo, say "That's not available." instead;
	if the resultant-item is a Klein blaster:
		unless the player is solderable, say "You don't have the proper tools." instead;
		if the player is solderable:
			if the soldering iron is switched off:
				try switching on the soldering iron;
		unless the noun is working, say "[the noun] is too damaged![line break]" instead;
		unless the second noun is working, say "[the second noun] is too damaged![line break]" instead;
	if the noun is a disposable camera and the noun is assembled, say "There's no place on the camera to attach anything." instead;
	if the second noun is a disposable camera and the second noun is assembled, say "There's no place on the camera to attach anything." instead.

	
Carry out combining it with:
	move the resultant-item to the holder of the noun;
	remove the noun from play;
	remove the second noun from play.
	
Report combining it with:
	say "You fashion the [noun] and the [second noun] into a [resultant-item]!". 

[There is a memory chip in the backpack.][Testing]


[soldering]
[
Brazing is an action applying to two carried things.

Understand the command "solder" as something new.  Understand "solder [something] to [something]" as brazing.

Check brazing:
	unless the second noun is understood, say "You need two things to solder together." instead;
	unless the player has the soldering iron, say "You don't have the proper tools." instead;
	unless the player has the solder, say "You don't have the proper supplies." instead;
	if the noun is the soldering iron, say "You can't solder that to itself!" instead;
	if the noun is the solder, say "You can't solder anything to that!" instead;
	if the second noun is the soldering iron, say "You can't solder that to itself!" instead;
	if the second noun is the solder, say "You can't solder anything to that!" instead;

Carry out brazing:
	try combining it with instead.
]	

[Opening]
Opening it with is an action applying to two carried things.
Understand "open [something] with [something]" as opening it with.
Understand "disassemble [something] with [something]" as opening it with.
Instead of opening a disposable camera, follow the disassembly rules.
Instead of unlocking a disposable camera with something, follow the disassembly rules.

Check opening it with:
	if the noun is a disposable camera:
		follow the disassembly rules.

[Disassembly]
Disassembly is a rulebook.
First disassembly rule: 
	if the noun is disassembled:
		say "That's already disassembled." instead;
		rule fails.
		
A disassembly rule:
	if the noun is a disposable camera:
		unless the noun is carried, try taking the noun;
		if the second noun is nothing, say "You can't open the camera with your bare hands." instead;
		unless the second noun is the multitool:
			say "You can't disassemble the camera with that." instead;
		otherwise:
			say "You pry open the case of the camera with the pliers in your multitool.";
			now the noun is disassembled;
			rule succeeds.



[sampling]
Understand "sample [something]" as sampling.
Understand "scan [something]" as sampling.

Sampling is an action applying to one thing.  The sampling action has a text called the person sampling tissue.

Check sampling:
	unless the noun is a person, say "That's not made of tissue." instead;
	unless the noun is visible, say "But they're not here!" instead.
	
[	if the noun is the tissue sampler, say "That would be a really neat trick of topology." instead;
	unless the location of the actor encloses the tissue sampler, say "You don't have anything to sample with." instead;
	unless the noun is a palm, say "You can't sample that!" instead.]	
	
Setting action variables for sampling:
	now the person sampling tissue is the printed name of the actor;
	say "The tissue sample target is [person sampling tissue]".

Carry out sampling:
	now the tissueDonor of the tissue sampler is the person sampling tissue;
	now the printed name of the tissue sampler is "tissue sampler ([tissueDonor])".
	
Report sampling:
	say "[if the actor is the player]You press your palm to the tissue sample plate; it glows briefly.[otherwise][the actor] presses a palm against the tissue sample plate; it glows briefly."

		
[	if the noun is part of a person (called the palmdonor):
		if the palmdonor is the player:
			now the Sample of the tissue sampler is "Player - Palm";
			say "The palmdonor is the player!";
		otherwise:
			now the Sample of the tissue sampler is "Unknown Palm";
	say "The tissue sampler plate glows briefly for a moment."
]	



[Arming] 
Arming is an action applying to one [carried] thing.
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
		if player surveilled:
			the player incriminates in one turn from now;
	otherwise if the noun is the Tear Gas grenade:
		say "You pull the pin on the Tear gas grenade and drop it as it begins to hiss!";
		move the Tear Gas grenade to the location;
		[if player surveilled:
			the player incriminates in one turn from now.]


[Photographing activity]
Photographing is an action applying to one visible thing.
Understand "photograph [something]" as photographing.
Understand "take picture of [something]" as photographing.
Understand "take a picture of [something]" as photographing.
Understand "snap [something]" as photographing.

Check photographing:
	unless the player is holding the ID camera, say "What do you want to photograph [the noun] with?" instead;
	if the noun is a person, say "The camera bleeps a wavy icon, indicating that the subject isn't still enough for a hologram." instead;
	if the noun is part of a person, say "The camera bleeps a wavy icon indicating that the subject isn't still enough for a hologram." instead.


Carry out photographing:
	say "The camera makes an artificial-sounding 'CLICK' noise.  The disc icon flashes green, indicating that the camera's tiny onboard storage is full.";
	now the Contents of the ID camera is the printed name of the noun;
	now the ID camera is programmed.


[axing]
Axing is an action applying to one visible thing.
Understand "ax [something]" as axing.
Understand "axe [something]" as axing.
Understand "chop [something]" as axing.
Understand "hit [something]" as axing when the second noun is the Fire Axe.
Understand "break [something]" as axing when the second noun is the Fire Axe.

Check axing:
	if the player is not holding the Fire Axe, say "You can't do that without an axe![line break]" instead;
	if the noun is a person, say "That will definitely get you arrested.  Plus, it's just wrong to attack people." instead;
	if the noun is not the Balcony Door, say "I don't really think that's appropriate, do you?[line break]" instead.
 
Carry out axing:
	say "The Balcony doors give way before your furious assault.  Before long, you have smashed a hole in them large enough to squeeze though safely, but if anyone was watching the surveillance systems and saw you do that, the police are probably looking for you.";
	the player incriminates in one turn from now;
	now the Balcony Door is axed.

[microwaving]
Microwaving is an action applying to one thing.
Understand "microwave [something]" as microwaving.
Understand "cook [something]" as microwaving.
Understand "heat [something]" as microwaving.
Understand "reheat [something]" as microwaving.

Before microwaving:
	if the noun is the microwave oven, say "That would be a neat trick." instead;
	unless the microwave oven is in the location, say "How do you propose to do that?" instead;
	unless the microwave is empty:
		unless the noun is in the microwave, say "There's no room in the microwave." instead;
	unless the noun is touchable:
		if the noun is in the microwave oven and the microwave oven is closed:
			try silently opening the microwave oven;
	if the noun is visible, continue the action.
	
Carry out microwaving:
	unless the noun is in the microwave oven:
		try opening the microwave oven;
		try inserting the noun into the microwave oven;
	unless the microwave oven is closed:
		try silently closing the microwave oven;
	if the microwave is empty, say "There's nothing in the microwave." instead;
	let L be the list of objects inside the microwave oven;
	carry out the cooking activity with entry 1 of L;


[cooking activity]
Cooking something is an activity.
Rule for cooking something (called target):
	unless the side panel is fried:
		say "A light comes on in the microwave and it begins to hum.";
		if the target is working:
			if the target provides the property fryDescription, say "[fryDescription][line break]";
			if the target provides the property fried, now the target is fried;
		otherwise if the target is cold:
			if the target provides the property cookDescription, say "[cookDescription][line break]";
			if the target provides the property hot, now the target is hot;
		say  "A few moments later there is a loud [bold type]BING![roman type] and the microwave stops.";	
	otherwise:
		say "The microwave appears to be dead."		


[drinking coffee]
Check drinking the coffee:
	if the coffee is cold, say "Ugh.  Cold coffee is undrinkable." instead;
	otherwise continue the action.
	
Carry out drinking the coffee:
	remove the coffee from play.

Report drinking the coffee:
	say "You drain the paper gourd of life-giving caffeine suspension, tossing away the empty cup.  Ahhh."


[kleinhacking activity]
KleinHacking something is an activity.
Rule for kleinhacking something (called target):
	unless the side panel is fried:
		if the target is hacked:
			say "You feel a a light tickle in your head.";
		otherwise:
			say "You feel an incredible burst of noise behind your forehead!  Static, bits of music, and above all the shriek of data transfer!  Just before you feel you'll go mad from the noise, there is a stutter, and it stops.  Blessed silence falls inside your skull.";
			now the mitklein is hacked;
			now the side panel is fried;
			now the side panel is closed;
			now the side panel is unopenable;
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
	unless the tissueDonor of the tissue sampler matches the text "Roberto/Yourself":
		say "The tissue generator bleeps and a red light comes on which reads 'INSUFFICIENT FEEDSTOCK.'";
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
		say "With a final hiss, the tissue generator lights an indicator reading 'COMPLETE.'  You notice the cryopack is now closed and operating."



Section 8 - Scenes

[Streetwalking is a scene.  Streetwalking begins when the location is a street.  Streetwalking ends when the location is not a street.]

[Bank Run]
Bank Run is a recurring scene.  Bank Run begins when Roberto Velez is in The Proletariat Bar and Roberto Velez is runningErrand.

Every turn during Bank Run:
	if the location of Roberto Velez is not the Bank:
		let the way be the best route from the location of Roberto Velez to the Bank, using doors;
		try Roberto Velez going the way.

Bank Run ends when Roberto Velez is in the Bank and the location is the Bank.


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
		now the torn jacket is in The Bank;
		now the tissueDonor of the tissue sampler is "Roberto";
		now the printed name of the tissue sampler is "tissue sampler (Roberto)";
		now Roberto Velez is inPlay;
		remove Roberto Velez from play.

Getting Cash ends successfully when Roberto Velez is wearing the blue jacket.
Getting Cash ends unsuccessfully when Roberto Velez is inHolding.

[Roberto Waiting]
Roberto Waiting is a recurring scene.  Roberto Waiting begins when Getting Cash ends unsuccessfully.
Roberto Waiting ends in retry when the ATM is hacked and the location is The Bank and Roberto Velez is in The Bank.
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
	if a random chance of 1 in 7 succeeds, say "[one of]A shopper murmurs some lyrics, presumably from a song she's listening to, and subsides.[or]A small group of people enter the store, look around, look at each other and file back out.[or]The shopkeeper wanders past you and gives you a suspicious look.[or]A PA system mumbles a message about an upcoming sale.[as decreasingly likely outcomes]"

Clothes Shopping ends when the location is not Garb-oh.
Clothes Shopping ends when Shoplifting begins.

[Shoplifting]
Shoplifting is a scene.  Shoplifting begins when the shopper is carryingSwag and the location is Garb-oh.

When Shoplifting begins:
	if the location is Garb-oh:
		say "The shopper puts down a last item of clothing and drifts towards the door.  As she reaches it, however, the antitheft alarm blares and a strobe light begins to flash!  She stops, frozen in surprise, as the shopkeeper rushes over and grabs her.  A few seconds later, two policemen enter the shop.  The shopkeeper, shopper and police all begin shouting at the same time."		


When Shoplifting ends:
	remove the shopper from play;
	if the location is Garb-oh:
		say "The police finally search the shopper's shoulder bag, and shake their heads.  They lead her towards the door, one explaining that they'll need to take her statement at the station.  The shopkeeper asks snippily what they'll be doing to protect her stock; one of the cops rolls his eyes and says 'Lady, we'll have our patrol stop in the plaza out front for a while in case this one has any accomplices, all right?'  They leave, and the shopkeeper watches them go with a somewhat irritatingly smug expression on her face.";
	if the sales counter encloses the player:
		say "The shopkeeper looks over and sees you behind the sales counter.  Fury contorts her face and she runs to the door, screaming for the police to return!  They rush back in and find you behind the register.  Shaking their heads, they grab you and march you out of the store.";
		end the story saying "You have been arrested!";
	if the location is Green Commercial Plaza South:
		say "A pair of police escort a tearful woman out of Garb-Oh.  A police flitter swoops down from the sky with a howl of turbines to land in the plaza.  The two cops speak with the pilot before bundling the woman inside and climbing in after her.  The aircraft spools its turbines back up and lifts back into the air, vanishing out of sight behind the skyline."

Shoplifting ends when the time since Shoplifting began is 7 minutes.

[Police Gone]
Police Gone is a recurring scene.  Police Gone begins when Shoplifting ends. 
Police Gone ends when the time since Police Gone began is 20 minutes.


[Patrol]
Patrol is a recurring scene.  Patrol begins when Police Gone ends.  
Patrol ends finally when the time since Patrol began is 20 minutes and the Police Flitter is violated.  
Patrol ends temporarily when the time since Patrol began is 20 minutes and the Police Flitter is pristine.

When Patrol begins:
	Move the police flitter to Green Commercial Plaza South;
	Move Officer Prescott to Green Commercial Bistro Paris;
	if the location is Green Commercial Plaza South:
		say "A police flitter spirals slowly down out of the sky, beacons strobing and warning tones blaring.  It comes to a rest in the clear area in the middle of the plaza and powers down.  A police officer gets out, closes the door and ambles off towards the Bistro nearby, probably to get a coffee.";
		if the player is flitterEnabled:
			now the police flitter is unlocked;
	if the location is Green Commercial Bistro Paris:
		say "A police officer enters the Bistro, buys a coffee and pastry and sits down at a window table."
		

After going to Green Commercial Plaza South during Patrol: [so we can assume the flitter is there]
	If the player is flitterEnabled:
		now the police flitter is unlocked;
		say "The police flitter flashes its lights twice as the locklarm disengages.";
	continue the action.

After inserting into the car key during Patrol: [so we can assume the flitter is there]
	if the location is Green Commercial Plaza South:
		If the player is flitterEnabled:
			now the police flitter is unlocked;
			say "The police flitter flashes its lights twice as the locklarm disengages."

After going from Green Commercial Plaza South during Patrol:
	now the police flitter is closed;
	now the police flitter is locked;
	continue the action.

When Patrol ends:
	Now the police flitter is closed;
	Now the police flitter is locked;
	Remove the police flitter from play;
	Remove Officer Prescott from play;
	if the location is Green Commercial Bistro Paris:
		say "The police officer finishes his coffee, tosses his trash in a bin and ambles out of the bistro.  You hear the sound of flitter turbines spooling up outside and then fading away.";
	if the location is Green Commercial Plaza South:
		say "A police officer ambles out of Green Commercial Bistro Paris.  As he approaches the flitter, the flitter key transponder on his belt disables the locklarm.  He climbs in and shuts the door.  A few moments later, the aircraft powers up.  Its beacons flashing, the turbines spool up and it lifts smoothly into the air, disappearing behind the building tops.";
		if the player encloses a memory chip (called target):
			if the target is keyed:
				now the target is programmed;
				now the Contents of the target is "flitter";
				say "Your hacked car key beeps softly, and its ready light turns green!"

Police Gone begins when Patrol ends temporarily. [note this must be after Patrol scene declarations]

[Drug Raid]
Drug Raid is a scene.  Drug Raid begins when the location is South Primrose Lane and South Primrose Lane is reported and Drug Market is unraided.

Instead of going south in South Primrose Lane during Drug Raid:
	say "A stern-looking policeman from the cordon intercepts you and firmly tells you to stay back.  You move back to the street." instead.

When Drug Raid begins:
	say "You arrive at South Primrose Lane to a scene of chaos.  Police vehicles are pulled up all over the road, cyclone lights flashing.  As you watch, heavily armed SWAT officers file through the hole in the fence towards the Drug Market.   A staticky transmission over the radio of the cars near you says quietly 'Breaching charges in place.'  You can hear a voice on a bullhorn shout 'You have thirty seconds to surrender!'[paragraph break]A few seconds later, there is a deep thundering [bold type][italic type]BOOM[roman type] as the breaching charges detonate, and a confused hubbub as (presumably) the SWAT officers rush into the abandoned house."
	
Instead of looking in South Primrose Lane during Drug Raid:
	say "Police vehicles and personnel are milling around here.  Bright lights are visible over the fence to the south.  A cordon of yellow police crime scene tape, guarded by several policemen, prevents anyone from approaching the fence."

Drug Raid ends when the time since Drug Raid began is 10 minutes.
	
When Drug Raid ends:
	if the location is South Primrose Lane:
		say "Eventually, police begin filing back out of the hole in the fence, dragging a few handcuffed suspects with them.  The bright lights across the fence go out, and various SWAT and regular police get back into their assorted vehicles and begin to pull away.  Soon nothing is left except a slight smell of smoke from the breaching charges."


[Endgame]
Endgame is a scene.  Endgame begins when the player has been in Atrium Midair Top for 1 turn.  
Instead of dropping ID Bomb during Endgame:
	say "[if Bombs Thrown is 0]You arm the bomb and toss it. The bomb spins down out of sight towards a window wall.  A few seconds later you make out a slight twinkling as the flash unit fires.  A low noise, of a crowd confused, slowly rises in volume![otherwise if Bombs Thrown is 1]Arming another bomb, you toss it away into the atrium where crowds are gathering at the windows!  The bomb flashes just in front of a large crowd gathered before a window wall, and they begin to mill about in panic and confusion!  The noise inside the atrium rises![otherwise if Bombs Thrown is 2]You arm your third ID bomb and drop it directly down into the crowds in the Main Lobby, where you can see police and Homeland Security forces pointing up at you as they maneuver into place.  There is a definite flinching in the crowd as the bomb goes off nearly at floor level, and the law enforcement personnel are instantly swamped by the confused masses of convention attendees as everyone on the Lobby floor is cut off from communicating directly with their electronics!";
	Increase Bombs Thrown by 1;
	remove the noun from play.

Instead of arming ID bomb during Endgame:
	try dropping the noun instead.

Every turn during Endgame:
	say "The descender whirs steadily as it lowers you.";
	carry out the rappelling activity.

Endgame ends victoriously when the location is Main Lobby and Bombs Thrown is 3.
Endgame ends unsuccessfully when the location is Main Lobby and Bombs Thrown is less than 3.

When Endgame ends victoriously:
	say "You reach the floor of the Main Lobby.  The confusion is immense, as thousands of people realize that their MitKlein bottles no longer function.  The various law enforcement personnel throughout the crowd are distracted and paralyzed by the fact that their equipment will no longer recognize them.  In the confusion, your landing goes nearly unnoticed.  You slip out of the descender and it whisks back upwards out of sight.[paragraph break]Soon, new police enter the lobby and begin organizing an evacuation while others continue their futile search for the unknown attacker.  A policeman gestures at you and a group of people near you to follow him and turns to head downstairs towards the Transit station.  You watch as everyone turns to follow the policeman, but you know that the police can't save them.[paragraph break][italic type]The police can't save you.  I can.  I will.  I'm coming for you.  I'm coming for all of you.[roman type][paragraph break][bold type]Meek and obedient, you follow the leader down well-trodden corridors, down into the Valley of Steel![roman type]";
	end the story finally saying "You are free!" 

When Endgame ends unsuccessfully:
	say "You reach the floor of the Main Lobby.  Despite the confusion and distraction that your descent has caused, the police are still organized on the ground, and as you touch down you are tackled by a horde of law enforcement!";
	end the story saying "You have been arrested!"
	

Section 9 - Tables

Table of Stories
headline	url	newsstory
"Area Man sought for ground-to-air attacks on military drones."	"http://bit.ly/z5bjs"	"The motives are as unknown as the identity of the mystery man, who has destroyed three Government UCAVs through various means in the past few weeks.  The FBI confidently expects his capture in the next few days."
"Area Man on senseless rampage."	"http://bit.ly/xVabuF"	"Several dozen police officers were called out when a man began randomly shooting through home windows in an apparent vendetta against television sets last night.  Although officers attempted to capture the man alive, he resisted arrest with heavy weapons.  The Orange Industrial Water Tower will be out of service for some weeks."
"Handheld device privacy threat?"	"http://bit.ly/x9n54J"	"News investigation shows that popular handhelds may have significant privacy backdoor.  Government denies story allegation."
"In Los Angeles, something is always burning."	"http://bit.ly/ylxSjM"	"Area man barricades house against police in possible confusion.  SWAT unit's flash-bangs result in casualty."
"Soldiers begin to experience breakdowns."	"http://bit.ly/z5g588"	"The parents of several deployed American military personnel have raised concerns that their children appear to be losing touch with reality.  Government refutes these claims with statistics showing that 97.2 percent of deployed American service personnel are safely medicated."
"Possible Artificial Intelligence breakthrough!"	"http://bit.ly/wM2TwQ"	"Researchers at an area university have issued conflicting press statements as to whether a recent AI incubation experiment has ended in success or failure.  One graduate student, who appeared to be in tears, would only say 'Pyrrhic.  It was so unnecessary.'"
"Winter settles in over our military positions in the mountains."	"http://bit.ly/xO9ijg"	"Fighting has been slowed by the onset of a heavier-than-expected winter snow season in the Corderilla Oriental mountains.  Trench lines have been set up, and both sides have settled in for a vigilant if slower winter."
"New Mit-Klein Data Sold To Dating Company!"	"http://bit.ly/yir9ea"	"New venture promises to utilize Mitsui-Klein transaction and telemetry data to match clients with ideal partners.  'We would never intrude on our clients' privacy, ' the CTO stated.  'It is possible that data has been deanonymized before it reaches us, but we would never utilize that data for our financial gain.'"
"Fine Structure is this month's ebook best seller!"	"http://bit.ly/wdEurc"	"Science Fiction novel reaches record sales.  Author unavailable for comment, but publisher and readers pleased!"

Table of Graffiti
image	url
"a small stick figure with a signal strength icon around its head."	"http://bit.ly/A3ZK6R"
"a stylized angel wearing a pair of mirrorshades."	"http://bit.ly/y73yki"
"scrawled text reading [bold type]HISTORY IS A LIE[roman type]![line break]"	"http://bit.ly/xefJ8P"
"a small crude image of a television."	"http://bit.ly/xw0dKz"
"a small figure, flying, wearing a cape."	"http://bit.ly/fknhZE"
"a small imp giving you the finger!"	"http://bit.ly/ya9fSZ"
"a crude drawing of the Twin Towers with the word 'REALLY?'"	"http://bit.ly/yvwYxd"

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

[Roberto Velez] [See Ex. 205 for spicing up Roberto]
Roberto Velez is a man.  Roberto Velez can be either preJacket or postJacket. Roberto Velez is preJacket.  Roberto Velez can be known or unknown.   Roberto Velez is unknown.  Roberto Velez can be inPlay or inHolding.  Roberto Velez is inPlay. Roberto Velez can be runningErrand or notrunningErrand.  Roberto Velez is notRunningErrand.  Roberto Velez is wearing the torn jacket.  The description of Roberto Velez is "Roberto is a medium-height man of middle age and well-tanned skin.  His hair, black and cut short, is just beginning to grey at the temples.  His hands are rough and callused.  He is wearing work shoes and dark blue trousers, slightly scuffed.  [if Roberto Velez is wearing the torn jacket]He is wearing a dark blue trade uniform jacket with a long narrow gash at the left shoulder[tagged details].[otherwise]  He is wearing a cheap white button-down shirt."

To say tagged details:
	if the nametag is part of the torn jacket, say " and his name on a tag clipped to the breast".

Before printing the name of Roberto Velez: now Roberto Velez is known.

The torn jacket is a thing.  The torn jacket is wearable.  The torn jacket is medium.  The description of the torn jacket is "A dark blue uniform jacket with black snap closures and false side pockets.  There is a long gash on the outside of the left sleeve near the shoulder.[if nametag is part of the torn jacket]  There is a nametag clipped to the jacket which reads 'Roberto Velez.'"

The nametag is a thing.  The nametag is small.  The nametag is part of the torn jacket.  The nametag is scenery.  The description of the nametag is "A small black nametag with the name 'Roberto Velez' inscribed on it."
	
Instead of speech when the noun is Roberto Velez:
	if the topic understood matches the text "jacket" or the topic understood matches the text "uniform":
		if Roberto Velez is preJacket:
			say "Roberto cranes his head to look at the damage.  'Oh, yes,' he says.  'This happened at work.  I caught it on a shelf.'  He shakes his head dolefully.  'They are making me pay for the jacket,' he says to you, 'but they are charging me the new price for it!  The price, it is ridiculous!  I would replace it myself but I cannot afford one like it.  I will have to let them dock my pay for months.'";
			now Roberto Velez is postJacket;
		otherwise:
			say "[one of]Roberto pokes a finger through the tear glumly.  'I need to replace this.'[or]Roberto nods.  'Yes, I still must find a way to replace this.'[or]Roberto looks at you sharply.  'Can you help me?  Or are you just amused by my misfortune?'[as decreasingly likely outcomes]";
	otherwise if the topic understood includes "job/work/bank/reserve"[ or the topic understood matches the text "work"]:
		say "Roberto sighs.  'I have a good job,' he says.  'I am a custodian at the Reserve Bank, downtown.  The work is not bad, and the pay is not terrible, but they are very strict about the uniform.'";
	otherwise:
		say "Roberto looks at you curiously.  You have a sneaking suspicion his English is not very good.".
[]

Instead of the player trying giving the blue jacket to Roberto Velez:
	if Roberto Velez is wearing the blue jacket, say "He already has it!" instead;
	if Roberto Velez is carrying the blue jacket, say "He already has it!" instead;
	say "Roberto stands up and eagerly examines the blue jacket.  'This is perfect!' he says enthusiastically, showing you how closely it resembles his torn uniform jacket.  'Would you be willing to part with it? I cannot give you much, but I would happily pay you what I can; it will be less than what those dogs would take from my salary to replace this one!'";
	now Roberto Velez is runningErrand.

Every turn when the player can see Roberto Velez and the location is The Proletariat Bar:
	if a random chance of 1 in 5 succeeds, say "[one of]Roberto shuffles his feet.[or]Roberto takes a swig of his beer.[or]Roberto stands and goes to the bar for some peanuts, returning to the table.[or]Roberto examines his jacket sleeve and sighs.[as decreasingly likely outcomes]".

[Garb-oh attendant]
In Garb-oh is a woman called the shopkeeper.  The description of the shopkeeper is "[if Shoplifting is happening]The shopkeeper is standing with the police and the shopper near the doors, gesticulating angrily and haranguing both the police and shopper.[otherwise] The shopkeeper is a somewhat frumpy older lady.  You can't help but wonder if she has been deliberately selected for her appearance so as to present a contrast with the merchandise."

In Garb-oh is a woman called the shopper.  The shopper can be carryingSwag or notcarryingSwag.  The shopper is notcarryingSwag.  The shopper is wearing the shoulder bag.  The description of the shopper is "[if Shoplifting is happening]In tears, the shopper stands near the police officers, protesting her innocence and trading angry accusations with the shopkeeper.[otherwise] The shopper is a young woman wearing large headphones, loose clothes. She is bouncing her head in what is probably the rhythm of the song she is listening to, and seems to be paying very little attention to her surroundings.  Every once in a while she pulls an item from a rack and holds it up in front of a mirror before returning it to its place.  She is carrying a large shoulder bag."

The shoulder bag is a container.  The shoulder bag is open.  The description is "An open-topped satchel with a carrying strap meant to be strung over one shoulder."


Instead of inserting into the shoulder bag:
	if the noun is a garment:
		say "You stealthily slide [the noun] into the shoulder bag!";
		if the noun is tagged:
			now the shopper is carryingSwag;
		continue the action;
	otherwise:		
		say "The shopper feels you placing [the noun] into the bag! She spins around, clutching the bag tightly to herself and hisses 'Do you want me to scream for a cop?'" instead.


Persuasion rule for asking the shopper to try doing something:
	say "[one of]The shopper ignores you.[or]The woman looks at you disbelievingly, rolls her eyes and moves on.[or]The shopper points at her headphones with an insincere smile of apology and moves away.[purely at random]";
	persuasion fails.
	
[Officer Prescott]
Officer Prescott is a man.  Officer Prescott is carrying the flitterkey.  The description of Officer Prescott is "A normal-looking Metro Policeman, Prescott is wearing light patrol gear with his holobadge displaying his name and rank across his left breast. Every once in a while, the comm unit attached to his belt murmurs to him through his earpiece.[if the location is Green Commercial Bistro Paris] At the moment, he's sitting at a table nursing a coffee."

Rule for deciding the concealed possessions of Officer Prescott:
	if the particular possession is the flitterkey, no;
	otherwise yes.

[Sergeant Ramirez]
In the Front Desk is a man called Sergeant Ramirez. The description of Sergeant Ramirez is "Seated behind his desk, this grizzled uniformed policeman is clearly a veteran of many years' service.  He scowls at you, waiting for you to make his life more annoying."

Every turn when the player can see Sergeant Ramirez:
	if a random chance of 1 in 5 succeeds, say "[one of]Sergeant Ramirez scowls at his paperwork.[or]Sergeant Ramirez sharpens a pencil.[or]The telephone rings.  Sergeant Ramirez answers gruffly, speaks a few words and hangs up.[or]The door swings open and two officers come in, manhandling a suspect between them.  Ignoring their suspect's complaints, they pause briefly to check in with the desk before moving on into the police station.[or]Sergeant Ramirez picks his nose.[as decreasingly likely outcomes]";	

Persuasion rule for asking Sergeant Ramirez to try doing something: 
	say "[one of]The sergeant stolidly ignores you.[or]'You want me to run you in?'[or]'Beat it, I'm busy.'[or]'Look, go bother somebody else, okay?'[or]The sergeant stares at you fixedly, ostentatiously comparing your face to the screen of his computer.[as decreasingly likely outcomes]";
	persuasion fails.
	
[Understand "tell [someone] about [any subject]" as telling the noun about the subject.]

Telling someone about something is speech.
Asking someone about something is speech.
Answering someone that something is speech.

Instead of speech when the noun is Sergeant Ramirez:
	if the topic understood matches the text "drug":
		if South Primrose Lane is reported:
			say "The sergeant stares suspiciously at you.  'You already reported that location.  You trying to be funny?'" instead;
		if the player has been in the Drug Market:
			say "The sergeant suddenly becomes animated, looking directly at you.  'What?' he barks.  'Drugs?  Where?'  You explain to him that you had seen shifty characters and drugs in the Drug Market.  He checks your ID using an eye scanner to verify that you live next door, then picks up the phone and has an animated conversation with someone on the other end, the word 'drugs' and 'extreme' and 'losers' coming up with frequency.  He has lost interest in you.";
			now South Primrose Lane is reported;
		otherwise:
			say "Sergeant Ramirez snorts.  'Did you actually witness drug trafficking?' he asks.  When you shake your head, he sighs theatrically and goes back to his paperwork.";
	otherwise:
		say "[one of]The sergeant snorts and ignores you.[or]'Look, kid, why don't you let me get some work done?'[or]'Yeah, yeah, you and everybody else…'[or]'You want I should have the boys haul you in for bugging me?'[as decreasingly likely outcomes]".

[security guard]
In Lift Lobby is a man called the Security Guard.  The description of the Security Guard is "He's dressed in a standard security guard outfit.  It appears his job is keep people from fiddling with the ashtrays or perhaps the fake plants."


[Ponyfriend Chunky]
In Civil Center Steps is a man called Ponyfriend Chunky.  Ponyfriend Chunky can be cellBereft or cellEnabled.  Ponyfriend Chunky is cellBereft. Ponyfriend Chunky is carrying the begging sign. Ponyfriend chunky is carrying the pager.  The description of Ponyfriend Chunky is "Dressed in ragged clothing, this man is lookng around himself nervously, trying not to meet anyone's eye.  He is holding a sign that reads 'HELP ME COMPLETE MY MISSION GIVE WHAT YOU CAN.'"

The begging sign is scenery.  The description of the begging sign is "It appears to be written in shaky black marker, written on a piece of cardboard."

Rule for deciding the concealed possessions of Ponyfriend Chunky:
	no.
		
After giving the phone to Ponyfriend Chunky:
	say "Ponyfriend clutches the cell phone and mumbles 'This is so much better, now I can get my instructions directly rather than having to call them back!'  He stands there for a moment, then seems to come to a realization.  'In fact, they can call me!  I don't need this pager!' he says.";
	now Ponyfriend Chunky is cellEnabled;
	try Ponyfriend Chunky giving the pager to the player.

After asking Ponyfriend Chunky about something: respond to Ponyfriend.  After answering Ponyfriend Chunky that something: respond to Ponyfriend.

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
"pager"		"Oh, my pager, yes.  This is how They send me my mission briefings. Well, what I mean
		is, they page me and I call them to get the briefings, yes.  I'm sorry, I have to keep checking to make sure they haven't paged me.  I wish…I wish I could talk to them directly."
"them/they"	"They are…up there. (Ponyfriend points up, dramatically).  They watch everything, 	and they know where we are and what we're doing, and sometimes they have to…	correct things.  That's where I come in.  I get missions."
"mission/missions"	"My missions?  They're…well…(a suspicious look comes over his face) They're secret! 	You can't know!"
"mitklein/bottle/chip"	"The Mitsui-Klein blessing…yes…that is how we know they love and watch over us."
"sign"	"Oh…(he looks a bit crestfallen) …yes.  I, I'm not a wealthy man, and I must ask for 	your support in my missions."
"phone"	"It would be much nicer if I had a phone of my own."
"police/officer/cops"	"Them! (his brow furrows).  They…sometimes I think they're here to prevent me 	carrying out my missions.  I have to stay away from them…"
"subway/transit"	"I like it in the Transit system in winter.  It's warm."


Ponyfriending is a recurring scene.  Ponyfriending begins when the location contains Ponyfriend Chunky.  Ponyfriending ends when the location does not contain Ponyfriend Chunky.

Every turn during Ponyfriending:
	if a random chance of 1 in 10 succeeds:
		if Ponyfriend Chunky has the pager:
			say "[one of]Ponyfriend frantically whips his pager out and scrutinizes the blank display before putting it away, apparently crestfallen.[or]Ponyfriend wipes his pager's display with a dirty sleeve.[or]Ponyfriend looks up sharply, muttering 'Did you hear that?' and checks his pager.[purely at random]";
		otherwise if Ponyfriend Chunky has the phone:
			say "[one of]Ponyfriend checks his cell phone, looking disappointed that no-one has called.[or]Ponyfriend mutters to himself about finding somewhere to charge his cell phone.[or]Ponyfriend's eyes light up and he pulls out his (dead) cell phone.  Raising it to his head, he has a brief conversation with it before putting it away carefully and looking around furtively.[as decreasingly likely outcomes]";
	if a random chance of 1 in 7 succeeds:
		say "[one of]Ponyfriend tries to interest as passer-by in his theories of a mechanistic Deity. Unsuccessfully.[or]Ponyfriend furtively scratches underneath his none-too-clean shirt.[or]Ponyfriend sighs and sits down for a few moments before springing back up, muttering.[or]Ponyfriend scans the horizon, looking for something.[purely at random]"



Chapter 1 - Transit

Section 0 - Setup

Transit System is a list of objects that varies.

Transit is a region.  Transit Capsule is in Transit.  All transitStations are in Transit.  Station Corridor is in Transit.  Green Commercial Station is in Transit.  Green Residential Station is in Transit.  


The transit web is a thing.  The transit web is a backdrop.  It is in Green Residential Platform. It is in Reserve Bank Station.  It is in Green Commercial Platform.  It is in Green Service Platform. The transit web is large.  The description of the transit web is "Not really a web so much as a series of maglev rings linked by guides, the Transit Web is separated from the platform by a barrier fence with automatic doors which line up with Transit Capsule doors when a Capsule is in the station.  The Web rings glow faintly with the Magfield."

Instead of taking the transit web:
	say "You're already taking the subway." instead.
	
Instead of entering the transit web:
	say "A barrier fence with closed autodoors blocks your way." instead.


The Voodoo Subway is a thing.  The Voodoo Subway is a backdrop. The Voodoo Subway is large. The description is "A fifty-person maglev Transit Capsule.  The front window is dark, indicating that the capsule is running on automatic.  The Magfield causes a slight bluish glow around the bottom of the capsule.  Its doors are precisely level with the platform."

Instead of taking the Voodoo Subway:
	say "You're joking, right?".

Instead of entering the Voodoo Subway:
	say "You move into the Transit Capsule.";
	move the player to the Capsule instead.
	
Instead of exiting from the Transit Capsule:
	say "You exit the Transit Capsule.";
	move the player to the station of the Capsule instead.

Understand "the capsule" as the Voodoo Subway.
Understand "capsule" as the Voodoo Subway.

Definition:  A room is entrained if the station of the Capsule is it.

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
	if the location is the Capsule, say "A few commuters get on and off the Transit capsule."

Instead of going east in Reserve Bank Station during Transit Stop:
	if the location is the station of the Capsule:
		say "You enter the Transit capsule.";
		move the player to the Capsule;
	otherwise:
		say "You can't go into the Transit Web![line break]".

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
		say "You can't go into the Transit Web![line break]".

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
		say "You can't go into the Transit Web![line break]".
		
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
		say "You can't go into the Transit Web![line break]".
		
Instead of going north in Transit Capsule during Transit Stop:
	if the station of the Capsule is Green Service Platform:
		say "You exit the Transit Capsule.";
		move the player to the station of the Capsule instead;
	otherwise:
		continue the action.
		
[Transit Stop ends when the time since Transit Stop began is 3 minutes.]

Transit Stop ends when turn count is transitTurn.

When Transit Stop ends:
	if the location is the Station of the Capsule:
		say "[capsuleDepartureMessage of the Capsule]";
	otherwise if the location is the Transit Capsule:
		say "[capsuleDepartureMessage of the Capsule]";
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
		
[Transit Enroute ends when the time since Transit Enroute began is 3 minutes.]
Transit Enroute ends when turn count is transitTurn.

Transit Platform is a recurring scene.  Transit Platform begins when the location is a transitStation.

Every Turn during Transit Platform:
	if a random chance of 1 in 8 succeeds, say "[one of]A commuter walks by.[or]A public address system reminds you to be alert and 'if you see something, say something!'[or]You see a small mouse scurry along the Transit Web and vanish back into the tunnels.[or]A police officer strolls through the area, giving you a suspicious look before moving on.[or]A busker puts down his cap and pulls out a flute.  Before he gets more than a few notes out a pair of policemen hurry up and hustle him and his cap away out of sight.[as decreasingly likely outcomes]";
	if a random chance of 1 in 20 succeeds:
		unless the station of the Capsule is the location, say "Warning lights along the platform edge begin to blink rapidly.  A light grows in the tunnel.  With a deep moan and gust wind, an express Transit Capsule blasts through [the stationName of the location] and vanishes into the darkness once more.";
	if a random chance of 1 in 250 succeeds:
		unless the station of the Capsule is the location, say "Warning lights along the platform edge begin to blink rapidly.  A light grows in the tunnel.  With a deep moan and gust of wind, an express Transit Capsule blasts through [the stationName of the location].  To your shock, a human figure closely follows the Capsule, suspended in the Magfield of the Transit Web!  It is wearing mirrorshades and what appear to be glowing bracelets and anklets.  Before you can make out anything else, the Capsule has vanished into the darkness, leading its strange follower away.  You're not sure you really saw that."

Transit Platform ends when the location is not a transitStation.


Section 2 - The Capsule

The Transit Capsule is a room.  The Transit Capsule is unmapped. The Capsule has a room called the station.  The station of the Capsule is the Capsule.  The Transit Capsule has some text called capsuleArrivalMessage.  The capsuleArrivalMessage is "[if the location is a transitStation]A light grows in the tunnel.  [end if]With a deep thrumming and the whoosh of displaced air, the Transit Capsule slides smoothly into [the station of the Capsule] and comes to a stop, hovering in the Web.  The doors slide open and a few commuters enter and exit the capsule."  The Transit Capsule has some text called capsuleDepartureMessage.  The capsuleDepartureMessage is "The capsule doors slide shut.  The humming noice increases in volume, and the capsule slides out of the station, gathering speed as it goes, and slides into the tunnel."

The description of the Transit Capsule is "A fifty-person maglev Transit capsule.  You're standing, holding on to a strap.  [if the station of the Capsule is the capsule]A deep hum resonates through your bones, indicating that the Vectorfield is active.  Outside the narrow windows, the tunnel is dark.  Occasional blurry streaks show lights flashing past the moving Capsule.[otherwise]Through the windows you can see the [station of the Capsule].[end if]"

Instead of exiting when the player is in the Capsule:
	if the station of the Capsule is the Capsule:
		say "The capsule is moving through the Transit tunnels at high velocity.  You'll have to wait until it reaches a station.";
	otherwise:
		move the player to the station of the Capsule instead.
		
Before going outside when the player is in the Capsule:
	try exiting instead.
	
Before going inside when the player is in the station of the Capsule:
	move the player to the Capsule instead.



Chapter 2 - Green Residential


Section 3 - Map

Green Residential Platform is a transitStation.  The stationName of Green Residential Platform is "Green Residential".  The stationNumber of Green Residential Platform is 3. The description of Green Residential Platform is "Green Residential's platform serves mostly residential commuters.  There is an exit at the center of the platform which leads east through a set of closed automatic doors to a stairway leading up to the main station, just next to a large plaque with the name of the station on it.  The platform abuts the Transit web to the west[if the location is the station of the Capsule], where a Transit capsule hovers impatiently.  The capsule doors are open.[otherwise], now empty.[end if]".
Instead of going west in Green Residential Platform, say "You can't go into the Transit Web![line break]".

The Green Residential Station door is east of Green Residential Platform and below Green Residential Station.  The Green Residential Station Door is an autodoor.  The Green Residential Station door is closed. 

Instead of opening the Green Residential Station door:
	if the location is Green Residential Platform:
		say "The Eye Scanner laser delicately probes your iris to determine your identity.  The Reserve Bank Security Subroutine determines that you live in Green Residential, and the doors slide smoothly open.";
		now the Green Residential Station Door is open;
		the autodoors close in zero turns from now;
	otherwise if the location is Green Residential Station:
		if the MitKlein is unhacked:
			say "You're pretty sure that your last hacking session left a record of your Mitsui-Klein signature on various government computer systems.  Your retina print will get you on, but if you allow the autodoor to scan your MitKlein bottle, the police will know be able to link you to the hacking attempts.  You decide not to risk it." instead;
		otherwise:
			say "The Door Scanner scans your iris to determine your identity.  The Transit Security and Accounting Subroutine determines that you have a legitimate account with the Transit system, and the doors slide smoothly open.";
		now the Green Residential Station door is open.


Green Residential Station is above Green Residential Station Door.  The description of Green Residential Station is "This is a utilitarian (read: boring) facility intended mostly to keep the rain out of the Transit System.  A stairway leads down to the Transit platform and an exit leads east to the street."

Primrose & Cedar is east of Green Residential Station.  The description is "This staid neighborhood intersection of Primrose Lane and Cedar Street fronts the local Transit station, Green Residential.  The station doors are to the west.  Primrose Lane continues to the south, and Cedar Street continues to the east."

East Cedar Street is east of Primrose & Cedar.  East Cedar Street is blind.  The description is "Cedar Street comes to an end in a cul-de-sac here.  There are residential buildings to the north, east and south.  Typical for the area, they are three-family houses with common entrances.  Their lawns are neatly trimmed."

The residential buildings are a backdrop.  The residential buildings are in East Cedar Street.  The description is "A set of extremely boring residential buildings."

South Primrose Lane is south of Primrose & Cedar.  South Primrose Lane is unmapped. South Primrose Lane is blind.  South Primrose Lane can be reported or unreported.  South Primrose Lane is unreported. The description is "Primrose Lane, just in front of your home.  To the south is a boarded-up empty house; sumac trees can be seen peeking over the top of the dilapidated fencing.  The fence has a plastic tarp strung behind it which prevents you from seeing much of the house.  To the west is a single-family home with a large burglar alarm warning sign and an enormous dog on the front lawn.  To the east is your building's front path."

The warning sign is here.  The warning sign is fixed in place.  The warning sign is scenery.  The description is "It reads 'YOUR SKIN MUST BE THIS THICK (here there is a lifelike picture of a dog's tooth, perhaps an inch long) TO BURGLE THIS HOUSE.'  There is an arrow pointing down and to the side, which actually points at the dog."
Understand "sign" as the warning sign when the location is South Primrose Lane.
Understand "burglar sign" as the warning sign.
Understand "Alarm sign" as the warning sign.

The large dog is here.  The dog is fixed in place.  The dog is scenery.  The description is "This snoozing beast much mass thirty kilos or more.  Its ancestry appears to include Mastiff, Doberman Pinscher, Rottweiler and tribble. You have no desire to get anywhere near it."
Understand "dog" as the large dog when the location is South Primrose Lane.

Check touching the large dog:
	say "Uh…you really don't want to try that." instead.

Instead of taking the dog, try touching the dog instead.
Understand "pet [something]" as touching.

Instead of going west in South Primrose Lane, say "As you approach the lawn of the house, the large dog raises its head to look at you and growls, softly but very communicatively.  You decide discretion is the better part of valor and retreat.".

The fence is in South Primrose Lane.  The fence is scenery.  The fence can be either cut open or uncut.  The fence is uncut.  The description of the fence is "[if fence is uncut]A combination of cyclone fence and plastic sheeting, it blocks your view.  You can hear rustling from behind it, as of people moving around furtively.[otherwise] A combination of cyclone fence and plastic sheeting, there is a large hole cut in the middle."

Understand "behind fence" as the fence when the location is South Primrose Lane.

Before of going south in South Primrose Lane:
	unless the fence is cut open:
		say "You can't see any holes in the fence." instead;
	otherwise:
		continue the action.

Before cutting the fence:
	unless the player has the tag remover:
		say "You don't have anything to cut it with." instead;
	otherwise:
		continue the action.

Carry out cutting the fence with something:
	if the noun is cut open, say "There is already a hole in the fence large enough to slip through." instead;
	if the second noun is the tag remover:
		say "You carefully cut through several strands of the fence until you have an opening big enough to slip through and slice a rent in the backing plastic.";
		now the noun is cut open;
		now South Primrose Lane is mapped;
	otherwise:
		say "What do you want to cut it with?" instead.		

instead of cutting the fence:
	say "What do you want to cut it with?" instead.

instead of climbing the fence:
	say "The gaps are too small for your toes and you're not strong enough to climb it with only your fingers." instead.

The Drug Market is south of South Primrose Lane.  The Drug Market is blind. The description of Drug Market is "Standing just south of the fence, you see an abandoned house on the south side of the lot. The front yard is a mess of trash and litter.  [if Drug Market is raided]The area is empty of people; yellow police line tape covers the empty front doorway.[otherwise]A few people are hanging around the closed front door.  They are looking at you with unfriendly stares."

The denizens is here.  The denizens is scenery.  The description of the denizens is "This small group of locals is clustered around the front entryway.  They're quite intimidating, and you don't want to draw they attention to you.  At all."

Understand "the people" as the denizens when the location is Drug Market.
Understand "locals" as the denizens when the location is Drug Market.

Instead of speech when the noun is the denizens:
	say "They give you stony looks before turning away." instead.

Before going south in Drug Market:
	unless Drug Market is raided:
		say "Your path is blocked by two hostile-looking types.  One is clearly holding a gun behind his back.  Deciding you're not that curious, you retreat." instead;
	otherwise:
		continue the action.
		
The Drug Den is south of Drug Market.  The Drug Den is blind. The description is "The empty ruins of a drug market hangout.  The SWAT team's breaching charges have blown the heavy metal main door into the hallway.  The house is thoroughly trashed, and rubble prevents you from moving any further into the building.  Discarded drug paraphernalia and random trash litters the floor."
The metal door is here.  The metal door is fixed in place. The description of the metal door is "Bent and blackened, the armored door survived the breach but was blown into the interior of the house.  The handle is blown off.[if the metal door is charged]  As you lift the edge of the door to look underneath it, you see what looks like an undetonated breaching charge still attached to it!".

Front Path is east of South Primrose Lane.  Front Path is blind. The description is "Your front path is paved with cracked flagstones, one of the few concessions to a sense of style that your absentee, never-to-be-seen landlord has made.  Primrose Lane is to the west, and your building is to the east."
The mailbox is here.  The mailbox contains a newspaper.

The House door is east of Front Path and west of Home Lobby.  The House door is an autodoor.  The House door is closed.

Home Lobby is east of the House door.  Home Lobby is blind.  The description is "The slightly shabby front lobby of your building.  A door leads outside to the west, gated stairs leading up to the upper two floors are to the east, and your apartment door is to the south."
Instead of going east in Home Lobby, say "You can't open the security gate." instead.
Instead of going up in Home Lobby, say "You can't open the security gate." instead.

The security gate is in the Home Lobby.  The security gate is scenery.  The description of the security gate is "A worn but imposing gate of metal bars.  It is locked."

Check taking the security gate:
	say "You rattle the bars for a few seconds before giving up." instead.
	
Check opening the security gate:
	say "It's locked." instead.

The Front door is south of Home Lobby and north of Entry.  The Front door is an autodoor. The Front door is closed.  The description is "Your apartment front door.  It is metal-reinforced wood, and has a single lock with multiple throw bars, controlled by an eye scanner."

Before opening the front door, say "You permit the apartment door scanner to scan your eye."

The Entry is south of the Front door.  The Entry is blind.  The description is "This is the small entryway to your apartment. A pile of mail, most of it unread, covers the small table just inside your front door.  The apartment hallway is to the south.  To the west is your office, and to the east is your bathroom."
There is a side table in the Entry.  The car key is on the side table.  The mail is on the side table.  The mail is scenery.  The description of the mail is "Totally boring."
Instead of taking the mail, say "You're just not interested in bills and advertisements." instead.

The Home Office is west of The Entry.  The home office is blind.  The description is "Your home office, a room which in other homes might be a living room, is not very tidy.  Books, random equipment and empty soda cans cover most available surfaces except for your workbench[if the workbench supports the laptop] and your laptop.[otherwise]."

The workbench is a supporter. The workbench is in the Home Office.  The description is "You built your workbench from found materials a few years ago.  It's actually a very nice piece of furniture; just the right height, easy to get your legs under. "

Understand "bench" as the workbench.

The Hall is south of the Entry.  The Hall is blind. The description is "The central hallway of your modest home.  It's relatively clean and neat, as there is no furniture in it."

The Bathroom is east of the Entry and north of the Bedroom.  The Bathroom is blind. The description is "Your home only has the one bathroom, which means that the fact that it's not very clean is somewhat embarrassing.  Or at least, it would be if you had any visitors."

The Bedroom is east of the hall and south of the Bathroom.  The bedroom is blind.  The description is "Your bedroom is rather boring.  It contains your bed - currently unmade - and the usual assortment of bedroom furnishings including a bedside table, next to the bed."

The bedside table is a supporter.  The bedside table is in the Bedroom.  The bedside table is scenery. The description is "A cheap but sturdy bedside table, which has so far withstood your daily blind smashings at the alarm in your watch.  There is a table lamp atop it."

The bed is a supporter.  The bed is in the Bedroom.  The bed is scenery.  The description is "A basic, functional flat-pack bed.  A slight imprint in the shape of your body can be seen in the center."

Check entering the bed:
	say "You're not sleepy, and the bed isn't comfortable otherwise." instead.

The table lamp is a device on the bedside table.  The table lamp is scenery.  The table lamp is fixed in place. The description is "A generic compact flourescent lamp, it has rested next to your bed for years.  You finally screwed it to the table after knocking it over for the fifth time whilst flailing for your watch alarm.[if table lamp is switched on]  It is presently giving off a wan bluish light."


The Kitchen is south of the Home Office and west of the Hall.  The Kitchen is blind. The description is "Your kitchen is decorated in a style some four decades old, which is probably when it was last renovated.  It is fairly clean, reflecting the fact that you don't cook for yourself much."


Chapter 3 - Green Commercial

Section 3 - Map

Green Commercial Platform is a transitStation.  The stationName of Green Commercial Platform is "Green Commercial One".  The stationNumber of Green Commercial Platform is 2. The description of Green Commercial Platform is "Green Commercial One is one of the oldest stations on the Transit web.  Although it has been refurbished several times, its age still manages to show through the layers of tile and paint.  The platform opens out at the middle to a lobby area which is dominated by a row of automated doors to the south, which lead to stairways up to the main station.  The flow of commuters moves steadily through these doors, with each person turning their head to the right as they approach for the eye scanner to verify their identity before opening the portal long enough for them to slip through.  The floor and walls are both extremely scuffed duramex nanotile, and the station name (Green Commercial One) is indicated on a large plaque set into the walls. The platform abuts the Transit web to the north[if the location is the station of the Capsule], where a Transit capsule can be seen hovering.  The capsule doors are open.[otherwise], now empty.[end if]". 
Instead of going north in Green Commercial Platform, say "You can't go into the Transit Web![line break]".

The Green Commercial Station door is south of Green Commercial Platform and below Green Commercial Station.  The Green Commercial Station door is an autodoor.  The Green Commercial Station door is closed.

Green Commercial Station is above the Green Commercial Station door.  The description is "Green Commercial One's Transit station usually does most of its business around the rush hours, as Green Residental commuters stop off to take care of errands.  The station is relatively small, but well kept up - the Green Commercial Business Improvement District organization sees to that.  Doors lead south to Green Commercial One proper, and a stairway leads down to the doors to the Transit platform."
[BFR - handle platform movement?  down/north change?  Handle autodoor validation?]

Green Commercial Plaza North is south of Green Commercial Station.  The description is "Green Commercial One is built around a plaza, and this is its northern end.  No vehicles are permitted within the public areas of Green Commercial One, so the entire area is pedestrian-only.  To the north are the doors to the Green Commercial Station.  To the east is the NanoMart.  To the west is a storefront bank with an ATM.  The plaza continues to the south."
There is a trash can in Green Commercial Plaza North.

Green Commercial Plaza Center is south of Green Commercial Plaza North.  The description is "This is the center of the Green Commercial Plaza.  There is a fountain here with a pair of benches facing it.  The plaza continues to the north and south; to the east is a bar called (ironically, you hope) the Proletariat.  To the west is a Bistro Paris cafe."
There is a trash can in Green Commercial Plaza Center.
[BFR - handle benches and fountain.]

Green Commercial Plaza South is south of Green Commercial Plaza Center.  The description is "The southern end of the Green Commercial Plaza, which continues to the north.  To the east is Accessorize, a fashion store, and to the west is Garb-oh, a trendy clothing shop.  The south end of the mall is closed off by an elaborate landscaping installation of trees and shrubs, presumably to hide a relatively ugly building behind it."
There is a trash can in Green Commercial Plaza South.

Instead of going south in Green Commercial Plaza South, say "You can't find a path between the shrubs."

A room called The Bank is west of Green Commercial Plaza North and northwest of Green Commercial Plaza Center.  The description of The Bank is "This is a completely nondescript bank storefront which exists solely to house an ATM.  It's so nondescript, in fact, you can't even really tell which bank owns it, probably to ensure that they can charge you access fees no matter what.  To the east is Green Commercial Plaza."

The ATM is a device.  The ATM is in The Bank.  The ATM is fixed in place.  The ATM can be hacked or unhacked.  The ATM is unhacked. The description is "This is a standard ATM, using palm prints or Mit-Klein authentication to permit customers to perform banking transactions. A palm reader juts out from the front of the console."
The palm reader is a part of the ATM. The palm reader is a container.  The palm reader is open. The palm reader is scenery.  The description is "This is a standard palm reader, which is used to verify the identity of the ATM customer.  A flat plate, slightly inset, it is placed at a convenient angle to allow the palm to lie  against it.  This one, however, has a broad crack in it across which someone has written 'KAPUT' in black marker."
Instead of inserting into the palm reader:
	if the noun is the tissue sampler:
		say "You carefully fit the tissue sampler into the hollow of the palm reader so that it lies over the read area.";
		now the tissue sampler is in the palm reader;
		now the ATM is hacked;
	otherwise:
		say "You can't put that in a palm reader!".


Instead of switching on the ATM:
	unless the tissue sampler is in the palm reader, say "The palm reader appears to be broken; it does not respond." instead;
	if the actor is the player:
		say "You start to reach out to use the ATM, but the machine is unable to contact your MitKlein Encapsulation.  It flashes a red light and shuts off." instead;
	otherwise:
		if the location is The Bank:
			say "[the actor] presses a palm to the ATM's palm reader.   Presumably, they complete their transaction to their satisfaction, although you can't see from where you are." instead.


The NanoMart is east of Green Commercial Plaza North and northeast of Green Commercial Plaza Center.  The description is "This brighly-lit shop is an altar to the notion of instant gratification.  Everything from cheap, hot coffee to ice cream and frozen lunches is available, provided you don't mind your purchases being relentlessly catalogued by the NanoMart Corporation.  You stopped shopping here after they told you you couldn't buy a coffee without using biometric authentication."

The Proletariat Bar is east of Green Commercial Plaza Center and southeast of Green Commercial Plaza North and northeast of Green Commercial Plaza South.  The Proletariat Bar is blind. The description of the Proletariat Bar is "The Proletariat is a local bar (not a pub).  It's just far enough above a 'dive' to be allowed zoning here, but steadfastedly refuses to cater to upscale tastes.  You like it.  Restrooms are to the east; the bar runs along the north side, a jukebox sits against the back wall, and the rest of the space is filled with bar tables.  A few hardy drinkers sit here, communing with their spirits.  In a nod to the place's name, a Public Surveillance Notice covered with stickers and graffiti tags has been framed above the bar."

The Proletariat restroom is east of the Proletariat Bar.  The Proletariat restroom is blind. The description of the Proletariat restroom is "The one-holer restroom at the Proletariat is cleaner than you might think, although that may be due to the fact that it is midweek.  A scratched mirror over the sink has been covered with marker graffiti."
There is a trash can in the Proletariat restroom.
The Bar mirror is here.  The Bar mirror is a mirror.  The description is "This is a cheap but sturdy mirror, attached to the wall.  Its surface is nearly covered (except for a spot in the center, where you can see your own face) with scratches and permanent marker scrawls.  One graffito catches your eye near the bottom, but you'd have to look closely to make it out fully."

The Green Commercial Bistro Paris is west of Green Commercial Plaza Center and southwest of Green Commercial Plaza North and northwest of Green Commercial Plaza South.  The description is "This is a branch of the popular lunch and coffee shop Bistro Paris.  Counter service is available for pastries, drinks and light sandwiches. There are a few tables near the front for sit-down meals.  A restroom is to the west.  On the north wall, opposite the service counter, is a collection of Paris-themed prints.  In the center is a large holoportrait of the chain's owner, Zuzu, and a sign claiming that the Bistro Paris has restaurants here, in the Reserve Bank Spacescraper, and in London."
There is a trash can in the Green Commercial Bistro Paris.
The portrait is here.  The portrait is scenery.  The description is "This portrait is somewhat horribly overdone.  In it, Zuzu's face, in three-quarter profile, floats in front of what appears to be this very restaurant.  Her face is so large and detailed that you're sure they had to edit out her pores, although they probably left her bright green eye unretouched."
Zuzu's eye is a part of the portrait. Zuzu's eye is scenery.  The description of Zuzu's eye is "Zuzu's eye is bright emerald green, which is easy to see as she is looking wide-eyed into the camera."
Understand "the eye" as Zuzu's eye when the location is Green Commercial Bistro Paris.
Understand "the eyes" as Zuzu's eye when the location is Green Commercial Bistro Paris.
Understand "Zuzu's Eyes" as Zuzu's eye when the location is Green Commercial Bistro Paris.
Understand "the holoportrait" as the portrait.
Understand "holoportrait" as the portrait.

The Bistro Paris Restroom is west of Green Commercial Bistro Paris.  The Bistro Paris Restroom is blind. The description is "This public restroom is squeakily clean, as befits Bistro Paris' image.  A pair of stalls offer minimum privacy, and a large mirror is affixed over the double sink.  Despite the best efforts of the staff, a bit of graffiti seems to have made it onto the mirror."
The Bistro Paris mirror is here.  The Bistro Paris mirror is a mirror.  The description is "This mirror is large and very clean, although near the bottom right a small permanent marker graffito catches your eye."

The Accessorize is east of Green Commercial Plaza South and southeast of Green Commercial Plaza Center.  The description is "This well-lit store purveys all manner of cosmetic aids and fashion accessories.  Everything from wrist bangles to skin creams to custom cosmetic contacts can be purchased here."

The Garb-oh door is an autodoor.  The Garb-oh door is west of Green Commercial Plaza South and east of Garb-oh.  The description is "A thick glass autodoor with built-in eye scanner.  A discreet warning sign on the door indicates that theft protection is in use."

Before going through the Garb-oh door:
	if the player is thieving:
		say "As you approach the autodoor, a cyclone light goes off, triggered by the antitheft tag you are carrying!  The attendant hurries over as a policeman rushes in.  The tag is swiftly found!";
		end the story saying "You have been arrested!";
	otherwise:
		continue the action.

Garb-oh is west of the Garb-oh door.  The description is "Garb-oh! is a trendy clothing shop.  Images of the shop's icon Greta Garbo abound, each dressed in the clothing item offered on the rack below it.  Jackets, scarves, bandannas, trousers, shirts and more are on inviting display."

The racks is a supporter.  The racks is in Garb-oh.  The racks is scenery.  The description is "Garb-oh has the latest in shiny, innocuous chromed clothing racks."

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
		say "You try to move behind the sales counter, but the shopkeeper glares at you and blocks the way!" instead.

Before going south in Garb-oh:
	if the sales counter encloses the player:
		say "You move out from behind the sales counter.";
		now the player is in Garb-oh instead.

Chapter 4 - Green Service

Section 3 - Map

Green Service Platform is a transitStation.  The stationName of Green Service Platform is "Green Service One".  The stationNumber of Green Service Platform is 3. The description of Green Service Platform is "Green Service One's platform is underground.  It serves mostly city workers during the day.  There is an exit at the center of the platform which leads north through a set of closed automatic doors to a stairway leading up to the main station, just next to a large plaque with the name of the station on it.  The platform abuts the Transit web to the south[if the location is the station of the Capsule], where a Transit capsule hovers impatiently in the web.  The capsule doors are open.[otherwise], now empty.[end if]".
Instead of going south in Green Service Platform, say "You can't go into the Transit Web![line break]".

The Green Service Station door is north of Green Service Platform and below Green Service Station.  The Green Service Station door is an autodoor.  The Green Service Station door is closed.

Green Service Station is above the Green Service Station door.  The description is "Green Service is the local government services cluster.  The Transit station seems to reflect this, exhibiting a weary conformity - although you couldn't say exactly how.  A stairway leads down to the platform access doors, and a set of doors lead north out onto Government Square."

Government Square South is north of Green Service Station.  The description is "This is the southern half of Government Square.  Several benches and landscape features are scattered throughout the area.  A roadway approaches from the west, loops north around the square and continues to the east.  Groundcars move back and forth along the road, mixed with official vehicles such as police cars, ambulances and the ubiquitous slightly shabby black flitters used by government agencies.  The doors to Green Service Transit station are to the south.  Across the road to the east is Green Hospital's driveway.  The Hospital's main entrance is to the northeast.  The square continues to the north.  To the northwest, across the road on the other side, is the front steps of the local police station."

Government Square North is north of Government Square South.  The description is "The north half of Government Square is surrounded on three sides by road.  Groundcars trundle back and forth, and the occasional flitter whines down to or screams up from flitter pads near the buildings across it.  The hospital driveway is to the southeast, across the road; the hospital entrance to the east and the police station to the west.  To the north is the steps to the Civil Center, the local government office building."

Hospital Driveway is east of Government Square South and southeast of Government Square North and south of Hospital Entrance.  The description is "The driveway and parking area for the Hospital ER, which lies directly to the east.  To the north is the main entrance to the Hospital building."

After going to Hospital Driveway:
	If the player is flitterEnabled:
		now the ambulance is unlocked;
		say "The ambulance flashes its lights twice as the locklarm unlocks the back.";
	continue the action.

After inserting into the car key when the location is Hospital Driveway:
	If the player is flitterEnabled:
		now the ambulance is unlocked;
		say "The ambulance flashes its lights twice as the locklarm unlocks the back."

After going from Hospital Driveway:
	now the ambulance is closed;
	now the ambulance is locked;
	continue the action.

The ER door is east of Hospital Driveway and west of Triage.  The ER door is an autodoor.  The ER door is closed.

Hospital Entrance is north of Hospital Driveway and northeast of Government Square South and east of Government Square North.  The description is "This is the front entryway pavilion of the local hospital.  The automatic entryway doors are to the east, and the ER entrance and driveway is to the south."

The Hospital door is east of the Hospital Entrance and west of the Hospital Lobby.  The Hospital door is an autodoor.  The hospital door is closed.

Hospital Lobby is east of the Hospital door.  The description is "This is the main entrance to a busy regional hospital.  Patients and staff ruhs back and forth, all too busy to pay you any attention.  To the south is an archway with a sign reading 'TRIAGE'; to the east is the elevator core and to the north is the waiting lounge."

Hospital Lounge is north of Hospital Lobby.  Hospital Lounge is blind. The description is "This lounge is full of marginally-comfortable seating and antiquated magazines.  A door to the east reads 'LAB' and the main lobby is to the south."

Hospital Lab is east of Hospital Lounge.  The description is "This is an all-purpose pathology laboratory receiving area.  The lab itself is behind a bulletproof glass wall to the east, and a small window allows samples or paperwork to be passed back and forth."
There is a trash can in the Hospital Lab.

Triage is south of Hospital Lobby and east of the ER door and west of the Emergency Room.  The description is "This is a triage area for the ER to the east.  To the north is the main Hospital lobby, and west lies the automatic doors out to the driveway."

The Emergency Room is east of Triage and south of the Hospital Elevators.  The description is "This is a prep and emergency treatment area for the emergency ward to the east, which is locked.  Triage is to the west, and a door leads north."

Hospital Elevators is north of the Emergency Room and east of Hospital Lobby.  The description is "The main elevator bank for the hospital seems to require either an appropriate Mit-Klein scan or a hospital ID to swipe.  The lobby is to the west.  The ER is through a door to the south, and a restroom is to the east."

Hospital Restroom is east of Hospital Elevators.  Hospital Restroom is blind. The description is "A clean restroom that smells strongly of disinfectant and hand sanitizer.  There is a single sink with a small mirror over it and a single stall."
There is a trash can in the Hospital Restroom.
The Hospital mirror is a mirror. The Hospital Mirror is in the Hospital Restroom. The description is "A small oval mirror set at an angle for those in wheelchairs, which forces you to hunch down slightly.  A blue permanent marker graffito is visible at the very bottom if you look carefully."

Civil Center Steps is north of Government Square North.  The description is "This is the front steps of an impressive government building.  Civil servants hurry in and out through the security checkpoint, going about their business."
Instead of going north in Civil Center Steps, say "In order to pass the checkpoint, you would need to have a Government authorized Mitsui-Klein signature.  Realizing this, you retreat."
Instead of going up in Civil Center Steps, say "In order to pass the checkpoint, you would need to have a Government authorized Mitsui-Klein signature.  Realizing this, you retreat."

Police Station Steps is west of Government Square North and northwest of Government Square South.  The description is "These are the busy steps of the local police station.  To the east and southeast is Government Square, while the police station lies at the top to the west. Uniformed police and people in plain clothes are traversing the steps to exit and enter the building."

Front Desk is west of Police Station Steps.  The description is "This is the front desk of the police station. A harried sergeant is manning the desk, and are so busy they don't even have time to give you more than a brief scowl.  To the north is a security gate leading into the police station proper, and to the south is an open area with a sign reading 'BOOKING.'"

Booking is south of Front desk.  The description is "This area is used for processing prisoners…er, excuse me, suspects, and as a waiting lounge.  There is a single hard bench, now empty, and a counter along the south wall with all manner of stern posters posted above it.  One area has been kept clear and is a neutral pale blue, presumably to be used as a backdrop for photographing suspects."



Chapter 5 - Reserve Bank

Reserve Bank Station is a transitStation. The stationName of Reserve Bank Station is "Reserve Bank". The stationNumber of Reserve Bank Station is 1. The description of Reserve Bank Station is "The Reserve Bank Transit Station. The platform opens out at the middle to a lobby area which is dominated by a row of automated doors to the west.  The flow of commuters moves steadily through these doors, with each person turning their head to the right as they approach for the eye scanner to verify their identity before opening the portal long enough for them to slip through.  The floor and walls are both clean duramex nanotile, and the station name (Reserve Bank) is indicated on large plaques set into the walls.  At either end of the platform, closed gates guard against any entry into the slideway tunnels. A platform abuts a Transit web[if the location is the station of the Capsule], where a Transit capsule can be seen hovering.  The capsule doors are open.[otherwise], now empty." 

Instead of going east in Reserve Bank Station, say "You can't go into the Transit Web![line break]".

The Reserve Bank Station door is west of Reserve Bank Station and east of Station Corridor.  The Reserve Bank Station Door is an autodoor.  The Reserve Bank Station door is closed. 

Instead of opening the Reserve Bank Station door:
	if the location is Station Corridor:
		say "The Eye Scanner probes your eye and deducts Transit fare from the account associated with your iris pattern.";
		now the Reserve Bank Station Door is open;
		the autodoors close in zero turns from now;
	otherwise if the location is Reserve Bank Station:
		if the player is not wearing the contact lens:
			say "The Eye Scanner laser delicately probes your iris to determine your identity.  The Reserve Bank Security Subroutine determines that you have no legitimate reason to enter the Reserve Bank spacescraper.  A harsh buzzer sounds and the door remains locked.";
		otherwise if the player is wearing the contact lens:
			say "The Eye Scanner scans the iris printed on the contact lens to determine your identity.  The Reserve Bank Security Subroutine determines that 'you' have a legitimate reason to enter the Reserve Bank spacescraper, and the doors slide smoothly open.";
			now the Reserve Bank Station door is open.


Station Corridor is west of the Reserve Bank Station Door.  "The corridor widens as it terminates at the automatic doors to the Reserve Bank Station, which lies to the east.  We Morlocks trundle to and fro without speaking to each other, in fear of camera and of mike and of might Eloi paycheck-cutting wrath.  Although traffic is overwhelmingly to the west, there are two doors reserved for traffic into the station, indicated by green lightbars overhead, whose access scanners are active."  

The Dining Area is a region.  Food Court and Reserve Bank Bistro Paris and I Have No Mouth and The Sheep Look Up and Tacos Terriff and Apollo's are in the Dining Area.

Food Court is west of Station Corridor.  "The center of the Food Court beneath the Reserve Bank spacescraper is a busy place at all times of the day.  Around the periphery are several food stand franchises, some doing a brisk business.  Hundreds of people are here waiting in line at the food stands, sitting at the dozens of tables in the center, or just passing through from the Reserve Bank Station to the Lift Lobby up a ramp to the west or vice versa.  The floor is made of duramex tiles, nondescript gray matte shedding scuff marks with the determination of the designed servant into nanogrout channels in between.  During the short nighttime lull, the floor will seem to creep slightly as the nanogrout slowly flows the daytime grime along the channels to dispose of it into the walls."  
There is a trash can in the Food Court.
Instead of going up in the Food Court, try going west instead.

Lift Lobby is west of Food Court.  "The Lift Lobby controls underground access to the Reserve Bank spacescraper, beneath the towers of industry and capital made pillars of money and sin.  Hundreds of people rush to and fro through the lobby on their way into or out of the building.  To the north is a large bank of bouncelifts, their liftfields on and glowing faintly blue behind security gates.  Access to the bouncelifts is controlled by Lift Scanners, set above and to the right of each bouncelift entry.  There is no ceiling; several meters up, the room opens out into the street level lobby above.  There is a railing around the perimeter of the floor above; several people are leaning against or over it, watching the flow of commuters below them and around you.  The Atrium, a wide open area extending at least halfway up the spacescraper, is visible above that. There is no way to reach the street lobby from here other than via the bouncelifts. A shallow ramp leads east down to the Food Court." 
Instead of going up in the Lift Lobby, say "You can't go that way."
Instead of going down in the Lift Lobby, try going east instead. 

The Powered Platform is an enterable supporter in the Lift Lobby.  The Powered Platform is fixed in place. The description of the Powered Platform is "This is a platform with motorized winches resting near the south wall.  Judging from the equipment locked to it, it is used to clean the walls and windows of the Atrium.  A locked-down control winch control is at one end, and there is a safety railing around the edge."
The winch control is a device.  The winch control is part of the Powered Platform.  The description of the winch control is "A simple control panel, used for winding or unwinding cables and thus raising or lowering the platform.  It seems to be shut off.  A keylock is set to 'OFF.'"
The keylock is part of the winch control.  The description of the keylock is "It's a simple keyslot.  It's set to 'OFF.'"
The railing is a part of the Powered Platform.  The description of the railing is "A metal safety fence around the platform."

Check entering powered platform:
	unless the player is camoflaged, say "Before you can step up onto it, the security guard rushes over and shoves you away from the platform, glaring at you." instead;
	say "The security guard looks over, sees your maintenance jacket and gives you a nod."
	
Check taking the spool:
	unless the player is on the powered platform, say "You can't reach it from outside the railing." instead.

Check climbing the railing:
	say "It nearly encloses the platform.  There's no point." instead.

Reserve Bank Bistro Paris is north of Food Court and east of Maintenance Area and west of I Have No Mouth.  "Bistro Paris is a well-known faux French eatery offering somewhat soggy croissants and mediocre coffee alongside such wonders as coq au vin served in white styrofoam.  Sadly, it appears that it does not sell wine, which might go some way towards relieving the disappointment any gourmand feels when faced with the prospect of eating here.  There are two workers behind the counter serving a line of customers. A sign behind the counter reads 'Try our Green Commercial One location!'[line break]"

I Have No Mouth is northeast of Food Court and east of Reserve Bank Bistro Paris.  "I Have No Mouth (but Ice Cream) is a popular frozen dessert chain.  Despite the somewhat disturbing corporate artwork and iconography, this counter offers a selection of solid flavors including Chocolate AMmond, PostApocalicks and We've All Gone Tutti-Frutti.  Two scoopers behind the counter are smoothly dishing up cones and cups to a large crowd of midday sweet-seekers."

A room called The Sheep Look Up is southeast of Food Court and east of Tacos Terriff and south of I Have No Mouth.  "The Sheep Look Up is a gyros restaurant, featuring small cartoon sheep heads looking imploringly up from the steam table behind the glass.  Two surly employees are hard at work slicing gyros and constructing sandwiches and lunch platters for the several dozen hungry customers who wait in line."

Tacos Terriff is west of The Sheep Look Up and south of Food Court.  "Tacos Terriff is a bare-bones Mexicalitexazonan food joint.  Meat product is scooped into grain-plastic shells and covered with various unidentifiable industrial sauces and shredded veggies.  Despite this, it seems to have a dedicated following, as it is doing land-office business with the lunch set."

Apollo's is west of Tacos Terriff and southwest of Food Court and south of Maintenance Area.  "Apollo's Coffee is done up in fake Ancient Greek, as befits its name. Plastic busts and columns adorn its facade.  For some reason, there is a silver robotic head behind the counter, mounted on the wall, where a red scanning laser moves monotonously back and forth." 

Maintenance Area is west of Reserve Bank Bistro Paris and northwest of Food Court and north of Apollo's.  Maintenance Area is blind. "This corner of the food court is drab and uninhabited.  A closed door marked 'MAINTENANCE' lurks to the west, and another marked 'RESTROOM' to the north.  The floor and walls are scuffed around the door, no doubt from cleaning implements banging against them on their daily travels."

The Food Court Restroom Door is north of Maintenance Area and south of Food Court Restroom. The Food Court Restroom Door is a door. The Food Court Restroom Door is scenery.

A room called Food Court Restroom is north of the Food Court Restroom Door.  "Bog-standard restroom.  Several stalls offer a minimum of privacy."  There is a trash can in the Food Court Restroom.

The Maintenance Door is west of Maintenance Area.  The Maintenance Door is an autodoor. The Maintenance Door is scenery.  The description is "The maintenance closet is sealed by an autodoor.  There is no eye  on this door, but a flat plate above the door handle indicates a palm scanner lock."

Before opening the maintenance door in the Maintenance area:
	unless the player is handvalid:
		say "The palm lock ignores you. The door remains firmly closed." instead;
	otherwise:
		say "You press your doctored palm against the scanner.  The lock clicks open.";
		continue the action.
	

Utility Closet is west of the Maintenance Door. Utility Closet is blind. The description is "The maintenance closet is dimly lit and, ironically, not terribly clean.  There are various cleaning implements and supplies stored on shelves around the walls, a fire equipment wall rack, and a large metal solvents cabinet taking up one wall.  A flourescent light panel flickers wanly in the ceiling. Two doors lead out of the closet, one east and one west."

The Solvents Cabinet is in the Utility Closet.  [The Solvents Cabinet is a thing.] The Solvents Cabinet is scenery.  The description of the Solvents Cabinet is "A large metal cabinet with several industrial warning icons on it occupies one wall. This cabinet is apparently used to store toxic cleaning and plumbing chemicals.  It seems to be locked."

The cleaning equipment is in the Utility Closet.  The cleaning equipment is scenery.  The description of the cleaning equipment is "A collection of half-empty bottles and jugs and some very well-used mops, brooms and rags."
Understand "supplies" as the cleaning equipment when the location is Utility Closet.

Check taking cleaning equipment:
	say "You can't carry all that, and indeed don't want to." instead.

Check pushing cleaning equipment:
	say "There's quite a bit of it, and you'd rather not pick it up without a HAZMAT suit." instead.

Check opening the Solvents Cabinet: 
	say "It's firmly locked, and you can't find a visible locking mechanism.  It must have a MitKlein scanner on it." instead.

The wall rack is in the Utility Closet.  The rack is a supporter. The rack is scenery. The description is "A set of wall-mounted hooks[if the fire axe is on the rack], holding a fire axe.[otherwise], which are meant to hold a fire axe."

Maintenance Corridor is west of the Utility Closet.  Maintenance Corridor is blind.  The description is "This is the middle of a short corridor running north to south.  The walls are gray-painted cinderblocks and have many scuff marks and scars.  The floor is an industrial non-slip surfaced concrete.  A door to the east is marked 'STORAGE.'"

North End of Maintenance Corridor is north of Maintenance Corridor.  North End of Maintenance Corridor is blind.  The description is "The corridor comes to an end here.  To the north is large door marked 'HVAC ACCESS' which is closed and securely locked.  A bulletin board on the wall to the right contains a dizzying array of official Workplace Notices, all of which bear the symbol of the Health and Safety Board."

South End of Maintenance Corridor is south of Maintenance Corridor. South End of Maintenance Corridor is blind.  The description is "The corridor extends to the north from here.  To the east is a service bouncelift."

Bottom of Service Bouncelift is east of South End of Maintenance Corridor.  Bottom of Service Bouncelift is blind.  "Inside the Service Bouncelift, the blue glow of the liftfield illuminates the two-meter cylinder.  Here at the bottom, there is an exit to the west."
Before going west from Bottom Of Service Bouncelift, say "You swim through the liftfield towards the exit, grasping the safety handle and swinging out of the bouncelift."
Before going up from Bottom of Service Bouncelift, say "You move to the up half of the cylinder and the liftfield wafts you upwards.  This service bouncelift has no intervening exits, so you are in the lift for some time before the top end comes into sight."

Top of Service Bouncelift is above the Bottom of Service Bouncelift.  Top of Service Bouncelift is blind. "Here at the top of the Service Bouncelift, there is an exit to the east."
Before going east from Top of Service Bouncelift, say "You angle yourself towards the door.  The liftfield gently moves you to the edge of the tube, and you swing yourself out of the lift via the safety handle."
Before going down from Top of Service Bouncelift, say "You move to the down half of the cylinder and the liftfield allows you to sink downwards.  This service bouncelift has no intervening exits, so you are in the lift for some time before the top end comes into sight."

Bouncelift Vestibule is east of Top of Service Bouncelift.  Bouncelift Vestibule is blind.  The description of Bouncelift Vestibule is "The service bouncelift opens onto a small vestibule, not much larger than the size of a closet.  A sign painted on the wall reads 'LEVEL 35 - MEZZANINE'. There is an automatic door with an eye scanner to the east.  A small selection of fire safety tools is mounted to the wall."

Office Corridor is east of Bouncelift Vestibule.  The description of Office Corridor is "You are in the middle of a nondescript office corridor.  To the west is a security door to the service bouncelift.  To the north is a door reading 'RESTROOM'.  The corridor continues to the east."

Office Restroom is north of Office Corridor.  The description of Office Restroom is "This is a restroom.  Since it is within corporate space, it is decorated a notch above most public restrooms.  You still wouldn't eat off the floor, though.  Also, unlike public restrooms, it seems to be under surveillance.  You're gratified to see that even this restroom doesn't seem to be safe despite that - a small graffito lurks on the left side of the mirror over the sinks."
There is a trash can in the Office restroom.
The Office mirror is a mirror.  The Office mirror is in the Office Restroom.  The description is "A wall-covering mirror bolted over the sinks.  Although it is free of fingerprints and grime, you note that even the surveillance warning has not prevented a small scrawl of marker graffiti on the left edge."

Seating Area is east of Office Corridor.  The description of Seating Area is "The corridor ends in a small open seating area.  Through the windows the myriad internal windows of the spacescraper's other suites can be seen.  There is a door leading north, presumably to the rest of the office space.  It is closed and locked.  [if the Balcony Door is intact]A pair of French doors lead east out to a balcony on the spacescraper's hollow core.[otherwise]The wreckage of a pair of French doors hangs in a doorway which leads east out to a balcony." 

The Balcony Door is in the Seating Area.  The Balcony Door is scenery.  The Balcony Door can be axed or intact. The Balcony Door is intact. The description is "[if intact]A pair of French doors made of nano-reinforced wood with durapane windows.[otherwise]The remains of a pair of French doors, wood frames split and broken and durapane windows shattered."

Before going from the Seating Area to Atrium Balcony:
	if the Balcony Door is intact:
		instead say "The doors to the balcony are closed and securely locked.";
	otherwise:
		say "You squeeze through the jagged hole in the balcony doors onto the balcony.";
		continue the action;
		
Atrium Balcony is east of the Seating Area.  The Atrium Balcony is unmapped. The description of Atrium Balcony is "This balcony, along with the others at the Mezzanine level, looks out over the huge hollow core of the Reserve Bank spacescraper's lower third.  The central column containing the main bouncelifts is visible perhaps fifty meters away.   Above, the roof of the atrium is hazily visible through the glare from its light fixtures some thirty floors up.  Sixty floors below, the main lobby can be made out.  To one side of the bouncelift column, the sublevel Lift Lobby can be seen one level below the lobby.  A low glass wall topped by a sturdy metal railing chest-high, surrounds the balcony for safety."

The balcony railing is in the Atrium Balcony.  The balcony railing is scenery.  The description is "A sturdy-looking metal railing surrounding the balcony for safety.  You'd feel perfectly confident leaning against it despite the height."

Before going west in Atrium Balcony:
	if the player is harnessed:
		say "You can't maneuver through the doors with the stiff cable trailing out behind you." instead.

Before going down in Atrium Balcony:
	if the player is not wearing the descender:
		say "You can't go that way." instead;
	otherwise unless the cable is part of the railing:
		say "You can't go that way - you'd fall." instead;
	otherwise:
		now Bombs Thrown is 0;
		say "You carefully ease yourself over the railing, and before you can think better of it you let go!  The descender slowly pays out cable with a steady whir, and you find yourself dropping through empty space![line break]".

The Atrium Midair Top is a room with printed name "The Atrium (Midair)". The Atrium Midair Top is down from the Atrium Balcony.  The Atrium Midair Top is unmapped. The Atrium Midair Top is blind. The description is "You are hanging in empty space some ways down from the balcony, the cable attached to your harness holding you face-down.  Below you you can see the crowds of people at the convention gathered on the Atrium floor."

The Atrium Midair Middle is a room with printed name "The Atrium (Midair)".  The Atrium Midair Middle is down from The Atrium Midair Top.  The Atrium Midair Middle is unmapped. The Atrium Midair Middle is blind. The description is "You are perhaps halfway down the atrium now.  You can make out individual people in the crowd of Homeland Security conventioneers below you.  People are coming to the windows all around the atrium now as word of your descent spreads."

The Atrium Midair Bottom is a room with printed name "The Atrium (Midair)".  The Atrium Midair Bottom is down from The Atrium Midair Middle.  The Atrium Midair Bottom is unmapped. The Atrium Midair Bottom is blind. The description is "You are nearly to the bottom.  The crowd below you has seen you, and a few people are pointing up."

The Main Lobby is below the Atrium Midair Bottom.  The Main Lobby is above the Lift Lobby. The description is "This is the floor level of the main lobby, at the bottom of the tower atrium."

The Atrium Airspace is a region.  The Atrium Midair Top is in the Atrium Airspace.  The Atrium Midair Middle is in the Atrium Airspace.  The Atrium Midair Bottom is in the Atrium Airspace.

Before going down in the Atrium Airspace, say "You're hanging from a descender.  It is lowering you at a preset rate." instead.

Before going up in the Atrium Airspace, say "You're hanging from a descender.  It is lowering you at a preset rate." instead.