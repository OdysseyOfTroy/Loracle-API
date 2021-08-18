class Container < ApplicationRecord
    belongs_to :user
    has_many :categories, dependent: :destroy

    validates :title, presence:true
end
