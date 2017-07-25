class CreateOtros < ActiveRecord::Migration[5.1]
  def change
    create_table :otros do |t|
      t.references :distribucion
      t.string :codotro
      t.string :marca
      t.text :descripcion
      t.datetime :fechacompra
      t.timestamps
    end
    add_index :otros, :codotro, unique: true
  end
end
