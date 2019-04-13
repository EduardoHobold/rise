class CreateAlunoLivros < ActiveRecord::Migration[5.2]
  def change
    create_table :aluno_livros do |t|
      t.belongs_to :aluno, foreign_key: true
      t.belongs_to :livro, foreign_key: true

      t.timestamps
    end
  end
end
