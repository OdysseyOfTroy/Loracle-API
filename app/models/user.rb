class User < ApplicationRecord

    validates :display_name, presence: true, length: { maximum: 25}
end

