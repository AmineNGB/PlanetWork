class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :planet

  validates :date, presence: true
end
