class Plant < ApplicationRecord
  has_many :questions
  has_many :answers
  has_many :users, through: :questions
  has_many :users, through: :answers
end
