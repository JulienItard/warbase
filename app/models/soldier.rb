class Soldier < ApplicationRecord
  has_many :promotions
  has_many :ranks, through: :promotions

  default_scope { order('lastname ASC, firstname ASC') }
end
