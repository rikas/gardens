
class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy # garden.plants

  CATEGORIES = ['zen', 'green', 'imperial']

  validates :category, inclusion: { in: CATEGORIES }
end

