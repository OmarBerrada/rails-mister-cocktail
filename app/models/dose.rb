class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :cocktail, presence: true
  validates :description, presence: true

  validates :cocktail, uniqueness: { scope: :ingredient }
end
