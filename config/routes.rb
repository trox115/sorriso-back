Rails.application.routes.draw do
  resources :videos
  resources :pagamentos
  resources :dmarcacaos
  resources :orcamentos
  resources :documentos
  resources :doc_categoria
  resources :tratamentos
  resources :dentes
  resources :consulta
  resources :servicos
  resources :categoria
  resources :produtos
  get '/clientes', to: 'clientes#index'
  patch '/clientes/:id', to: 'clientes#update'
  post '/inserirCliente', to: 'clientes#create'
  get '/userInfo/:id', to: 'clientes#info'
  post '/inserirProduto', to: 'produtos#create'
  get '/produtos', to: 'produtos#index'
  patch '/editar/produto/:id', to: 'produtos#update'

  post '/inserirCategoria', to: 'categoria#create'
  get 'categorias', to: 'categoria#index'

  post 'inserirServico', to: 'servicos#create'

  post 'inserirConsulta', to: 'consulta#create'
  patch 'editarConsulta/:id', to: 'consulta#update'
  get 'consultas', to: 'consulta#index'

  post 'inserirTratamento', to: 'tratamentos#create'
  get 'tratamentos', to: 'tratamentos#index'
  get '/tratamentos/cliente/:id', to: 'tratamentos#byUser'

  get 'docCategoria', to: 'doc_categoria#index'
  post 'inserirOrcamento', to: 'orcamentos#create'
  get 'orcamentos', to: 'orcamentos#index'

  get 'dentes', to: 'dentes#index'

  post 'inserirMarcacao', to: 'dmarcacaos#create'
  get '/marcacoes', to: 'dmarcacaos#index'
  patch '/editar/marcacao/:id', to: 'dmarcacaos#update'

  post '/inserirPagamento', to: 'pagamentos#create'

  get '/videos', to: 'videos#index'
  post '/inserVideo', to: 'videos#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
