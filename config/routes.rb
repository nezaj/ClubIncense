ClubIncense::Application.routes.draw do
	resources :signups, :only => [:create], :path => "/thankyou"
  root :to => 'welcomes#index'
end
