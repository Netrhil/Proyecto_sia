class AddDeletedAtToMuebles < ActiveRecord::Migration[5.1]
  def change
    add_column :muebles, :dar_baja, :bool, :default => false
    add_index :muebles, :dar_baja
  end
end
