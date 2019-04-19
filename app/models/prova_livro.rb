class ProvaLivro < ApplicationRecord
  belongs_to :livro
  belongs_to :aluno

  validates :nota, presence: true
  
end
