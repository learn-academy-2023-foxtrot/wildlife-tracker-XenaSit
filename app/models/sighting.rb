class Sighting < ApplicationRecord
    validates :wild_life_id, presence: true
    belongs_to :wild_life
end
