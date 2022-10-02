Rails.application.routes.draw do
  get '/accounts', to: "account#index"
  get '/accounts/:acc_number', to: "account#show"
  post '/accounts/new', to: "account#create"
  # post '/accounts/params', to: "account#check_params"
  patch '/accounts/edit/:acc_number', to: "account#update"
  delete '/accounts/delete/:acc_number', to: "account#destroy"
end
