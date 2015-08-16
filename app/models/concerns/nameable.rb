module Concerns
  # An ActiveModel role for records with a name column.
  module Nameable
    extend ActiveSupport::Concern

    included do
      attr_readonly :name
      validates :name,
                presence: true,
                uniqueness: { case_sensitive: false }
    end
  end
end
