Rails.application.routes.draw do

	# Resources Start Here


	# Api

	# mount ApiTaster::Engine => "/api_taster" if Rails.env.development?

  namespace :api do
    namespace :v1 do

    end
  end

	# Devise routes start here
  devise_for :users, controllers: {registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords"}, skip: [:sessions, :registrations]

end
