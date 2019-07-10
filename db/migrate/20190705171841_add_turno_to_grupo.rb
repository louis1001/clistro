class AddTurnoToGrupo < ActiveRecord::Migration[5.2]
  def change
    add_column :grupos, :turno, :bool
  end
end
