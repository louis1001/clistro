class CreateTareas < ActiveRecord::Migration[5.2]
  def change
    create_table :tareas do |t|
      t.string :descripcion
      t.integer :puntaje_maximo
      t.references :clase, foreign_key: true

      t.timestamps
    end
  end
end
