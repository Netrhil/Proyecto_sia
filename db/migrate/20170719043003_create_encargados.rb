class CreateEncargados < ActiveRecord::Migration[5.1]
  def change
    create_table :encargados do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
    add_index :encargados, :rut, unique: true
  end
end
