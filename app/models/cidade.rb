class Cidade < ApplicationRecord
  belongs_to :estado

  validates :nome, presence: true
  validates :nome, uniqueness: true

end
