class CreateClasesEstudiantesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :clases, :estudiantes do |t|
      t.index :clase_id
      t.index :estudiante_id
    end
  end
end
