MVP::Application.routes.draw do

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "home#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "follow/index"

  get "follow/new"

  match "home" => "signups#new"
  match "/meow" => "home#meow"
  get "/done" => "signups#done"
  get "/thanks" => "signups#thanks"
  match "/hosts" => "profiles#index"
  #get "/wireframes" => redirect {"http://mainstproject.com/wireframes"}

  get "home/index"
  get "home/howitworks"
  get "home/teamandjobs"
  get "home/tos"
  get "home/philosophy"
  get "home/unsubscribe"
  get "home/privacy"
  get "home/raffle"
  #get "home/blog"

  resources :images
  resources :signups
  resources :guests
  resources :comments
  resources :locations

  namespace :api do
    resources :charges
    resources :campaigns
    resources :events
    resources :locations
    resources :profiles
    resources :follows
    resources :guests
    get "/referral_code_check" => "charges#referral_code_check"
  end

  resources :campaigns
  resources :profiles

  match 'my_profile' => 'profiles#show'
  match 'edit_my_profile' => 'profiles#edit'

  resources :events do
    resources :tickets do
      resources :guests
    end
    resources :images
    resources :follows
  end

  devise_for :users, controllers: {omniauth_callbacks: "authentications"} do
  ActiveAdmin.routes(self)
    resource :image
  end

  resources :user_answers
  resources :survey_questions
  
  resources :points
  
  get "survey" => "survey_questions#survey"
  match "/turtletower" => redirect("https://www.surveymonkey.com/s/LT7SDWX"), :as => :turtletower
  match "/ejis" => redirect("https://www.surveymonkey.com/s/JFCRCPX"), :as => :eji
  match "/wine" => redirect("https://www.surveymonkey.com/s/M28VBR3"), :as => :wine
  match "/beans" => redirect("https://www.surveymonkey.com/s/M22C8BQ"), :as => :beans
  match "/riceball" => redirect("https://www.surveymonkey.com/s/3HBGRCT"), :as=> :riceball
  match "/meatballs" => redirect("https://www.surveymonkey.com/s/QLJVVKV"), :as=> :meatballs
  match "/rak" => redirect("https://www.surveymonkey.com/s/GJZFJ2S"), :as => :rak
  match "/antologia" => redirect("/events/14")
  match "/capos" => redirect("/events/20")
  match "/radioafrica" => redirect("/events/24")
  match "/contraband" => redirect("/events/29")
  match "/onigilly" => redirect("/events/26")
  match "/HSC" => redirect("/events/30")
  match "/hsc" => redirect("/events/30")
  #get "incomplete_survey" => "survey_questions#survey"
  
  # I have no idea what changed that caused me to have to add this line...????
  #devise_scope :user do 
  #  get '/users/sign_out' => 'devise/sessions#destroy' 
  #end

  match 'events/:id/post_event' => 'events#post_event'

  #resources :accreditations
  #resources :authentications #, :only => [:show]
  #resources :investments
  #resources :projects

  #resources :survey_answers

#########################################################################

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
