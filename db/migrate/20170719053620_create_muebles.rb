class CreateMuebles < ActiveRecord::Migration[5.1]
  def change
    create_table :muebles do |t|
      t.references :distribucion
      t.string :codmue
      t.string :marca
      t.float :largo
      t.float :ancho
      t.text :descripcion
      t.datetime :fechacompra
      t.timestamps
    end
    add_index :muebles, :codmue, unique: true
  end
end
