# A card in a standard 52-count bicycle deck.
class PlayingCard < ActiveRecord::Base
  belongs_to :rank
  belongs_to :suit

  validates :rank_id,
            uniqueness: {
              message: 'there can only be one rank of each suit',
              scope: :suit_id
            }

  validates_associated :rank
  validates_associated :suit

  def self.exists_with_rank(name)
    includes(:rank).exists?(ranks: { name: name })
  end

  def self.exists_with_suit(name)
    includes(:suit).exists?(suits: { name: name })
  end

  def self.method_missing(method, *args, &block)
    if exists_with_rank(method)
      define_magic_rank_finder(method)
      send(method)
    else
      super
    end
  end

  def self.respond_to?(method, include_all = false)
    super || exists_with_rank(method)
  end

  def self.with_rank(name)
    includes(:rank).where(ranks: { name: name })
  end

  def self.with_suit(name)
    includes(:suit).where(suits: { name: name })
  end

  protected

  def self.define_magic_rank_finder(method)
    class_eval <<-RUBY
      def self.#{method}
        with_rank(:#{method})
      end
    RUBY
  end
end
