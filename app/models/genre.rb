class Genre < ApplicationRecord
    validates :name, presence: true
    validates :image, presence: false
    validates :movies, presence: true
end
