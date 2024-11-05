class Person < ApplicationRecord
  belongs_to :planet
  belongs_to :species
  validates :api_id, presence: true, uniqueness: true
end
