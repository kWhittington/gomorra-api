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
* has_many :traits
* has_many :abilities

Attributes
* title
* card_text
* flavor_text
* artwork
* card_type => [Dude, Deed, Good, Action]
* suit
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
* has_zero_or_many :stat_modifiers

Attributes
* ghost_rock_cost
* upkeep
* influence_rating
* control_point_rating

Trait
-----

Associations
* belongs_to :card

Attributes
* play_phase
* effect
