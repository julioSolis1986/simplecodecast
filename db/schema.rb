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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130625223702) do

  create_table "anamneses", :force => true do |t|
    t.string   "pergunta_1_01"
    t.string   "pergunta_2_01"
    t.string   "pergunta_2_02"
    t.string   "pergunta_3_01"
    t.string   "pergunta_3_02"
    t.string   "pergunta_3_03"
    t.string   "pergunta_3_04"
    t.string   "pergunta_3_05"
    t.string   "pergunta_3_06"
    t.string   "pergunta_3_07"
    t.string   "pergunta_3_08"
    t.string   "pergunta_3_09"
    t.string   "pergunta_3_10"
    t.text     "resposta_1_01"
    t.boolean  "resposta_2_01"
    t.boolean  "resposta_2_02"
    t.boolean  "resposta_3_01"
    t.boolean  "resposta_3_02"
    t.boolean  "resposta_3_03"
    t.boolean  "resposta_3_04"
    t.boolean  "resposta_3_05"
    t.boolean  "resposta_3_06"
    t.boolean  "resposta_3_07"
    t.boolean  "resposta_3_08"
    t.boolean  "resposta_3_09"
    t.boolean  "resposta_3_10"
    t.integer  "avaliacao_fisica_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "avaliacao_fisicas", :force => true do |t|
    t.integer  "anamneses_id"
    t.integer  "clientes_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "cidades", :force => true do |t|
    t.string   "nome"
    t.boolean  "capital",    :default => false
    t.integer  "estado_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.date     "data_nascimento"
    t.integer  "sexo_id"
    t.string   "cpf"
    t.string   "rg"
    t.integer  "etnia_id"
    t.text     "observacao"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "emails", :force => true do |t|
    t.string   "email"
    t.integer  "emaiable_id"
    t.string   "emaiable_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "enderecos", :force => true do |t|
    t.string   "logradouro"
    t.string   "complemento"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cep"
    t.integer  "cidade_id"
    t.integer  "estado_id"
    t.integer  "pais_id"
    t.integer  "enderecable_id"
    t.string   "enderecable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "pais"
  end

  create_table "estados", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "etnia", :force => true do |t|
    t.string "nome"
  end

  create_table "paises", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "postagens", :force => true do |t|
    t.string   "titulo"
    t.text     "conteudo"
    t.boolean  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sexos", :force => true do |t|
    t.string "nome"
  end

  create_table "tags", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.integer  "tageable_id"
    t.string   "tageable_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "tags", ["tageable_id"], :name => "index_tags_on_tageable_id"

  create_table "telefones", :force => true do |t|
    t.integer  "numero"
    t.integer  "ramal"
    t.integer  "telefonable_id"
    t.string   "telefonable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.date     "data_nascimento"
    t.string   "login"
    t.string   "senha"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

end
