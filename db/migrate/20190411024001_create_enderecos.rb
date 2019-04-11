class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.string :rua
      t.string :bairro
      t.string :numero
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
