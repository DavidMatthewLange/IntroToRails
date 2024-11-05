class Person < ApplicationRecord
  belongs_to :planet
  belongs_to :species

  validates :name, presence: true
  validates :name, length: { minimum: 2, maximum: 50 }
end
