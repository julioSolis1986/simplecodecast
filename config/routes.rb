Gerenciador::Application.routes.draw do
  resources :clientes


  resources :enderecos
  resources :usuarios
  resources :tags
  resources :postagems
  resources :estados do
  	collection do
        post 'cidades_por_estados'  
    end
  end
  root :to => redirect('/postagems')
end
