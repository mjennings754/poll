class Osrspoll < ApplicationRecord
    validates_presence_of :question
    has_many :poll_options, dependent: :destroy
    has_many :votes, through: :poll_options
end
