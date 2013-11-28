Todo::Application.routes.draw do
  scope 'api' do
    resources :items
  end

  root to: 'list#index'
end
