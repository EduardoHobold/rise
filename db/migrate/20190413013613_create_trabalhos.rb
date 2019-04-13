class CreateTrabalhos < ActiveRecord::Migration[5.2]
  def change
    create_table :trabalhos do |t|
      t.belongs_to :disciplina, foreign_key: true
      t.date :dt_entrega
      t.string :descricao

      t.timestamps
    end
  end
end
