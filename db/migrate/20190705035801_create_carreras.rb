class CreateCarreras < ActiveRecord::Migration[5.2]
  def change
    create_table :carreras do |t|
      t.string :nombre
      t.string :abreviacion

      t.timestamps
    end
  end
end
