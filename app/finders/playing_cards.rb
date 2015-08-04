module PlayingCards
  MODEL = PlayingCard

  def self.rank(name)
    MODEL.includes(:rank).where(ranks: { name: name })
  end
end
