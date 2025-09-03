/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 V Basic Choices
 V Knot structure
 V Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are in a cave, only surrounded by darkness. {not torch_pickup:You see a torch on the floor.} The cave extends to the east and west. {torch_pickup:{sword_pickup: You could just craft the ultimate weapon right now, if you wanted to...}}
* {torch_pickup}{sword_pickup} [Combine Torch and Sword] -> blazing_end
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel, it seems like theres more to explore, but its pretty dark.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. You hear noises coming from a further tunnel, investigate?
+ [Im ready.] -> boss_room
+ [Lets Go Back Actually...] -> cave_mouth
-> END

=== torch_pickup ===
You now have the torch.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The tunnel is finally lit now, and you hear growls coming from the west tunnel... {not sword_pickup:There is a battle-scarred sword here from what looks like a long battle...}
* [Pick the sword up] -> sword_pickup
+ [Go Back] -> cave_mouth
-> END

=== sword_pickup ===
You now have a sword! Use it wisely...
* [Go Back] -> cave_mouth
-> END

== boss_room ==
{not sword_pickup:You travel further into the cave, only to realize that whatever you've been hearing is standing infront of you. {not torch_pickup: With nothing to use but your bare hands, you challenge the abomination infront of you, only to be grabbed and squeezed into a puddle of gore. GAME OVER.} {torch_pickup:Using your torch, you attempt to identify the beast, and without knowing anything about its species, you attempt to light it on fire, but even with it weakened, it opened its maw and chomped you in half, taking you with it. GAME OVER.}}
{torch_pickup:{sword_pickup:You step further into the cave, lighting what is around you, and stumble upon the beast that has been echoing throughout the tunnels. At first, you try to make shape of what it looks like, but the abomination is angry. Without hesitation, you set the beast on fire, and foresaw its attempt on biting you clean in half, so with your sword in the other hand, you stab it through its mouth, killing the beast instantaneously.}}
* {torch_pickup}{sword_pickup} [Pickup Beast Tooth] -> finish_story
* {torch_pickup}{sword_pickup} [Refuse To Pickup Beast Tooth] -> beast_ending
->END

== finish_story ==
Now with the beast dead, you stand proud and decide to take a tooth for a keepsake. As you keep exploring the cave using the trusty torch and carrying out the beast's tooth, you finally found the exit of the cave, and you make it out happy with a sense of pride. Until you realize this cave didn't lead back to your city, it actually lead out to a whole different side of the world, with branching cave entrances! What tales shall you overcome next time?

To Be Continued...?
-> END

== beast_ending ==
Without the power of the beast tooth, you attempt to leave the cave, only to become the beast you once slayed. Your vision... your sight... your breath... nothing matters. You must consume... That's right... CARNAGE, DEATH, HUNGER... NOTHING MATTERS ANYMORE.
Beast Ending
-> END

== blazing_end ==
With the attempt to combine torch and sword, you realize that this only works in action movies, and coincidentally, there happened to be a barrel of gunpowder right next to you. You accidentally blew yourself up, believing that you were "that guy."
Blazing Ending
->END