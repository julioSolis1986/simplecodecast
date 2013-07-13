Gerenciador::Application.routes.draw do
  devise_for :usuarios
  root :to => "pages#index"

  resources :avaliacao_fisicas
  resources :clientes
  resources :enderecos
  resources :usuarios
  resources :tags
  resources :postagens
  
  resources :estados do
  	collection do
        post 'cidades_por_estados'  
    end
  end
end
