class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :responsable, dependent: :destroy
  has_many :subscriptions

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :hierarchy

  acts_as_token_authenticatable

  validates :name, presence: true
  validates :cpf, presence: true
  validates :hierarchy_id, presence: true
end
