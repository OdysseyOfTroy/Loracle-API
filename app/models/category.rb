class Category < ApplicationRecord
    belongs_to :container
    has_many :identifiers dependent: :destroy
end
