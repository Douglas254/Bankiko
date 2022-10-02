Rails.application.routes.draw do
  get '/accounts', to: "account#index"
  get '/accounts/:acc_number', to: "account#show"
end
