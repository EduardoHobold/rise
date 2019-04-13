Rails.application.routes.draw do
  resources :trabalhos
  resources :provas
  resources :prova_livros
  resources :aluno_livros
  resources :livros
  resources :professores
  resources :cidades
  resources :estados
  resources :alunos
  resources :disciplinas
  resources :semestres
  resources :cursos
  resources :pessoas
  resources :enderecos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
