Rails.application.routes.draw do
  get 'parks/index'
  root to: "parks#index"
end
