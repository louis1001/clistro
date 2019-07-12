class AddDescripcionToResumen < ActiveRecord::Migration[5.2]
  def change
    add_column :resumenes, :descripcion, :string
  end
end
