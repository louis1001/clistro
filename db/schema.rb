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

ActiveRecord::Schema.define(version: 2019_07_10_223242) do

  create_table "carreras", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "abreviacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clases", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.bigint "grupo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "icon"
    t.index ["grupo_id"], name: "index_clases_on_grupo_id"
    t.index ["user_id"], name: "index_clases_on_user_id"
  end

  create_table "clases_estudiantes", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "clase_id", null: false
    t.bigint "estudiante_id", null: false
    t.index ["clase_id"], name: "index_clases_estudiantes_on_clase_id"
    t.index ["estudiante_id"], name: "index_clases_estudiantes_on_estudiante_id"
  end

  create_table "entregas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "calificacion"
    t.bigint "estudiante_id"
    t.bigint "tarea_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estudiante_id"], name: "index_entregas_on_estudiante_id"
    t.index ["tarea_id"], name: "index_entregas_on_tarea_id"
  end

  create_table "estudiantes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.bigint "carrera_id"
    t.bigint "grupo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "carnet", null: false
    t.index ["carrera_id"], name: "index_estudiantes_on_carrera_id"
    t.index ["grupo_id"], name: "index_estudiantes_on_grupo_id"
  end

  create_table "grupos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "carrera_id"
    t.integer "anio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "turno"
    t.index ["carrera_id"], name: "index_grupos_on_carrera_id"
  end

  create_table "tareas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "descripcion"
    t.integer "puntaje_maximo"
    t.bigint "clase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clase_id"], name: "index_tareas_on_clase_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clases", "grupos"
  add_foreign_key "entregas", "estudiantes"
  add_foreign_key "entregas", "tareas"
  add_foreign_key "estudiantes", "carreras"
  add_foreign_key "estudiantes", "grupos"
  add_foreign_key "grupos", "carreras"
  add_foreign_key "tareas", "clases"
end
