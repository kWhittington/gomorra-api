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

BlankCartridge < Cartridge
---------
Attributes
* deal_bonus #=> 0
* draw_bonus #=> 0

BronzeCartridge < Cartridge
---------------
Attributes
* deal_bonus #=> 0
* draw_bonus #=> 1

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

CartridgeBelt
-------------
Associations
* belongs_to :dude
* has_many :cartridges

Dude
----
Associations
* has_a :cartridge_belt

Attributes
* ghost_rock_cost
* upkeep
* influence_rating
* control_point_rating

SilverCartridge < Cartridge
---------------
Attributes
* deal_bonus #=> 1
* draw_bonus #=> 0

Trait
-----

Associations
* belongs_to :card

Attributes
* play_phase
* effect
