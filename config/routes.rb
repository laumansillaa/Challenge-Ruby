Rails.application.routes.draw do
  namespace 'api' do 
    namespace 'v1' do
      resources :characters #ROUTE /api/v1/users
    end
  end
end
