class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :membres
  has_many :groupes, through: :membre, source: :groupe
  has_many :messages
  has_many :messageries, through: :messages
  has_many :photos

  validates :name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
