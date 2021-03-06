class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :pai
      t.string :mae
      t.string :cpf
      t.string :rg
      t.date :data_nascimento
      t.belongs_to :endereco, foreign_key: true

      t.timestamps
    end
  end
end
