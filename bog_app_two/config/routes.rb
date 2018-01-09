Rails.application.routes.draw do
  root "creatures#index" # localhost:3000

  get "/creatures", to: "creatures#index" #localhost:3000/creatures
  get "/creatures/new", to: "creatures#new" #localhost:3000/creatures/new
  
  post "/creatures", to: "creatures#create" #localhost:3000/creatures
  
  get "/creatures/:id", to: "creatures#show", as: "creature" #localhost:3000/creatures/:id
end
