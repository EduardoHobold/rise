class Matricula < ApplicationRecord
  belongs_to :curso

  validates :ra, presence: true
  validates :ra, uniqueness: true
  
end
