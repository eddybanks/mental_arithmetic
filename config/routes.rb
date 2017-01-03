Rails.application.routes.draw do

  resources :backwards_count_tests
  resources :tests
  
  root                  'home#index'

  get 'about',      to: 'home#about'
  get 'faqs',       to: 'home#faqs'
  get 'contact',    to: 'home#contact'

  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    mailer: 'users/mailer',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    shared: 'users/shared',
    unlocks: 'users/unlocks'
  }

end
