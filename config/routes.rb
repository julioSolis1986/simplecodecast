Gerenciador::Application.routes.draw do
  devise_for :usuarios
  root :to => "pages#index"

  resources :avaliacao_fisicas
  resources :fichas

  resources :exercicios do
    get :autocomplete_exercicio_nome, :on => :collection
    get :autocomplete_tags_nome, :on => :collection
  end

  resources :grupos_musculares do
    get :autocomplete_grupo_muscular_nome, :on => :collection
  end

  resources :clientes do
    get :autocomplete_cliente_nome, :on => :collection
  end

  resources :enderecos do
    get :busca_por_cep, :on => :collection, :format => :json
    get :autocomplete_endereco_logradouro, :on => :collection
    get :autocomplete_endereco_bairro, :on => :collection
  end

  resources :usuarios
  resources :tags
  resources :postagens

  resources :estados do
  	collection do
        post 'cidades_por_estados'
    end
  end
end
