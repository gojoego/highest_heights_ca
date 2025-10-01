class Peak < ApplicationRecord
    validates :name, :elevation_ft, :location, presence: true
end
