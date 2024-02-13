Rails.application.routes.draw do
  root 'invention_datas#index'
  post '/search', to: 'invention_datas#search'
  post '/search_and_save', to: 'invention_datas#search_and_save'
  get '/search_results', to: 'invention_datas#search_results'

end
