Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  # map director page
  get "/director" => "movies#director"
end
