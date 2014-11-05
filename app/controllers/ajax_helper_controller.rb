class AjaxHelperController < ApplicationController

	def get_day
		schedules=Schedule.where("Country_id =#{params[:country_id]}")
		
		render :json =>schedules
	end
end
