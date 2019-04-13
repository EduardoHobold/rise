class Professor < ApplicationRecord
  belongs_to :pessoa
  belongs_to :disciplina
end
