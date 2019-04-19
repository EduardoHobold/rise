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

ActiveRecord::Schema.define(version: 2019_04_19_181811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aluno_livros", force: :cascade do |t|
    t.bigint "aluno_id"
    t.bigint "livro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_aluno_livros_on_aluno_id"
    t.index ["livro_id"], name: "index_aluno_livros_on_livro_id"
  end

  create_table "alunos", force: :cascade do |t|
    t.bigint "pessoa_id"
    t.bigint "matricula_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["matricula_id"], name: "index_alunos_on_matricula_id"
    t.index ["pessoa_id"], name: "index_alunos_on_pessoa_id"
  end

  create_table "aulas", force: :cascade do |t|
    t.bigint "disciplina_id"
    t.date "data"
    t.string "objetivo"
    t.string "realizado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_aulas_on_disciplina_id"
  end

  create_table "cidades", force: :cascade do |t|
    t.string "nome"
    t.bigint "estado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estado_id"], name: "index_cidades_on_estado_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string "nome"
    t.integer "carga_horaria"
    t.string "conteudo"
    t.bigint "semestre_id"
    t.bigint "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_disciplinas_on_curso_id"
    t.index ["semestre_id"], name: "index_disciplinas_on_semestre_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "rua"
    t.string "bairro"
    t.string "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cidade_id"
    t.index ["cidade_id"], name: "index_enderecos_on_cidade_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "livros", force: :cascade do |t|
    t.string "nome"
    t.string "autor"
    t.integer "paginas"
    t.string "editora"
    t.string "sinopse"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matriculas", force: :cascade do |t|
    t.string "ra"
    t.bigint "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_matriculas_on_curso_id"
  end

  create_table "nota_trabalhos", force: :cascade do |t|
    t.bigint "aluno_id"
    t.bigint "trabalho_id"
    t.float "notag1"
    t.float "notag2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_nota_trabalhos_on_aluno_id"
    t.index ["trabalho_id"], name: "index_nota_trabalhos_on_trabalho_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome"
    t.string "pai"
    t.string "mae"
    t.string "cpf"
    t.string "rg"
    t.date "data_nascimento"
    t.bigint "endereco_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["endereco_id"], name: "index_pessoas_on_endereco_id"
  end

  create_table "presenca_aulas", force: :cascade do |t|
    t.bigint "aula_id"
    t.bigint "aluno_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_presenca_aulas_on_aluno_id"
    t.index ["aula_id"], name: "index_presenca_aulas_on_aula_id"
  end

  create_table "professores", force: :cascade do |t|
    t.bigint "pessoa_id"
    t.bigint "disciplina_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_professores_on_disciplina_id"
    t.index ["pessoa_id"], name: "index_professores_on_pessoa_id"
  end

  create_table "prova_livros", force: :cascade do |t|
    t.bigint "livro_id"
    t.bigint "aluno_id"
    t.float "nota"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_prova_livros_on_aluno_id"
    t.index ["livro_id"], name: "index_prova_livros_on_livro_id"
  end

  create_table "provas", force: :cascade do |t|
    t.bigint "aluno_id"
    t.bigint "disciplina_id"
    t.float "notag1"
    t.float "notag2"
    t.float "subg1"
    t.float "subg2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_provas_on_aluno_id"
    t.index ["disciplina_id"], name: "index_provas_on_disciplina_id"
  end

  create_table "semestres", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trabalhos", force: :cascade do |t|
    t.bigint "disciplina_id"
    t.date "dt_entrega"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_trabalhos_on_disciplina_id"
  end

  add_foreign_key "aluno_livros", "alunos"
  add_foreign_key "aluno_livros", "livros"
  add_foreign_key "alunos", "matriculas"
  add_foreign_key "alunos", "pessoas"
  add_foreign_key "aulas", "disciplinas"
  add_foreign_key "cidades", "estados"
  add_foreign_key "disciplinas", "cursos"
  add_foreign_key "disciplinas", "semestres", column: "semestre_id"
  add_foreign_key "enderecos", "cidades"
  add_foreign_key "matriculas", "cursos"
  add_foreign_key "nota_trabalhos", "alunos"
  add_foreign_key "nota_trabalhos", "trabalhos"
  add_foreign_key "pessoas", "enderecos"
  add_foreign_key "presenca_aulas", "alunos"
  add_foreign_key "presenca_aulas", "aulas"
  add_foreign_key "professores", "disciplinas"
  add_foreign_key "professores", "pessoas"
  add_foreign_key "prova_livros", "alunos"
  add_foreign_key "prova_livros", "livros"
  add_foreign_key "provas", "alunos"
  add_foreign_key "provas", "disciplinas"
  add_foreign_key "trabalhos", "disciplinas"
end
