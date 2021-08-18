class Identifier < ApplicationRecord
    belongs_to :category
    has_many :information, dependent: :destroy
end
