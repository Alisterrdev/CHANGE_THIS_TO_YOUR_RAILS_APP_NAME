class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :connections
  has_many :connected_users, through: :connections, source: :connected_user

  has_many :instruments
  has_many :genre


  validates :name, :location, :bio, presence: true
end
