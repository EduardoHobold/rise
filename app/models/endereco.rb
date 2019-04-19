class Endereco < ApplicationRecord
    belongs_to :cidade

    validates :rua, :bairro, :numero, presence: true
    validates :rua, :bairro, :numero, uniqueness: true
end
