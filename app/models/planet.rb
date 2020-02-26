class Planet < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
end
