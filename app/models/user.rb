class User < ApplicationRecord

    validates :display_name, presence: true, uniqueness: true, length: { maximum: 25 }
    validates :password, presence: true, length: { minimum: 8 }
end

