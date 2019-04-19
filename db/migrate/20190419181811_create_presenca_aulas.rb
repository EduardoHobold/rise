class CreatePresencaAulas < ActiveRecord::Migration[5.2]
  def change
    create_table :presenca_aulas do |t|
      t.belongs_to :aula, foreign_key: true
      t.belongs_to :aluno, foreign_key: true

      t.timestamps
    end
  end
end
