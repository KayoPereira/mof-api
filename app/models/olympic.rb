class Olympic < ApplicationRecord
  has_many :responsable
  has_many :subscriptions

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :edition, presence: true
  validates :start_registration, presence: true
  validates :end_registration, presence: true
  validates :image, presence: true
end
