Rails.application.routes.draw do
 
  resources :associated_attrs, except: [:edit, :update] do
    collection do
      get :search
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/endpoints/actionlog', to: 'actionlog#index', as: 'actionlog'
  get '/endpoints/agent', to: 'agent#index', as: 'agent'
  get '/endpoints/brand', to: 'brand#index', as: 'brand'
  get '/endpoints/buyertransaction', to: 'buyertransaction#index', as: 'buyertransaction'
  get '/endpoints/company', to: 'company#index', as: 'company'
  get '/endpoints/contact', to: 'contact#index', as: 'contact'
  get '/endpoints/emailcampaign', to: 'emailcampaign#index', as: 'emailcampaign'
  get '/endpoints/event', to: 'event#index', as: 'event'
  get '/endpoints/gallery', to: 'gallery#index', as: 'gallery'
  get '/endpoints/group', to: 'group#index', as: 'group'
  get '/endpoints/leadsource', to: 'leadsource#index', as: 'leadsource'
  get '/endpoints/listing', to: 'listing#index', as: 'listing'
  get '/endpoints/office', to: 'office#index', as: 'office'
  get '/endpoints/presentationlog', to: 'presentationlog#index', as: 'presentationlog'
  get '/endpoints/sellertransaction', to: 'sellertransaction#index', as: 'sellertransaction'
  get '/endpoints/soldlisting', to: 'soldlisting#index', as: 'soldlisting'
  get '/endpoints/task', to: 'task#index', as: 'task'
  get '/endpoints/team', to: 'team#index', as: 'team'
  get '/endpoints/webuser', to: 'webuser#index', as: 'webuser'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "associated_attrs#index"
end
