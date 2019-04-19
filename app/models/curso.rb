class Curso < ApplicationRecord

    validates :nome, presence: true
    validates :nome, uniqueness: true
    
end
