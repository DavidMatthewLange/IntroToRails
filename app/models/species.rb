class Species < ApplicationRecord
  has_many :people

  validates :name, presence: true
  validates :language, presence: true
end
