class Livro < ApplicationRecord

    validates :nome, :autor, :paginas, :editora, :sinopse, presence: true
    validates :nome, :sinopse, uniqueness: true
    
end
