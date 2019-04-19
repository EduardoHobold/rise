class Trabalho < ApplicationRecord
  belongs_to :disciplina

  validates :descricao, presence: true

end
