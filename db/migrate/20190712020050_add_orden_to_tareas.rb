class AddOrdenToTareas < ActiveRecord::Migration[5.2]
  def change
    add_column :tareas, :orden, :integer
  end
end
