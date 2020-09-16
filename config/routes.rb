Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/api' do
    namespace :v1 do
      get 'stations/search_by_position'
    end
  end
end
