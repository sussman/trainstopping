"Robber" by Ben Collins-Sussman and David Anderson.

The story headline is "An IntroComp 2007 game entry".

The story description is "Here is an introductory paragraph.  Make it clear that we're in rural Wyoming in 1868... just one year before the first transcontinental railway was completed, and one year after the invention of dynamite.  Dynamite is a new thing.  Player is an anti-hero, attempting to rob a train.
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
When play begins, say the story description.
When play begins, change the time of day to 10:15 AM.
When play begins, move the player to the Dirt Road.



Section 1 - Inventory

The player wears a hat.  The description of the hat is "A wide-brimmed hat to protect you from the sun, and which clearly marks you as a denizen of the plains."  The hat is a portable container.  The carrying capacity of the hat is 1.

[Note that we can have a puzzle that involves concealing something from an NPC at some point: ]
Rule for deciding the concealed possessions of player:
	if the particular possession is inside the hat and the player wears the hat, yes;
	otherwise no.

The player carries a pocketwatch.  Understand "watch" as the pocketwatch. The description of the pocketwatch is "It's a rusty wind-up timepiece, handed down from your uncle.  It currently reads [time of day]." 

Time-checking is an action applying to nothing.  Understand "time" as time-checking.
Carry out time-checking:
	if the player carries the pocketwatch, say "Your pocketwatch reads [time of day].";
	otherwise say "You have no way of checking the time."

The player carries a scrap of paper.  Understand "paper" and "scrap" and "schedule" as the scrap of paper. The description of the paper is "The paper contains scribblings from the Little Snoreing train station, about twenty miles down the trail.  The train only comes through town once per day, and by your partner's calculations, it should speeding through this mountain around 10:30am.  Angry smeared handwriting screams 'mountain tzqchutunnel, zlcgggdyna-nite.  DON'T BELLATE.'".


Section 2 - Environmental Effects

Every turn when a random chance of 1 in 20 succeeds:
	Say "A distant wind blows, echoing over the valley."


Section 3 - Inebriation


Section 4 - Guns

A gun is a kind of thing.  A gun has a number called the bullet count.  Definition:  a gun is unloaded if its bullet count is 0.   Definition:  a gun is loaded if its bullet count is greater than 0.  After examining a loaded gun, say "It appears to contain [bullet count in words] bullets."  After examining an unloaded gun, say "It appears to be unloaded."

Shooting is an action with past participle shot, applying to one visible thing.
Shooting it with is an action with past participle shot, applying to two visible things.

Understand "shoot [something]" as shooting.
Understand "shoot [something] with [something]" as shooting it with. 

Instead of shooting something:
	if a gun (called the firearm) is held by the player,
		try shooting the noun with the firearm;
	otherwise say "You need some sort of firearm to do that."

Check shooting it with:
	if the second noun is not a gun, say "[The second noun] isn't much of a firearm." instead;
	if the second noun is not loaded, say "[The second noun] has no ammunition." instead.

Carry out shooting it with:
	[TODO:  this doesn't work.  How do we actually *kill* a person or animal?]
	if the second noun is a person or animal, remove the second noun from play;
	change the bullet count of the second noun to the bullet count of the second noun - 1.

Report shooting it with:  
	say "BANG!  You shoot [the noun] with [the second noun]. [if the noun is a person]  Murder can be... fun. [line break][otherwise] I hope you weren't expecting much."

A pistol is a gun.  The player carries a pistol.  Understand "gun" as the pistol.  The bullet count of the pistol is 4.  The description of the pistol is "It's a mean-looking pistol."  The inventory listing of the pistol is "your trusty pistol".
 


Chapter 1 - The Robbery


Section 1 - The Train

The Train is a vehicle.  The description of the Train is "It's a hulking, steam-driven locomotive, pulling at least ten cars behind it.  [if it is before 10:32 AM] You can see it chugging along, getting closer by the second."

After deciding the scope of the player while in the Tunnel Area:
	if the train is in the Tunnel Area, place the Train in scope.

When play begins, remove the train from play.

Train Arrival is a scene.  Train Arrival begins when the time of day is 10:28 AM.  Train Arrival ends when the time since Train Arrival began is 7 minutes.

When Train Arrival begins: 
	Move the train to the Distant Track;
	Say "A train whistles in the distance, bellowing steam!";
	Train approaches in 1 minute from now.

At the time when the train approaches:
	If the player is in the Tunnel Area, say "The train is moving down the track, getting closer.";
	If the player is in the Hill Area, say "You hear the chugging of an approaching train.";
	Train passes in 4 minutes from now.

At the time when the train passes:
	Move the train to the Track below;
	If the player is in the Tunnel Area, say "The train is now entering the tunnel!";
	If the player is in the Hill Area, say "The Mountain shakes as a train rumbles through it!"

When Train Arrival ends:
	Remove the train from play;
	If the player is in the Tunnel Area, say "The train disappears into the tunnel below you, echoing loudly, leaving behind a wisp of steam.";


Section 2 - Chipmunk

The chipmunk is an animal.  The description is "A slippery little varmint.  He appears to be searching for something."  When play begins, move the chipmunk to the Grassy Plateau.

Every turn:
	if the chipmunk is in a room (called the current space) and a random chance of 1 in 3 succeeds
	begin;
		let next space be a random room which is adjacent to the current space;
		let way be the best route from the current space to the next space;
		if the chipmunk is visible, say "The chipmunk scurries off, heading [way].";
		move the chipmunk to next space;
		if the chipmunk is visible, say "A chipmunk scampers into the area.";
	end if.


Section 3 - Hill Area

The Tunnel Area is a region.  Bluff, Track, Distant Track, Track Below are in the Tunnel Area.
The Hill Area is a region.  Rock Circle, Grassy Plateau, Summit, Copse, Dirt Road, Cliff Edge are in the Hill Area.

The Track is a backdrop.  Understand "track" and "train track" as The Track.  "The track extends off into the distance, then curves out of sight around a bend." 

The Distant Track is a room.  The Distant Track is north of the Track Below.

The Track Below is below the Bluff.

The Bluff is a room.  "You're standing on a wide bluff fitfy feet up a small mountain, overlooking a landscape of sun-blasted plains and craggy hills.  Below you, a train track runs out of a narrow tunnel though the hill.  Multiple paths lead further up the mountain."  Instead of going down from the Bluff, say "You'd surely fall to your death."

The Rock Circle is east of the Bluff and below the Summit.  "What an interesting circle of rocks!"

The Grassy Plateau is southwest of the Bluff.  "Ooh, it's grassy here."

The Summit is east of the Grassy Plateau.  "We're very high up here."

The Copse is below the Grassy Plateau.  "Lots of trees."

The Dirt Road is south of the Copse.  "This is a dusty road."

The Cliff Edge is west of the Grassy Plateau.  "Ooh, scary cliff."
