class Question < ApplicationRecord
  has_many :alternative
  has_many :test_question
end
