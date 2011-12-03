Flashcards::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

	root :to => "application#index"

	resources :answers, :only => [:new, :create]

end
