class Spot < ApplicationRecord
  belongs_to :province
  has_many :trips

end
