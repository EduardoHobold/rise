class CreateAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunos do |t|
    
      t.belongs_to :pessoa, foreign_key: true
      t.belongs_to :matricula, foreign_key: true
      t.timestamps
    end
  end
end
