class CreateCentrals < ActiveRecord::Migration[5.1]
  def change
    create_table :centrals do |t|
      t.string :nombre
      t.string :descripcion
      t.timestamps
    end
  end
end
