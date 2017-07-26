# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170725194209) do

  create_table "centrals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "distribucions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encargados", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "rut"
    t.string "nombre"
    t.string "apellido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rut"], name: "index_encargados_on_rut", unique: true
  end

  create_table "equipos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "codequip"
    t.string "marca"
    t.string "modelo"
    t.text "descripcion"
    t.datetime "fechacompra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "dar_baja", default: false
    t.index ["codequip"], name: "index_equipos_on_codequip", unique: true
    t.index ["dar_baja"], name: "index_equipos_on_dar_baja"
  end

  create_table "muebles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "codmue"
    t.string "marca"
    t.float "largo", limit: 24
    t.float "ancho", limit: 24
    t.text "descripcion"
    t.datetime "fechacompra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "dar_baja", default: false
    t.index ["codmue"], name: "index_muebles_on_codmue", unique: true
    t.index ["dar_baja"], name: "index_muebles_on_dar_baja"
  end

  create_table "otros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "codotro"
    t.string "marca"
    t.text "descripcion"
    t.datetime "fechacompra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "dar_baja", default: false
    t.index ["codotro"], name: "index_otros_on_codotro", unique: true
    t.index ["dar_baja"], name: "index_otros_on_dar_baja"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

end
