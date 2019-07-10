class CreateClases < ActiveRecord::Migration[5.2]
  def change
    create_table :clases do |t|
      t.string :nombre
      t.references :grupo, foreign_key: true

      t.timestamps
    end
  end
end
