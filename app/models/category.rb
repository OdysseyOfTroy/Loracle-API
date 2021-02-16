class Category < ApplicationRecord
    belongs_to :Container
    has_many :identifiers
end
