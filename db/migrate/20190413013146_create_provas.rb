class CreateProvas < ActiveRecord::Migration[5.2]
  def change
    create_table :provas do |t|
      t.belongs_to :aluno, foreign_key: true
      t.belongs_to :disciplina, foreign_key: true
      t.float :notag1
      t.float :notag2

      t.timestamps
    end
  end
end
