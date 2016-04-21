Rails.application.routes.draw do
  root 'tools#index'
  get "/tools", to: "tools#index", as: "tools"
  get "/tools/new", to: "tools#new", as: "new_tool"
  get "/tools/:id", to: "tools#show", as: "tool"
  post "/tools", to: "tools#create"
  get "/tools/:id/edit", to: "tools#edit", as: "edit_tool"
  patch "/tools/:id", to: "tools#update"
  put "/tools/:id", to: "tools#update"
  delete "/tools/:id", to: "tools#destroy"
end

