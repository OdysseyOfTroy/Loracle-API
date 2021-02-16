class Identifier < ApplicationRecord
    belongs_to :Category
    has_many :information
end
