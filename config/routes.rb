Rails.application.routes.draw do
  
  # Locomotive Back-office
  mount Locomotive::Engine => '/locomotive', as: 'locomotive' # you can change the value of the path, by default set to "/locomotive"

  # Locomotive API
  mount Locomotive::API.to_app => '/locomotive(/:site_handle)/api'

  # Render site
  mount Locomotive::Steam::Server.to_app => '/', anchor: false

end
