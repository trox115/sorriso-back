# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_12_081036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.integer "bi"
    t.integer "nif"
    t.integer "utente"
    t.integer "telefone"
    t.string "email"
    t.boolean "seguro"
    t.integer "numSeguro"
    t.text "morada"
    t.text "observacoes"
    t.string "dataNascimento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "consulta", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.bigint "servico_id", null: false
    t.text "obs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "pagamento", default: 0
    t.index ["cliente_id"], name: "index_consulta_on_cliente_id"
    t.index ["servico_id"], name: "index_consulta_on_servico_id"
  end

  create_table "dentes", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "coords", default: [], array: true
    t.integer "lineWidth", default: 1
    t.string "shape", default: "poly"
  end

  create_table "dmarcacaos", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_dmarcacaos_on_cliente_id"
  end

  create_table "doc_categoria", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "documentos", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.bigint "doc_categoria_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_documentos_on_cliente_id"
    t.index ["doc_categoria_id"], name: "index_documentos_on_doc_categoria_id"
  end

  create_table "orcamentos", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.bigint "doc_categoria_id", null: false
    t.datetime "validade"
    t.bigint "servico_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_orcamentos_on_cliente_id"
    t.index ["doc_categoria_id"], name: "index_orcamentos_on_doc_categoria_id"
    t.index ["servico_id"], name: "index_orcamentos_on_servico_id"
  end

  create_table "pagamentos", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.bigint "consulta_id", null: false
    t.string "metodo"
    t.float "valor"
    t.float "troco"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_pagamentos_on_cliente_id"
    t.index ["consulta_id"], name: "index_pagamentos_on_consulta_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.integer "quantidade"
    t.integer "custo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "servicos", force: :cascade do |t|
    t.string "nome"
    t.bigint "categoria_id", null: false
    t.integer "custo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["categoria_id"], name: "index_servicos_on_categoria_id"
  end

  create_table "tratamentos", force: :cascade do |t|
    t.bigint "dente_id", null: false
    t.bigint "cliente_id", null: false
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_tratamentos_on_cliente_id"
    t.index ["dente_id"], name: "index_tratamentos_on_dente_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "nome"
    t.string "link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "consulta", "clientes"
  add_foreign_key "consulta", "servicos"
  add_foreign_key "dmarcacaos", "clientes"
  add_foreign_key "documentos", "clientes"
  add_foreign_key "documentos", "doc_categoria", column: "doc_categoria_id"
  add_foreign_key "orcamentos", "clientes"
  add_foreign_key "orcamentos", "doc_categoria", column: "doc_categoria_id"
  add_foreign_key "orcamentos", "servicos"
  add_foreign_key "pagamentos", "clientes"
  add_foreign_key "pagamentos", "consulta", column: "consulta_id"
  add_foreign_key "servicos", "categoria", column: "categoria_id"
  add_foreign_key "tratamentos", "clientes"
  add_foreign_key "tratamentos", "dentes"
end
