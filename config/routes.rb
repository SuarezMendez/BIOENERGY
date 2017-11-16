Rails.application.routes.draw do

  get 'evaluations/show'

  root :to => "sessions#new"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  get "evaluated_one" => "evaluated#step_one", :as => "evaluated_step_one"
  get "evaluated_two" => "evaluated#step_two", :as => "evaluated_step_two"
  get "evaluated_two_goals" => "evaluated#step_two_goals", :as => "evaluated_step_two_goals"
  get "evaluated_two_accept" => "evaluated#step_two_accept", :as => "evaluated_step_two_accept"
  get "evaluated_three" => "evaluated#step_three", :as => "evaluated_step_three"
  get "evaluated_four" => "evaluated#step_four", :as => "evaluated_step_four"

  get "evaluator_index" => "evaluator#index", :as => "evaluator_index"
  get "evaluator_one" => "evaluator#step_one", :as => "evaluator_step_one"
  get "evaluator_accept" => "evaluator#accept", :as => "evaluator_accept"
  get "evaluator_two" => "evaluator#step_two", :as => "evaluator_step_two"
  get "evaluator_two_employee/:id" => "evaluator#step_two_employee", :as => "evaluator_step_two_employee"
  get "evaluator_two_goals/:id" => "evaluator#step_two_goals", :as => "evaluator_step_two_goals"
  get "evaluator_three" => "evaluator#step_three", :as => "evaluator_step_three"
  get "evaluator_four" => "evaluator#step_four", :as => "evaluator_step_four"

  get "evaluator" => "home#evaluator"
  get "evaluated" => "home#evaluated"
  get "index" => "home#index"



  resources :sessions
  resources :evaluations
  resources :goals
  resources :users

end
