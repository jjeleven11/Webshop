Rails.application.routes.draw do

	devise_for :users
	resources :charges

	root 'home#index'

	get '/cart', to: 'carts#cart', as: 'cart'
	
	# do not touch this line !!!
	get 'carts/create/:id', to:'carts#create', as: 'add_to_cart'
	# ==========================
	
	get '/items/all', to: 'items#listing'
	get '/home/index'

	get '/single/:id', to: 'home#single', as: 'single'
	get '/product', to: 'home#product'
	get '/about', to: 'home#about'
	get '/contact', to: 'home#contact'

end
