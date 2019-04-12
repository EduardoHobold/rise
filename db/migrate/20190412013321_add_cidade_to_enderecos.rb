class AddCidadeToEnderecos < ActiveRecord::Migration[5.2]
  def change
    add_reference :enderecos, :cidade, foreign_key: true
  end
end
