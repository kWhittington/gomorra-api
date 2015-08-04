module PlayingCards
  MODEL = PlayingCard

  def self.rank(name)
    MODEL.includes(:rank).where(ranks: { name: name })
  end

  def self.suit(name)
    MODEL.includes(:suit).where(suits: { name: name })
  end
end
