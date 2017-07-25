class AddDeletedAtToEquipos < ActiveRecord::Migration[5.1]
  def change
    add_column :equipos, :deleted_at, :datetime
    add_index :equipos, :deleted_at
  end
end
