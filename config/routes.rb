Rails.application.routes.draw do
  #devise_for :views
  devise_for :engineers, controllers: { omniauth_callbacks: 'engineers/omniauth_callbacks', registrations: 'registrations'} #, sessions: 'engineers/sessions'}

#   devise_scope :engineers do
#     get 'login', to: 'devise/sessions#new'
#   end
#  devise_scope :engineers do
#     get 'logout', to: 'devise/sessions#destroy'
#   end
#  devise_scope :engineer do
#     get 'home', to: 'devise/sessions#index'
#   end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


#  devise_for :engineers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   
#       devise_scope :engineer do
#    get 'signup', to: 'devise/registrations#new'
# end
  


#get "home#index"
  #devise_for :engineers, controllers: { omniauth_callbacks: 'engineers/omniauth_callbacks', registrations: 'registrations'} #, sessions: 'engineers/sessions'}
#    , sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

 #resources :engineers
 #resources :engineers do
#   resources :recording_sessions 
# end


 #root 'recording_sessions#index'
 
  # resources :recording_sessions, :artists, :studios

    # resources :engineers do
    # resources :recording_sessions # , only: :create
    #  end
#    resources :artists do
  #  resources :recording_sessions # , only: :create
 #    end
 #   resources :studios do
 #   resources :recording_sessions # , only: :create
 #   end















end
