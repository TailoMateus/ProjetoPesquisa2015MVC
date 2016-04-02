# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150907214633) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "estados", force: :cascade do |t|
    t.string   "UF"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "historicoprospectos", force: :cascade do |t|
    t.string   "descricao"
    t.integer  "situacao_id"
    t.integer  "prospecto_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "anexo_file_name"
    t.string   "anexo_content_type"
    t.integer  "anexo_file_size"
    t.datetime "anexo_updated_at"
  end

  create_table "prospectos", force: :cascade do |t|
    t.string   "nome"
    t.string   "empresa"
    t.string   "telefone"
    t.string   "email"
    t.string   "cidade"
    t.string   "social"
    t.integer  "estado_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "situacaos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome",                   default: ""
    t.string   "funcao",                 default: ""
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree
end
