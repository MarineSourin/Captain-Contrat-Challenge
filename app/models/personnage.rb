class Personnage < ApplicationRecord
  validates :nom, uniqueness: true, presence: true
  validates :vie, presence: true
  validates :attaque, presence: true
end
