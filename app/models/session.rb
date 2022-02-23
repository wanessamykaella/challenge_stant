class Session < ApplicationRecord
  belongs_to :track
  has_many :talks
  enum shift: {morning: 1, afternoon: 2}
end
