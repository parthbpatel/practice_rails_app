class Cleaner < ApplicationRecord
  has_one :booking
  has_many :cities
  has_and_belongs_to_many :cities, join_table: 'cities_cleaners'

  validates :first_name, presence: true
  validates :last_name, presence: true
end
