class Personnage < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :nom, uniqueness: true, presence: true
  validates :vie, presence: true, inclusion: { in: 1..100 }
  validates :attaque, presence: true, inclusion: { in: 1..100 }
  validates :photo, presence: true

  has_many :joueurs
  has_many :combats, through: :joueurs

end
