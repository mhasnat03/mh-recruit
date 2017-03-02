Rails.application.routes.draw do
  
  root('homepage#index')
  get 'applications/new' => 'applications#new', :as => 'application_students'
  resources(:students)
  devise_for :users
  resources(:applications)
  resources(:users)
  

  # Acceptance/rejection 
  put '/applications/:id/accept', :controller => :applications, :action => :accept, :as => 'accept_application'
  put '/applications/:id/reject', :controller => :applications, :action => :reject, :as => 'reject_application'
end
