class Species < ApplicationRecord
  has_many :people
  validates :api_id, presence: true, uniqueness: true
end
