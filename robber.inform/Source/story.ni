"Trainstopping" by Ben Collins-Sussman.

The story headline is "An IntroComp 2007 game entry".

The story description is "BAM!  A mug of ale hits the table, splashing your shoes.  Muddy Charlie slumps back in his chair, eyes you carefully, and starts to chuckle.

'You know your problem?  You don't think big enough.'

His expression is familiar.  Last time you saw that look, it was just before you two decided to hijack the mayor's private herd back in 1866.  That didn't work so well.

'What now?' you ask.  'A new idea?'

'Big plans.'  He grins widely.  'That new cross-country railroad is almost finished.  It's gonna change everything... bigger trains, more people... and prize cargo.'

'A train holdup?  Are you kidding?'

'Relax.  This time we got [italic type]technology[roman type] on our side.'  He leans close and whispers:  'Made in Sweden... or Germany.  It's big, dangerous, and nobody knows about it yet.'

'A new weapon?'

'Dynamic, buddy.  Dynamic Might.'
"


[ Background reading:

http://en.wikipedia.org/wiki/Train_robbery
http://en.wikipedia.org/wiki/First_Transcontinental_Railroad
http://en.wikipedia.org/wiki/Dynamite
...add more links here..

IDEA:  run into a 21-year old Jesse James, make an impression on him?  (Jesse's first crime was 1868)

IDEA:  remember to describe multiple senses.

REMEMBER:  write tests via 'test me with "command / command / command" '.

IDEA:  define levels of inebriaton.  The more inebriated you are, the higher the chance that your command results in a  no-op (tripping, stumbling, spacing out..).  Allow inebriation to naturally decrease over time, or increase when the player drinks from the flask.  When not inebriated, player can go N turns before a craving kicks in.  The craving increases over time.  The higher the craving, the more likely each command results in a no-op (staring at the flask, caressing the flask, pausing to consider the flask.)  The net result is that the two extremes are equally debilitating;  one wants to keep the protagonist constantly drunk, but only mildly so.  This strategy presents the least disruption to play.  (Will this irritate players too much?  It's sort of a puzzle onto itself, no?)
]

Chapter 0 - World Modifications

Use full-length room descriptions and the serial comma.
Use no scoring.
When play begins:
        say the story description;
        change the time of day to 9:15 AM.


Section 1 - Player's Inventory

Instead of examining the player, say "Big boots, pants, a tattered overcoat.  You're quite the desperado, ain't ya?".

The player wears a hat.  The hat is a portable container.  The description of the hat is "A wide-brimmed hat to protect you from the sun, and which clearly marks you as a denizen of the plains.  [if the hat contains something]In the hat you see [contents of hat].[end if]".  The carrying capacity of the hat is 1.

Rule for deciding the concealed possessions of the player:
	if the particular possession is inside the hat and the player wears the hat, yes;
	otherwise no.
	
Rule for deciding the concealed possessions of the hat:
	if the player wears the hat, yes;
	otherwise no.

The player carries a pocketwatch.  Understand "watch" as the pocketwatch. The description of the pocketwatch is "It's a rusty wind-up timepiece, handed down from your uncle.  It currently reads [time of day]."

Time-checking is an action applying to nothing.  Understand "time" as time-checking.
Carry out time-checking:
	if the player carries the pocketwatch
	begin;
		if the location of the player is dark, say "It's too dark to see your watch.";
		otherwise say "Your pocketwatch reads [time of day].";
	otherwise;
		say "You have no way of checking the time.";
	end if.

The player carries a scrap of paper.  Understand "paper" and "scrap" and "schedule" as the scrap of paper. The description of the paper is "The paper contains scribblings from the Little Snoreing train station, about twenty miles down the trail.  The train only comes through town once per day, and by your partner's calculations, it should speeding through this mountain around 10:30am.  Angry smeared handwriting screams 'MOUNTAIN, DYNAMIC MIGHT ETHZF... TRAIN TUNNEL ^$*@ DON'T BELLATE.'".


Section 2 - Environmental Effects

Table of Environmental Effects
Effect
"A distant wind blows, echoing over the hills."
"Some sort of insect buzzes by."
"A brief breeze flaps your clothing."
"You hear some crickets chirp nearby."
"The sun mercilessly continues to bake the land."

Every turn when a random chance of 1 in 10 succeeds:
        choose a random row in the Table of Environmental Effects;
	Say "[Effect entry][paragraph break]".

Section 3 - Guns

A gun is a kind of thing.  A gun has a number called the bullet count.  Definition:  a gun is unloaded if its bullet count is 0.   Definition:  a gun is loaded if its bullet count is greater than 0.  After examining a loaded gun, say "It appears to contain [bullet count in words] bullets."  After examining an unloaded gun, say "It appears to be unloaded."

Shooting is an action with past participle shot, applying to one visible thing.
Shooting it with is an action with past participle shot, applying to two visible things.

Understand "shoot [something]" as shooting.
Understand "shoot [something] with [something]" as shooting it with.

Instead of shooting something:
	if a gun (called the firearm) is held by the player
	begin;
		try shooting the noun with the firearm;
		continue the action;
	otherwise;
		say "You need some sort of firearm to do that.";
	end if.

Check shooting it with:
	if the second noun is not a gun, say "[The second noun] isn't much of a firearm." instead;
	if the second noun is not loaded, say "[The second noun] has no ammunition." instead.

Carry out shooting it with:
	[TODO:  this doesn't work.  How do we actually *kill* a person or animal or self?]
	change the bullet count of the second noun to the bullet count of the second noun - 1;
	say "BANG!  You fire a bullet at [the noun] with [the second noun]. [if the noun is a person]  Murder can be... fun.[line break]".
	
After shooting something (called the victim) with a gun:
	if the victim is the player
	begin;
		say "Suicide, eh?";
		end the game in death;
	end if;
	if the victim is a person or animal
	begin;
		say "[The victim] collapses to the ground.";
		remove the victim from play;
	end if;
	continue the action.

[Report shooting it with: ??]

A pistol is a gun.  The player carries a pistol.  Understand "gun" as the pistol.  The bullet count of the pistol is 4.  The description of the pistol is "It's a mean-looking pistol, good for... persuasion."  The inventory listing of the pistol is "your trusty pistol".  Instead of dropping the pistol, say "Are you nuts?  What kind of outlaw are you!?"


Section 4 - Other Rules

An openable container called the eyes are part of the player.  The eyes are open.  The carrying capacity of the eyes is 0.  The description of the eyes is "Your eyes are... er, some color.  You don't remember."
[Instead of putting something in the eyes, say "Ouch, that would hurt!".]
Instead of dropping the eyes, say "Is that a joke?"

Instead of closing the eyes, now every room is dark.
Instead of opening the eyes, now every room is not dark.

[Taken from the documention example:]
Waiting more is an action applying to one number.
Understand "wait [number] minutes/turns" or "wait [number]" as waiting more.

Carry out waiting more: 
    let duration be the number understood - 1; 
    repeat with X running from 1 to duration 
    begin; 
        follow the turn sequence rules; 
    end repeat.

Report waiting more: 
    say "It is now [time of day + 1 minute]."


Chapter 1 - The Robbery


Section 1 - The Train

The Train is a vehicle.  The description of the Train is "It's a hulking, steam-driven locomotive, with at least ten cars behind it."

After deciding the scope of the player while in the Mountainside:
        place the tunnel in scope;
	if the train is in the Mountainside, place the Train in scope.

When play begins, remove the train from play.

Train Arrival is a scene.  Train Arrival begins when the time of day is 10:28 AM.  Train Arrival ends when the time since Train Arrival began is 7 minutes.

When Train Arrival begins:
	Move the train to the Distant Track;
	Say "A train whistles in the distance, bellowing steam!";
	Train approaches in 1 minute from now.

At the time when the train approaches:
	if the player is in the Mountainside, say "The train is moving down the track, getting closer.";
	if the player is in the Hill Area, say "You hear the chugging of an approaching train.";
	Train passes in 4 minutes from now.

At the time when the train passes:
	Move the train to the Track below;
	if the player is in the Mountainside, say "The train is approaching the tunnel!";
	if the player is in the Hill Area, say "The Mountain shakes as a train rumbles ever closer!".

When Train Arrival ends:
        if the tunnel is open
        begin;
        	Remove the train from play;
	        if the player is in the Mountainside, say "The train disappears into the tunnel below you, echoing loudly, leaving behind a wisp of steam.";
        end if;
        if the tunnel is closed
        begin;
                if the player is in the Mountainside, say "Seeing the collapsed tunnel, the train engineer yells and slams the brakes!  The giant machine shrieks;  steam and sparks pour from the engine, and the train comes to a stop just inches before the tunnel debris.  You can hear all sorts of panic and screams coming from the train.[paragraph break]In fact, that looks like Muddy himself leaning out of the train window!  He's wildly gesticulating at you.  Is that a a thumbs-up signal he's giving you?";
        end if;

Post-Train is a scene.  Post-Train begins when Train Arrival ends.

When Post-Train begins:
        denouement happens in 2 turns from now.

[TODO: add some real end-game verbiage here]
At the time when denouement happens:
        if tunnel is closed
        begin;
	say "You feel a tap on your back, and you spin around.[paragraph break]Three guns are pointed in your face.[paragraph break]'We know all about your plan', one of Marshalls states coldly.  'We've been tracking you and Muddy for days.  Keep your hands in the air, and follow us.'[paragraph break]You can see that Muddy is here, also held at gunpoint and already handcuffed.  You pause for a moment, consider your options, then decide that death is perhaps worse than being locked in a cell with an angry Muddy.[paragraph break]'Don't worry', Muddy whispers.  [italic type]'I have a plan...'[roman type]";
	end the game in victory;
        end if;
        if tunnel is open
        begin;
	say "You pause in your tracks for a moment.[paragraph break]That was clearly the train	that just passed through the mountain, and you missed it.  Muddy is gonna kill you.  Perhaps you should have gotten better instructions from him.";
	end the game saying "You failed the mission.";
        end if.



Section 2 - Animals

The vulture is an animal.  "A vulture circles omniously overhead."  The description is "Large and black, with a huge wingspan.   He seems to hang in the air, waiting for something to happen."  When play begins, move the vulture to the Summit.

Every turn:
	if the vulture is in a room (called the current space) and a random chance of 1 in 3 succeeds
	begin;
 		let next space be a random room which is adjacent to the current space;
		let way be the best route from the current space to the next space;
		if the vulture is visible, say "The vulture sails off, heading [way].";
		move the vulture to next space;
		if the vulture is visible, say "High above, a vulture glides into the area.";
	end if.

The acorn is an edible thing.  The description is "Um, it's a small, brown nut-like object."

The chipmunk is an animal.  "A chipmunk scurries about."  The description is "A slippery little varmint.  He appears to be searching for something."  When play begins, move the chipmunk to the Grassy Plateau.  

An animal is either plotting or innocent.  An animal is usually innocent.
Every turn when the chipmunk is plotting for more than 1 turn:
	if an acorn is supported by the sparker and the sparker is inside the bundle
	begin;
		if the chipmunk is visible, say "The chipmunk enthusiastically jumps up onto the sparker to grab the acorn!";
		explode the bundle;
	otherwise;
		try the chipmunk taking the acorn;
		now the chipmunk is innocent;
	end if;

Table of Chipmunk Fear
Effect
"The chipmunk suddenly shoots you a look of utter fear."
"The chipmunk notices something terrifying and freezes in place for a moment."
"The chipmunk spins around, looks at you, then panics."
"The chipmunk turns its gaze dramatically at you;  is that an orchestra playing?"

Every turn when the chipmunk is in a room (called the current space):
        if the chipmunk can see a gun
        begin;
                if an acorn is visible or the player carries an acorn
                begin;
		if the chipmunk is visible, say "The chipmunk seems paralyzed in place, caught between fear and desire!";
		if the chipmunk carries the acorn, try the chipmunk dropping the acorn;
                otherwise;
		if the chipmunk carries the acorn, try the chipmunk dropping the acorn;
		let next space be a random room which is adjacent to the current space;
		let way be the best route from the current space to the next space;
                        	choose a random row in the Table of Chipmunk Fear;
		if the chipmunk is visible, say "[Effect entry]  The chipmunk bolts away, speeding [way].";
		move the chipmunk to next space;
                end if;
        otherwise;
	if an acorn is visible and the acorn is not carried by the player
            	begin;
		now the chipmunk is plotting;
	otherwise;
		if the player carries an acorn
		begin;
			if the chipmunk is visible, say "The chipmunk looks at your possessions longingly.";
		otherwise;
		if the chipmunk is visible, say "The chipmunk sniffs around, mostly ignoring you.";
		end if;
	end if;
        end if;

[Possible bug:  if chipmunk dies, this rule produces 'must supply a noun' on each turn?]
Every turn:
	if the location of the chipmunk is not the location of the player
	begin;
		if the player carries an acorn
		begin;
			let the way be the best route from the location of the chipmunk to the location of the player;
			try chipmunk going the way;
		end if;
	end if;
	

Section 3 - Dynamite

A person is either protected or unprotected.  A person is usually unprotected.
After entering the circle of rocks:
	if the player does not carry the bundle, now the player is protected; continue the action.
After exiting:  
	if the container exited from is the circle of rocks, now the player is unprotected; continue the action.

The stick bundle is a portable transparent container.  "You see a bundle of small brown sticks."  Understand "sticks" and "bundle" as the stick bundle.  The carrying capacity of the bundle is 1.  The description is "It looks like a collection of cylinders, each wrapped in plain brown paper.  The side of each stick reads 'Nobel's Blasting Powder, U.S. Patent 78317.'   You don't see any sort of obvious fuse coming out of the sticks, however... just an empty space at the top of each cylinder, big enough to put your finger into."  Instead of dropping the bundle:  say "You... gingerly... put the bundle on the ground, and step away."; continue the action.  After examining the bundle, say "It currently contains [contents of bundle].".

The sparker tool is a portable supporter.  Understand "sparker" and "tool" as the sparker tool.  The description is "You've seen something like this before;  it looks like a spring-loaded pair of scissors with a small plate at one end.  If you apply a pound or two of pressure to the plate, the device slowly clamps together into a long stick.  When you push the plate quickly, rapid friction on the opposite tip can produce sparks."

Instead of pushing the sparker tool:
        say "The sparker tool shoots a few sparks from one end.";
        if the sparker is inside the bundle, explode the bundle.

Instead of shooting the bundle with a gun when the player is inside the rocks:
	say "You can't aim correctly, the rocks are in your way."

After shooting the bundle with a gun:
	explode the bundle.	

The Bluff contains the stick bundle and the sparker tool.

To explode the bundle:
	[Step 1:  describe the explosion if we can see it.]
	if the bundle is visible, say "A fiery flash and earth-shattering boom rocks you!  The shock wave literally knocks you off your feet, as debris explodes in all directions.";
	
	[Step 2:  make the explosion kill other people if necessary]
	if the bundle can be seen by the player and the player is unprotected
	begin;
		Say "Unfortunately, being unprotected, you were engulfed by the flames.";
		end the game saying "Ouch";
		stop the action;
	end if;

	if the bundle can be seen by someone (called the victim)
	begin;
		if the victim is unprotected
		begin;
			if the victim is visible, say "[The victim] screams and is torn apart by the exposion.";
			remove the victim from play;
		end if;
	end if;
		
	[Step 3:  possibly destroy the bluff]
        	if the bundle is in the bluff
        	begin;
                	if the bundle is visible, say "If that weren't enough, you hear a low rumble, and suddenly the ground begins to crack and crumble.  The earth opens up, and entire front of the bluff violently collapses downward, filling the tunnel below!";
                	now the tunnel is closed;
                	now the bluff is destroyed;
        	end if;
	remove the bundle from play;
	continue the action.


Section 4 - Hill Area

The Mountainside is a region.  Bluff, Track, Distant Track, Track Below are in the Mountainside.
The Hill Area is a region.  Rock Circle, Grassy Plateau, Summit, Copse, Dirt Road, Cliff Edge are in the Hill Area.

The Track is a backdrop.  Understand "track" and "train track" as The Track.  "The track extends off into the distance, then curves out of sight around a far-off hill. [if Train Arrival is happening] You spy a long train on the track. [end if]"

The Distant Track is a room.  The Distant Track is north of the Track Below.

The Track Below is below the Bluff.  The tunnel is here.  The tunnel is scenery.  The tunnel is a transparent enterable container.  The tunnel is open.  The description is "The tunnel runs straight through the mountain, directly below the bluff.  It looks a bit unstable as well, with bits of dirt crumbling into it."

The Bluff is a room.  The Bluff is either normal or destroyed.  The Bluff is normal.  "[if the Bluff is normal]You're standing on a wide bluff about fifty feet up a small mountain,[otherwise]You're standing on the edge of a dangerous, collapsed bluff[end if] overlooking a landscape of sun-blasted plains and craggy hills.  Below you, a train track runs out of a narrow tunnel though the hill. [if the tunnel is closed](Of course, the tunnel is now completely full of rocks and dirt.) [end if] On the far edge of the bluff you see a strange rock formation, and a path wanders southwest through the brush.  [if Train Arrival is happening] [paragraph break]A long train is approaching! [end if]".  Instead of going down from the Bluff, say "You'd surely fall to your death!"  The circle of rocks is here.  Understand "rocks" and "circle" and "formation" as the circle of rocks.  The circle of rocks is scenery.  The circle of rocks is a transparent enterable container.  The description is "The rocks are a few feet high, and are roughly arranged in a circle, almost like an oversized fire-pit.  It's not clear if they fell into this formation, or were pushed."

The Grassy Plateau is southwest of the Bluff.  "[if unvisited]The land opens up into a large green space here, partway up the mountain. The grasses are nearly five feet high, full of life.  A nice place to take a napw if you didn't already have better things to do.[paragraph break][end if]This is a wide field of untamed prairie.  To the east, a the mountain rises up towards its summit, while another hill is faintly visible to the west.  You also can make out a faint trail leading northeast through the brush."

The Copse is below the Grassy Plateau and north of the Dirt Road.  "[if unvisited]At last, some shade![paragraph break][end if]You're in a section of dense pine forest at the base of a small mountain.  There are cones and needles littered about, and the treetops chatter with birdsong.  The slope continues up the mountain, or back down towards the road."  A pine cone is here.  The description of the pine cone is "Yep, it's a pine cone."  A pine tree is in the Copse.  The pine tree is scenery.  The description of the pine tree is "It's a particularly tall pine tree."  Instead of climbing the pine tree, say "You're too old for that.  No jewel-encrusted egg for you."

The Cliff Edge is west of the Grassy Plateau.  "[if unvisited]You press through the grasses, squinting at the bright sky, then suddenly lose your footing.  You scramble to regain your balance and realize you nearly walked off a cliff.[paragraph break][end if]The edge of the plateau stops abruptly at a chasm that drops nearly one hundred feet.  Luckily, there's a flimsy-looking rope bridge that spans the gap.  It stretches westward to another isolated bluff."

Instead of going west from the Cliff Edge:
	if the Cliff Edge is not dark, say "You grab hold of the bridge, but your vertigo gets the best of you.  You're unable to avoid looking down, and you feel yourself start to spin.  The sight is just too much.";
	otherwise continue the action.

Instead of going east from the Lone Tree Bluff:
	if the Cliff Edge is not dark, say "You grab hold of the bridge, but your vertigo gets the best of you.  You're unable to avoid looking down, and you feel yourself start to spin.  The sight is just too much.";
	otherwise continue the action.

The Rope Bridge is west of the Cliff Edge.  "You're in the middle of the rope bridge.  The space below makes you nauseous."  Instead of listening while in the Rope Bridge, say "You hear the gentle creaking of the bridge, and the wind whistling below your feet."  

Instead of going to a room from the Rope Bridge:
	if the Rope Bridge is not dark, say "You're paralyzed with fear.  The height is unbearable.";
	otherwise continue the action.

The Lone Tree Bluff is west of the Rope Bridge.  "This is a very small bluff, almost an island in a sea of open air.  A gigantic oak tree dominates the space; it's an eruption of countless branches and thick bushy leaves."  

An oak tree is in the Lone Tree Bluff.  The oak tree is scenery.  "The tree is huge and leafy, but you don't see any fruit.  Just some strong branches." The branch is part of the oak tree.  Understand "branches" as the branch.  The branch is a supporter.  The description of the branch is  "It appears that one very tall branch has an acorn hanging from it." The acorn is on the branch.

Instead of climbing the oak tree, say "You're too old for that.  Really."

Instead of taking the acorn:
	if the acorn is on the branch, say "The acorn is far too high to reach.";
	otherwise continue the action.

After shooting the branch:
	say "Embedding a bullet in the huge branch isn't going to do much."

After shooting the acorn:
	if a random chance of 1 in 2 succeeds
	begin;
		say "What luck!  You hit a tiny branch, and the acorn tumbles to the ground.";
		move the acorn to the Lone Tree Bluff;
	otherwise;
		say "Yikes, that's a small target.  Your bullet sails right past it.  I guess you could always try again.";
	end if;
	continue the action.
	
The Summit is east of the Grassy Plateau.  "[if unvisited]You wander east, and slowly climb up the mountain.[paragraph break][end if]Here at the top the mountain, the wind blows strong and carries the smell of endless summer.  There are no trees up here, no tall grass, but bits of shrubbery dot the area.  The view is remarkable, though;  you can see grassy hills for miles around.  A train track clearly extends north into the distance, and a small bluff is visible further down the north face."

The Dirt Road is a room.  [The Dirt Road contains the player.]  "[if unvisited]Muddy wasn't particularly clear in his instructions, but you're pretty sure this is the trail he wanted you to follow this morning.  Now that your horse has inexplicably bolted, you can use all the luck you can get.[paragraph break][end if]This is a dusty trail that wanders off east and west for miles.  The sun blasts down on the back of your neck, but you can smell the cool tang of some pine trees off to the north.  You also spy the lower slopes of a small mountain that way."  Instead of going east from the Dirt Road, say "You can't chicken out now... Muddy would kill you!"  Instead of going west from the Dirt Road, say "In this heat, you wouldn't make it very far."  Before going north from the Dirt Road, say "You shamble slowly toward the trees."

The eastern road is east of the Dirt Road. [not accessible]

The western road is west of the Dirt Road. [not accessible]

[A starting point for the player;  useful to change this when debugging sections.]
The Summit contains the player.


[
Master TODO list.

* figure out a way to hide the dynamite and trigger, probably at the summit, probably in a hidden room.

* add extra 'objects' to examine, mostly red herrings, to make the game seem richer than it is.

* fix up the end-game text.  yeesh.

* add more sounds and smells to things, for depth.

* try playing through the game, see if it's solveable;  write a 'testme' transcript to win the game.

]
