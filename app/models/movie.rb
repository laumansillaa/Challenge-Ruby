class Movie < ApplicationRecord
    validates :image, presence: false
    validates :title, presence: true
    validates :release, presence: true
    validates :qualification, presence: true
end
