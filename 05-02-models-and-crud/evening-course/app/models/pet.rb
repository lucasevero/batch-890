class Pet < ApplicationRecord
  validates :name, presence: true
  validates :species, presence: true, inclusion: { in: ['dog', 'cat', 'monkey'] }
  validates :address, presence: true
end
