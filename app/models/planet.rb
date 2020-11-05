class Planet < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :user
  has_many_attached :photos

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
