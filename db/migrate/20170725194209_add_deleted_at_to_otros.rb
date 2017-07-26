class AddDeletedAtToOtros < ActiveRecord::Migration[5.1]
  def change
    add_column :otros, :dar_baja, :bool, :default => false
    add_index :otros, :dar_baja
  end
end
