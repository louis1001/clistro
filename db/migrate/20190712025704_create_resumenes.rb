class CreateResumenes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumenes do |t|
      t.integer :despues_de
      t.string :codigo
      t.references :clase, foreign_key: true

      t.timestamps
    end
  end
end
