PolishRemoteItWorkerSurvey::Application.routes.draw do
  resources :pss_questionaires
  match 'agreement', :to => 'agreement#index'
  match 'welcome', :to => 'welcome#index'
  root :to => "welcome#index"
end
