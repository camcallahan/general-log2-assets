general-log2-assets/socketSystem
===================

A D2-style weapon/armor system that allows for gems to be placed into sockets on items to alter their abilities.

Currently, it includes only a basic set of gems of varying quality, which provide different bonuses 
depending on the type of item they are inserted into. The init.lua has an onPickUpItem hook that will
add the required component to allow them to be modified. This can easily be changed to only alter items
some percentage of the time instead of always.

Current gems available:

A base set of gems that increase stats/provide resistances. Elemental-themed, with qualities of gems that
(Weapon , Armor , Shield )
Ruby: Fire damage/burning, fire resistance, health/vitality
Sapphire: Cold damge/freezing, cold resistance, energy/willpower
Topaz: Shock damage, shock resistance, critical/strength
Emerald: Poison damage, poison resistance, accuracy/dexterity
Diamond: AttackPower, resistAll, protection
Amethyst: accuracy, evasion, evasion

Light Skull: Changes weapon requirement to light_weapons or switches heavy_armor to light_armor
Heavy Skull: Changes weapon requirement to heavy_weapons or switches light_armor to heavy_armor
Magic Skull: Changes weapon requirement to concentration

This will be expanded to include secondary actions, such as spells and special weapon attacks, only
available after socketing a gem into a weapon. 

To manually create an item with the ability to accept gems, the weapon/armor requires two components:

- A Counter component named "sockets", set to the max amount of gems the item can accept.
- A Counter component named "gemcount", initially set to the same value as "sockets". This is decreased
when enchanting an item and prevents gems from being used when at 0.

Currently shields, chest pieces, and non-RunePanel weapons can be enchanted. Shields are given 1 slot,
chest pieces are given two, and weapons are given 1 slot each (Except weapons with the "two_handed" trait
are given two slots).

To modify an item, place one of the gems into a champion's hand along with the item to enchant in the
other hand. Right-click the gem to enchant the other item being held. The gem will vanish and print out
the effect of the gem.

If the other item being held does not have the correct components to be enchanted then it will print out
that fact and the gem will remain in the champion's hand. Similarly, if the item has no more free sockets
then the gem will have no effect and remain in hand.

To-do:

- Find a better way to display the amount of free sockets in items. Currently, an item with a gameEffect 
will have it erased and replaced with the free socket count.
- Increase the 3d models. Currently, some gems look a different color than they should due to the limited
standard asset models available. I just need to sit down and learn how to modify them.

Included in the root of the textures folder is some item Atlases made available on the Grimrock forums, to
differentiate the 2d gems a little bit.
Akroma's icons: http://www.grimrock.net/forum/viewtopic.php?f=22&t=8058

NOTE: The gems currently have another Counter component in them named "treasureclass" that is unrelated to
the socketSystem. 