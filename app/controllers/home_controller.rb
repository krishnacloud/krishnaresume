class HomeController < ApplicationController
  before_action :common, :only => [:index, :team , :about]

  def common
  	@name ="Krishna Venkat"
  	@team_selected = 0
  end 

  def team

  end 

  def index
  	  	@team_selected = params[:team_number]
  end

 def about 
 end

end
