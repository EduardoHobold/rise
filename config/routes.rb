Rails.application.routes.draw do
  resources :disciplinas
  resources :semestres
  resources :cursos
  resources :pessoas
  resources :enderecos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
