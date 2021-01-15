Rails.application.routes.draw do

  get '/employees/', to: 'employees#index', as: 'employees'

  get '/employees/new', to: 'employees#new', as: 'new_employee'
  post '/employees/', to: 'employees#create'

  get '/employees/:id/edit', to: 'employees#edit', as: 'edit_employee'
  patch 'employees/:id/', to: 'employees#update'

  get '/employees/:id', to: 'employees#show', as: 'employee'

  get '/dogs/', to: 'dogs#index', as: 'dogs'

  get '/dogs/:id', to: 'dogs#show', as: 'dog'

end
