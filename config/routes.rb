Rails.application.routes.draw do
  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "projects#index"

  get "/openai" => redirect("https://openai-demo-app-77btoea26q-uc.a.run.app/")
end
