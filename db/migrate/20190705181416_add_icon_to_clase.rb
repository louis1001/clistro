class AddIconToClase < ActiveRecord::Migration[5.2]
  def change
    add_column :clases, :icon, :string
  end
end
