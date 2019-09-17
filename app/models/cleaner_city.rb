class CleanerCity < ApplicationRecord
  belongs_to :city
  belongs_to :cleaner
end
