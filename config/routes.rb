Rails.application.routes.draw do
	root "myarticles#index"

	resources :myarticles
	#get "/myarticles", to: "myarticles#index"
	#get "/myarticles/:id", to:"myarticles#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
