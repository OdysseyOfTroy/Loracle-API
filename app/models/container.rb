class Container < ApplicationRecord
    belongs_to :user
    has_many :categories

    validates :title, presence:true
end
