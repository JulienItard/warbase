class Promotion < ApplicationRecord
  belongs_to :soldier
  belongs_to :rank

  default_scope { order('date ASC') }
end
