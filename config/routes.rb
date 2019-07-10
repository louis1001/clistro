Rails.application.routes.draw do
  devise_for :users
  get "/clases", to: redirect("/")
  resources :clases
  scope "/clases/:id", as: "clase" do
    # get "/", to: "clases#show", as: "show_clase"
    # get "/tarea/:id", to: "tareas#show", as: "show_tarea"
    resources :tareas, as: "tarea"
  end
  resources :grupos

  # scope path: "/clases/:id" do
  #   get "index"
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
