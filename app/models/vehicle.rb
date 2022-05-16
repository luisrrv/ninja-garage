class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :brand, presence: true
  validates :model, presence: true
  CATEGORIES = ['Itasha', 'Decotora', 'Bosozoku Bike']
  validates :category, inclusion: { in: CATEGORIES }
  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence: true
end