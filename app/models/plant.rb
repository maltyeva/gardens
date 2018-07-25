class Plant < ApplicationRecord
  belongs_to :garden

  validates :color, presence: true
end
