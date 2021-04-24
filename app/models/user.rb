class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :responsable, dependent: :destroy
  has_many :subscriptions

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :hierarchy

  acts_as_token_authenticatable

  validates :name, presence: true, format: { with: /^([a-zA-z]+\s[a-zA-z]+)$/, message: "name and surname", multiline: true }
  validates :email, presence: true, format: { with: /^\S+@\S+\.+\w.?\w?$/, message: "valid email", multiline: true}, uniqueness: true
  validates :cpf, presence: true, length: { is: 11 }, numericality: { only_integer: true }, uniqueness: true
  validates :hierarchy_id, presence: true
end
