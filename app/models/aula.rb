class Aula < ApplicationRecord
  belongs_to :disciplina

    validates :objetivo, :realizado, presence: true
    validates :objetivo, :realizado, uniqueness: true

end
