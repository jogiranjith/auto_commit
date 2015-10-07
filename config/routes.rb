Rails.application.routes.draw do

  devise_for :users
	# Resources Start Here


	# Api

	# mount ApiTaster::Engine => "/api_taster" if Rails.env.development?

  namespace :api do
    namespace :v1 do

    end
  end

	# Devise routes start here

end
