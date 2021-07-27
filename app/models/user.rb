class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :containers, dependent: :destroy

    validates :display_name, presence: true, uniqueness: true, length: { maximum: 25 }
    validates :password, presence: true, length: { minimum: 8 }
end

