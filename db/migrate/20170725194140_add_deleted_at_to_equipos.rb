class AddDeletedAtToEquipos < ActiveRecord::Migration[5.1]
  def change
    add_column :equipos, :dar_baja, :bool, :default => false
    add_index :equipos, :dar_baja
  end
end
