class CarsController < ApplicationController 

	def index
		@cars = Car.all
	end

	def new

	end

	def create

	end

	def show
		@car = Car.find(params[:id])
	end

	def edit

	end

	def update

	end

	def destroy

	end


end


#   cars GET    /cars(.:format)          cars#index
#          POST   /cars(.:format)          cars#create
#  new_car GET    /cars/new(.:format)      cars#new
# edit_car GET    /cars/:id/edit(.:format) cars#edit
#      car GET    /cars/:id(.:format)      cars#show
#          PUT    /cars/:id(.:format)      cars#update
#          DELETE /cars/:id(.:format)      cars#destroy