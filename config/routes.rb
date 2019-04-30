Rails.application.routes.draw do

  devise_for :users
  get 'password_page/password-mssg'

  root to: "main#index"
  

  get "/booking" , to: "book_a_group_date#booking"
 
  get "/sign_up_mssg" , to: "sign_up_mssg#sign_up_mssg" 

  get "/sign_in" , to: "sign_in#sign_in"

  get "/index" , to: "main#index"

  get "/sign_up_page" , to: "sign_up_mssg#sign_up_page"

  #get "/booking_confirmation" , to: "booking_confirmation#booking_confirmation"

  get "/submit" , to: "booking_confirmation#booking_confirmation"

  get "/password_mssg" , to: "password_mssg#password_mssg"

  get "/password_page" , to: "password_page#password_page"

end
