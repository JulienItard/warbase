class Soldier < ApplicationRecord
  has_many :promotions
  has_many :ranks, through: :promotions
end
