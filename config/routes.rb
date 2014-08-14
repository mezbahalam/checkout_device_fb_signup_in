Security::Application.routes.draw do
  get 'main/me'
  #
  #devise_scope :user do
  #  get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  #end
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'main#index'
end
