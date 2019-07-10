class CreateEstudiantes < ActiveRecord::Migration[5.2]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :apellido
      t.references :carrera, foreign_key: true
      t.references :grupo, foreign_key: true

      t.timestamps
    end
  end
end
