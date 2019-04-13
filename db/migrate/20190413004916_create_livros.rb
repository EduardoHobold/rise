class CreateLivros < ActiveRecord::Migration[5.2]
  def change
    create_table :livros do |t|
      t.string :nome
      t.string :autor
      t.integer :paginas
      t.string :editora
      t.string :sinopse

      t.timestamps
    end
  end
end
