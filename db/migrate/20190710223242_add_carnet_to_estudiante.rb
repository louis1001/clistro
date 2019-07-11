class AddCarnetToEstudiante < ActiveRecord::Migration[5.2]
  def change
    add_column :estudiantes, :carnet, :string, null: false, unique: true
  end
end
