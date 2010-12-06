PolishRemoteItWorkerSurvey::Application.routes.draw do
  match 'agreement', :to => 'agreement#index'
  match 'welcome', :to => 'welcome#index'
  root :to => "welcome#index"
end
