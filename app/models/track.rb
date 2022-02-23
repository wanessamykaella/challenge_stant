class Track < ApplicationRecord
  validates :name, presence: true
  has_many :sessions
end
