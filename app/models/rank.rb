class Rank < ApplicationRecord
  has_many :promotions
  has_many :soldiers, through: :promotions

  default_scope { order('name ASC') }
end
