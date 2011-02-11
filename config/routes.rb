PolishRemoteItWorkerSurvey::Application.routes.draw do
  resources :pss_questionaires
  resources :olbi_questionaires
  resources :eas_d_adult_questionaires
  match 'agreement', :to => 'agreement#index'
  match 'welcome', :to => 'welcome#index'
  root :to => "welcome#index"
end
