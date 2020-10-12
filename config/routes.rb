Rails.application.routes.draw do

  root to: 'contact_us#new'
  resource :contact_us, only: [:new, :create]
  get '/contact' => 'contact_us#new'
  get '/contact_us' => 'contact_us#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
