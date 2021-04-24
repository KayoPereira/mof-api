class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :olympic
  belongs_to :brazil_state
end
