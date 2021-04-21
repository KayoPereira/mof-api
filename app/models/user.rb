class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :responsable

  acts_as_token_authenticatable

  validates :name, presence: true
  validates :cpf, presence: true
end
