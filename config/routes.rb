Gerenciador::Application.routes.draw do
  devise_for :users
  root :to => "exercises#index"

  resources :physical_assessments
  resources :sheets

  resources :exercises do
    get :autocomplete_exercise_name, :on => :collection
    get :autocomplete_tags_name, :on => :collection
  end

  resources :muscle_groups do
    get :autocomplete_muscle_group_name, :on => :collection
  end

  resources :clients do
    get :autocomplete_client_name, :on => :collection
  end

  resources :addresses do
    get :search_postal_code, :on => :collection, :format => :json
    get :autocomplete_address_street, :on => :collection
    get :autocomplete_address_neighbourhood, :on => :collection
  end

  resources :tags
  resources :posts
  resources :users

  resources :states do
  	collection do
        post 'cidades_por_estados'
    end
  end
end
