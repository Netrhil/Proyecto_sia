class AddDeletedAtToOtros < ActiveRecord::Migration[5.1]
  def change
    add_column :otros, :deleted_at, :datetime
    add_index :otros, :deleted_at
  end
end
