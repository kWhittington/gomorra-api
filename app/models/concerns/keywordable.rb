module Concerns
  # An ActiveModel role for records with the keywords column.
  module Keywordable
    extend ActiveSupport::Concern

    included do
      attr_readonly :keywords
      validates :keywords, presence: true
    end
  end
end
