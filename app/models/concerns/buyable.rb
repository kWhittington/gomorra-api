module Concerns
  # An ActiveModel role for records with a cost column.
  module Buyable
    extend ActiveSupport::Concern

    included do
      attr_readonly :cost
      validates :cost, numericality: {
        greater_than_or_equal_to: 0,
        only_integer: true
      }
    end
  end
end
