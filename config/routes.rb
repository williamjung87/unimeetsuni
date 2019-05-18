Rails.application.routes.draw do

  devise_for :users

  root to: "main#index"

  # meeting routes
  get "/meetings/new", to: "meetings#new"

  get "/meetings", to: "meetings#index"
  
  post "/meetings", to: "meetings#create"

  #리뷰 페이지
  get "/main/review", to: "review#review"  

  get "/sign_up_mssg" , to: "sign_up_mssg#sign_up_mssg"

end
