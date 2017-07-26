class CreateDistribucions < ActiveRecord::Migration[5.1]
  def change
    create_table :distribucions do |t|
      t.integer :encargado_id
      t.integer :central_id
      t.string :nombre
      t.text :descripcion
      t.timestamps
    end
  end
end
