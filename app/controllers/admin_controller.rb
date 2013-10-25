class AdminController < ApplicationController
  def index
  
  		@guests = Guest.all
	
  end
end
