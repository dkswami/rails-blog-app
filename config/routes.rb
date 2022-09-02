Rails.application.routes.draw do
	get "/myarticles", to: "myarticles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
