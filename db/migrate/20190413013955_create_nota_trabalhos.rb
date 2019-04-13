class CreateNotaTrabalhos < ActiveRecord::Migration[5.2]
  def change
    create_table :nota_trabalhos do |t|
      t.belongs_to :aluno, foreign_key: true
      t.belongs_to :trabalho, foreign_key: true
      t.float :notag1
      t.float :notag2

      t.timestamps
    end
  end
end
