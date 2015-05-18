# gomorra_api
The Rails based web API for an implementation of Doomtown Reloaded.

Schema
------

Card
----

Associations
* has_many :traits
* has_many :abilities

Attributes
* card_type => [Dude, Deed, Good, Action]
* suit
* value


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

Trait
-----

Associations
* belongs_to :card

Attributes
* play_phase
* effect
