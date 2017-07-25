class AddDeletedAtToMuebles < ActiveRecord::Migration[5.1]
  def change
    add_column :muebles, :deleted_at, :datetime
    add_index :muebles, :deleted_at
  end
end
