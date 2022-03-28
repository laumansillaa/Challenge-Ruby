class User < ApplicationRecord
    #AGREGAMOS LAS VALIDACIONES
    validates :image, presence: false
    validates :name, presence: true
    validates :age, presence: true
    validates :weigth, presence: true
    validates :resume, presence: true
    validates :movies, presence: true

end
