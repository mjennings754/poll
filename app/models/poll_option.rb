class PollOption < ApplicationRecord
  belongs_to :osrspoll

  validates_presence_of :title
  has_many :votes, dependent: :destroy
end
