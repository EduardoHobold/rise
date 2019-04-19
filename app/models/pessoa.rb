class Pessoa < ApplicationRecord
  belongs_to :endereco

  validates :nome, :pai, :mae, :cpf, :rg, presence: true

  validates :nome, :cpf, :rg, uniqueness: true

end
