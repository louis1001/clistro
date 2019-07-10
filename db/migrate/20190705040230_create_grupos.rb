class CreateGrupos < ActiveRecord::Migration[5.2]
  def change
    create_table :grupos do |t|
      t.references :carrera, foreign_key: true
      t.integer :anio

      t.timestamps
    end
  end
end
