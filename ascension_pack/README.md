general-log2-assets/ascension_pack
===================

A collection of general items/scripts for Legend of Grimrock 2. 

The Ascension items pack is a collection of items that I've created with the intention of just finding out the extent of the cool things the Grimrock 2 component system can do. It includes two parts:

A Party definition with some specific code in each of the party hooks. Basically, with the new Party definition, whenever any of the PartyComponent hooks are ran, scans the champions equipped items (Or the entire parties equipped items, depending on the hook) and looks for a specifically named component. This component is a script component with a function in it. The function is ran. This lets you isolate and contain items that would otherwise have abilities you would have to check for in the party definition itself. I think it's much cleaner this way, and I seemingly have it working pretty well so far (Though currently an item cannot return false to cancel anything, YET...). The best, probably, example of this is to give armor an effect that triggers onDamage or onReceiveCondition, though it offers a lot of possibilities.

The second part is the items themselves. There are only 10 right now and they were hardly balanced with anything in mind. I just wanted to create a few interesting items, some stuff with more than just raw stat bonuses as the only way to define and differentiate weapons and armor.

One of the items changes the gfxIndex on certain events. Currently it uses two different looking necklaces it switches between, though if you have Akroma's icons from the grimrock 2 forums you can uncomment some code to use two similar looking necklaces from there for a much better effect.
Akroma's icons: http://www.grimrock.net/forum/viewtopic.php?f=22&t=8058