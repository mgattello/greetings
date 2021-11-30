Rails.application.routes.draw do
  root "hellos#index"

  resources :hellos do
    resources :synonyms
  end
end
