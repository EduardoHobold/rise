class Disciplina < ApplicationRecord
  belongs_to :semestre
  belongs_to :curso
end
