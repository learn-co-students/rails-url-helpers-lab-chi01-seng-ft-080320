Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 resources :students, only: [:index, :show]

  get "students/:id/activate", to: "students#activate", as: "activate_student"

  # VERB  URL           Controller#Action          route helper
  # get "/students", to: "students#index", as: "students"
  # get "/students/:id", to: "students#show", as: "student"
end

# route helper syntax

# prefix_path
# whatever_student_path -> students/:id/activate











# Prefix Verb URI Pattern         Controller#Action
# students GET  /students(.:format) students#index