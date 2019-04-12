class RemoveEstadoFromEnderecos < ActiveRecord::Migration[5.2]
  def change
    remove_column :enderecos, :estado, :string
  end
end
