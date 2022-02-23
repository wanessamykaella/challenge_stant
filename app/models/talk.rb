class Talk < ApplicationRecord
  validates :name, presence: true
  belongs_to :session
end
