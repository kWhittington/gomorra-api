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

Action < Card
------
Attributes
* ghost_rock_cost
* suit #=> club
* value

Card
----
Associations
* belongs_to :gang
* has_zero_or_many :abilities
* has_zero_or_many :keywords
* has_zero_or_many :traits

Attributes
* artwork
* card_type => [Action, Deed, Dude, Goods, Spell]
* flavor_text
* title

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

Deed < Card
----
Attributes
* control
* ghost_rock_cost
* production
* suit #=> :diamond
* value

Dude < Card
----
Associations
* has_a :cartridge_belt

Attributes
* control
* ghost_rock_cost
* influence
* suit #=> :spade
* upkeep
* value

Gang
----
Associations
* has_zero_or_many :cards

Attributes
* name

Goods < Card
-----
Associations
* has_zero_or_one :cartridge_belt

Attributes
* control
* ghost_rock_cost
* influence
* suit #=> :heart
* value

Joker < Card
-----

Keyword
-------
Associations
* has_zero_or_many :cards

Outfit < Card
------
Attributes
* production
* treasury

Spell < Card
-----
Attributes
* suit #=> heart

Trait
-----
Associations
* belongs_to :card

Attributes
* play_phase
* effect
