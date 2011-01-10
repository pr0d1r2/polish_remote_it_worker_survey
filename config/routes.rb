PolishRemoteItWorkerSurvey::Application.routes.draw do
  match 'pss_questionaire', :to => 'questionaires#pss'
  match 'agreement', :to => 'agreement#index'
  match 'welcome', :to => 'welcome#index'
  root :to => "welcome#index"
end
