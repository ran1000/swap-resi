class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :spaces
  has_many :bookings, through: :spaces
  has_many :bookings
  has_one_attached :photo

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :encrypted_password, presence: true, length: { minimum: 6 }
  validates :username, presence: true, uniqueness: true, length: { minimum: 6 }
end
