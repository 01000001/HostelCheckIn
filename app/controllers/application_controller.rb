class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  private
		
		def set_date
			if @time_variable.present?
				@time_variable
			
			else
				session[:date_variable] = Date.today
				@time_variable = session[:date_variable].strftime("%Y %B %d, %A")
			end
  		end
  
	end
