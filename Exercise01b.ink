/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/
-> cave_mouth


== cave_mouth ==
You are at the enterance of a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
+[Take the east tunnel] -> east_tunnel
You go east
+[Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup
This is the content of the knot.
-> END


You go west

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
+ [Go Back] -> cave_mouth
You are in west
=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
This is the content of the knot.
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END

== south_tunnel ==
Weapons are accessed in south tunnel. The tunnel parallels the east and west tunnel. 
+ [Take the south tunnel] -> south_tunnel
You go south
* [Gun] -> gun_pickup
* [Knife] -> knife_pickup
Choose between knife or gun
* [Pick up the gun] -> gun_pickup

Kill the pirates in the west tunnel.
== west_tunnel ==
+ [Go Back] -> cave_mouth
You are in the west
== gun_pickup ==
You now have a gun. Now shoot the pirates.
-> END
