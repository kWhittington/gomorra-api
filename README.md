# gomorra_api
The Rails based web API for an implementation of Doomtown Reloaded.

This api following the specifications of [JSON API](http://jsonapi.org)

# V1 Schema
## Action
- belongs_to :playing_card
- cost (integer)
- name (string)
- text (string)

## Deed
- belongs_to :playing_card
- control (integer)
- cost (integer)
- name (string)
- production (integer)
- text (string)

## Dude
- belongs_to :gang
- belongs_to :playing_card
- bullet_type (string)
- bullets (integer)
- cost (integer)
- influence (integer)
- name (string)
- text (string)
- upkeep (integer)

# Goods
- belongs_to :playing_card
- bullet_type (string, nullable)
- bullet_bonus (integer, nullable)
- control (integer, nullable)
- cost (integer)
- influence (integer, nullable)
- name (string)
- text (string)

## Outfit
- belongs_to :playing_card
- belongs_to :gang
- name (string)
- production (integer)
- text (string)
- treasury (integer)

## Spell
- belongs_to :playing_card
- cost (integer)
- name (string)
- text (string)

# > V1 Schema
## Ability
Associations
- belongs_to :card

Attributes
- ability_cost
- ghost_rock_cost
- play_phase
- repeat (bool)
- effect

## Action
Associations
- has_one :card, as: :cardable

## DoomtownCard
Associations
- belongs_to :gang
- belongs_to :cardable, polymorphic: true
- (cardable_type: [Action, Deed, Dude, Goods, Spell])
- belongs_to :playing_card
- has_zero_or_many :abilities
- has_zero_or_many :keywords
- has_zero_or_many :traits

Attributes
- artwork
- flavor_text
- title
- text

## Deed
Associations
- has_one :card, as: :cardable

Attributes
- control
- production

## Dude
Associations
- has_one :card, as: :cardable

Attributes
- bullet_bonus
- bullet_type
- control
- influence
- upkeep

## Gang
Associations
- has_zero_or_many :cards

Attributes
- name

## Goods
Associations
- has_one :card, as: :cardable

Attributes
- bullet_bonus
- bullet_type
- control
- influence

## Joker
## Keyword
Associations
- has_many :cards

## Outfit
Associations
- has_one :card, as: :cardable

Attributes
- production
- treasury

## Trait
Associations
- belongs_to :card

Attributes
- play_phase
- effect
