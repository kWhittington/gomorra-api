# gomorra_api
The Rails based web API for an implementation of Doomtown Reloaded.

This api following the specifications of [JSON API](http://jsonapi.org)

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
* suit #=> club
* belongs_to :playing_card (suit, rank)

BulletModifier
--------------
Associations
* belongs_to :clip

Attributes
* type (ex. stud, draw)
* rating (ex. -1, +3)

Clip
----
Associations
* belongs_to :dude
* has_zero_or_many :bullet_modifiers
* has_one :bullets, as: :bullet_modifier

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
* text

Deed < Card
-----------
Associations
* belongs_to :playing_card (suit, rank)

Attributes
* control
* production
* suit #=> :diamond

Dude < Card
----
Associations
* has_a :clip
* belongs_to :playing_card (suit, rank)

Attributes
* control
* influence
* suit #=> :spade
* upkeep

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
* belongs_to :playing_card (suit, rank)

Attributes
* control
* influence
* suit #=> :heart

Joker < Card
-----

Keyword
-------
Associations
* has_many :cards

Outfit < Card
------
Attributes
* production
* treasury

Trait
-----
Associations
* belongs_to :card

Attributes
* play_phase
* effect
