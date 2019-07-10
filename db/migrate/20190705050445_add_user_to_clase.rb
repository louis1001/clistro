class AddUserToClase < ActiveRecord::Migration[5.2]
  def change
    change_table(:clases) do |t|
      t.references :user
    end
  end
end
