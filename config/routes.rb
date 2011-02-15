PolishRemoteItWorkerSurvey::Application.routes.draw do
  resources :pss_questionaires
  resources :olbi_questionaires
  resources :eas_d_adult_questionaires
  resources :cope_loss_questionaires
  resources :ssp_questionaires
  resources :uwes_questionaires
  resources :demographic_questionaires
  resource :agreement
  resource :finish
  match 'welcome', :to => 'welcome#index'
  root :to => "welcome#index"
end
