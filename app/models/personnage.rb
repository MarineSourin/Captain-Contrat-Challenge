class Personnage < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :nom, uniqueness: true, presence: true
  validates :vie, presence: true
  validates :attaque, presence: true

  has_many :joueurs
  has_many :combats, through: :joueurs

end
