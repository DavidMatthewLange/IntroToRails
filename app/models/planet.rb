class Planet < ApplicationRecord
  has_many :people

  validates :name, presence: true
  validates :population, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
