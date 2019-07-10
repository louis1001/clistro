class CreateEntregas < ActiveRecord::Migration[5.2]
  def change
    create_table :entregas do |t|
      t.integer :calificacion
      t.references :estudiante, foreign_key: true
      t.references :tarea, foreign_key: true

      t.timestamps
    end
  end
end
