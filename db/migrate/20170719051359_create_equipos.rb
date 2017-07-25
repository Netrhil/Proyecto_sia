class CreateEquipos < ActiveRecord::Migration[5.1]
  def change
    create_table :equipos do |t|
      t.references :distribucion
      t.string :codequip
      t.string :marca
      t.string :modelo
      t.text :descripcion
      t.datetime :fechacompra
      t.timestamps
    end
    add_index :equipos, :codequip, unique: true
  end
end
