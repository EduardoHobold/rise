class CreateAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunos do |t|
      t.integer :ra
      t.belongs_to :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
