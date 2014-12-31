general-log2-assets/socketSystem
===================

A D2-style weapon/armor system that allows for gems to be placed into sockets on items to alter their abilities.

The init.lua has an onPickUpItem hook that will
add the required component to allow them to be modified. This can easily be changed to only alter items
some percentage of the time instead of always.

The gem models and GfxIndex icons are from LordYig's gem/alcove pack for Grimrock 1. I converted the gem
definition to be usable in Grimrock 2 and those models/icons/descriptions/names are used as a base for 
a lot of the gems in here. I have not gone through and converted any of the alcoves in his pack.
LordYig's Grimrock 1 pack can be found on NexusMods: http://www.nexusmods.com/grimrock/mods/177/

The converted gem definitions are included and imported in this if you want to use those as is or 
modify them into more socket gems. Filtering in the editor for itm_ should bring up all of the gems.

The order of the import lines in init.lua is important.
The socketBaseItems.lua MUST come first, as it has an item in there that others use as a base_object.

The other import lines bring in the gems by "type". There are a few types included so far.

The system works by having a base_object all the gems are based on that has an onUseItem hook that does
the various checks to determine if the gem can be used, what item is it being used on, etc. Then, the 
onUseItem function calls a Script component within the gem (passing it some information on the item
the gem will be used on) and that function is what actually alters the items. This means, chiefly, there
is no gigantic script entity to place in your dungeon anywhere. It also means that if you want to change 
the behaviour of a gem you go to the object definition of the gem and that has every piece of information
you need in one place to change or troubleshoot it. It also lets the gems be separated out across different
files. If you don't want the Skull gems then just comment out that one import line and they won't show up in
the editor and there won't be any code anywhere relating to them. It also means that if someone one makes a 
set of gems, as long as you import the base item file you don't have to do anything other than import their
gem file. Super simple, super easy.

Look at the base item and included gems on how to create your own. Basically, all the GEM needs is a Script
component named "triggers" and a function named "insertGem" that accepts the variable itemToEnchant. 
Whatever you put in that script will be ran when the gem is right clicked in a champion ahnd while holding 
another item. Return true and the gem will be used, return false and it will remain.

Current gems available:

A base set of ELEMENT gems that increase stats/provide resistances. These have a specific effect depending
what type of item they are socketed in. Weapons gain attack power and elemental damage. Shields gain 
resistances. Armor gain minor and major stat bonuses.

The SKULL gems switch and change the lower-level properties of an item, like baseDamageStat and
skill requirements. There is a skull for each of the four major stats that will change the stat
used to scale damage up (So maybe a new found hammer can be wielded fiercely by a willpower mage, for 
instance). There are also gems to converted heavy_armor requirements to light_armor, and other similar
effects.

The PASSIVE gems are similar to the ELEMENT gems but with less restrictions. They increase stats by a 
more limited amount but can be inserted into any type of item with slots. So, while a high level SAPPHIRE
will only provide willpower when put into a chest_armor, one of these willpower gems will give you the 
bonus even when put into a shield or weapon. These mostly provide stat bonuses, but there are a few other
things that they can alter as well.

ABILITY gems provide secondary actions. Currently, there is only a small pool of them. There is one for the
base Bolt-type spells for weapons and ones that provide shields with the elemental shield-type spells. There
is also one that provides the ability MUG to a dagger. This allows a champion with a dagger to shake down the
enemy and has a small chance to drop items for the party. 

To manually create an item with the ability to accept gems, the weapon/armor requires two components:

- A Counter component named "sockets", set to the max amount of gems the item can accept.
- A Counter component named "gemcount", initially set to the same value as "sockets". This is decreased
when enchanting an item and prevents gems from being used when at 0.

Currently shields, chest pieces, and non-RunePanel weapons can be enchanted. Shields are given 1-2 slots,
chest pieces are given 2-4, and weapons are given 1-2 slot each (Except weapons with the "two_handed" trait
are given 2-4 slots).

To modify an item, place one of the gems into a champion's hand along with the item to enchant in the
other hand. Right-click the gem to enchant the other item being held. The gem will vanish and print out
the effect of the gem.

If the other item being held does not have the correct components to be enchanted then it will print out
that fact and the gem will remain in the champion's hand. Similarly, if the item has no more free sockets
then the gem will have no effect and remain in hand.

To-do/Fixes needed:

- Find a better way to display the amount of free sockets in items. Currently, an item with a gameEffect 
will have it erased and replaced with the free socket count. Perhaps a simple gameEffect/description 
manager needs to be implemented so that -lines- of information can be retrieved/modified without hurting
other lines of information in the strings.
- secondaryAction spells have charges that DO work, but are not displayed when hovered over the item. Unsure
what is causing this.
- Determine if it is possible to script a sort of setPowerAttackTemplate to dynamically add the predefined 
power attacks to weapons... or at least reverse-engineer some of the more interesting ones to use.


NOTE: The gems currently have another Counter component in them named "treasureclass" that is unrelated to
the socketSystem. 