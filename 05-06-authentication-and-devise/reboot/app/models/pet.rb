class Pet < ApplicationRecord
  # VALIDATIONS
  validates :name, presence: true

  # ASSOCIATIONS
end
