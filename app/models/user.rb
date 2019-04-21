class User < ApplicationRecord
  has_many :questions
  has_many :answers
  has_many :plants, through: :questions
  has_many :plants, through: :answers
end
