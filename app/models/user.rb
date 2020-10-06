class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :comments

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze

  with_options presence: true do
    validates :nickname, uniqueness: true, length: { maximum: 40 }
    validates :email, uniqueness: true
    validates :password, format: { with: PASSWORD_REGEX, message: 'Include both letters and numbers' }
  end
end
