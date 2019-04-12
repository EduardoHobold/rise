class CreateDisciplinas < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.integer :carga_horaria
      t.string :conteudo
      t.belongs_to :semestre, foreign_key: true
      t.belongs_to :curso, foreign_key: true

      t.timestamps
    end
  end
end
