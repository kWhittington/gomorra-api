# gomorra_api
The Rails based web API for an implementation of Doomtown Reloaded.

Schema
======

Ability
-------
Associations
* belongs_to :card

Attributes
* ability_cost
* ghost_rock_cost
* play_phase
* repeat (bool)
* effect

Card
----
Associations
* has_zero_or_many :traits
* has_zero_or_many :abilities

Attributes
* artwork
* card_type => [Dude, Deed, Good, Action]
* flavor_text
* ghost_rock_cost
* suit
* title
* text
* value

Cartridge
---------
Associations
* belongs_to :cartridge_belt
* has_a :cartidge_color

Attributes
* bonus #=> 1

CartridgeBelt
-------------
Associations
* belongs_to :dude
* has_many :cartridges

CartridgeColour
---------------
Associations
* belongs_to :cartridge

Attributes
* active_phase #=> :deal, :draw

Dude
----
Associations
* has_a :cartridge_belt

Attributes
* upkeep
* influence
* control

Outfit
------
Associations
* belongs_to :gang
* has_zero_or_many :abilities
* has_zero_or_many :traits

Attributes
* name
* production
* treasury

Trait
-----
Associations
* belongs_to :card

Attributes
* play_phase
* effect
