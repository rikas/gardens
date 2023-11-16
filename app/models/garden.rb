
class Garden < ApplicationRecord
  belongs_to :category # <<-- THIS IS WHAT MAKES THE CODE garden.category WORK
  has_many :plants, dependent: :destroy # garden.plants

  # CATEGORIES = ['zen', 'green', 'imperial']
  # validates :category, inclusion: { in: CATEGORIES }
end
