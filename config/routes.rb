Rails.application.routes.draw do

  root to: "main#index"

  #리뷰 페이지
  get "/main/review", to: "review#review"

end
