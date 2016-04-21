Rails.application.routes.draw do
  root 'tools#index'
  get "/tools", to: "tools#index", as: "tools"
end

