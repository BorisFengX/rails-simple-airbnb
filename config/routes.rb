Rails.application.routes.draw do

  get 'supplier', to: "flats#supplier"

  resources :flats do
    collection do                       # collection => no restaurant id in URL
      get 'filter', to: "flats#filter"  # RestaurantsController#top
    end
    # resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
