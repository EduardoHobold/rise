class RemoveCidadeFromEnderecos < ActiveRecord::Migration[5.2]
  def change
    remove_column :enderecos, :cidade, :string
  end
end
