# gomorra_api
The Rails based web API for an implementation of Doomtown Reloaded.

Schema
======

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

Deed < Card
-----------

Associations
* belongs_to :playing_card (suit, rank)

Attributes
* control
* production
* suit #=> :diamond


Goods < Card
-----
Associations
* has_zero_or_one :cartridge_belt
* belongs_to :playing_card (suit, rank)

Attributes
* control
* influence
* suit #=> :heart

Action < Card
------
Attributes
* suit #=> club
* belongs_to :playing_card (suit, rank)

Joker < Card
-----

Outfit < Card
------
Associations
* belongs_to :gang
* has_zero_or_many :abilities
* has_zero_or_many :traits

Attributes
* production
* treasury

!!!Keyword!!!
-------
Associations
* has_many :cards



Clip
----

Associations
* belongs_to :dude
* has_zero_or_many :bullet_modifiers
* has_one :bullets, :as => :bullet_modifier

BulletModifier
--------------

Associations
* belongs_to :clip

Attributes
* type (ex. stud, draw)
* rating (ex. -1, +3)



Deck
----

Attributes

Gang
----
Associations
* has_zero_or_many :cards

Attributes
* name


Trait
-----
Associations
* belongs_to :card

Attributes
* play_phase
* effect

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
