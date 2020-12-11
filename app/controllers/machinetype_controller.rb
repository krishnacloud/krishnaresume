class MachinetypeController < ApplicationController
  def index
  	require 'csv'
  	i=0
  	@result = params[:machinetype]
  	track = 0
  	underscore = 0
  	nonunderscore = 0
  	#	@i=params[:machinetype].to_s.split(/\s/)
  	@i=params[:machinetype].to_s.split('_')
  
  	@i.each do  |c|
  			if c == "Standard"
    	   		@vmtype = "Standard"
    		else
    			@vmtype = c 
    		end
	end

    end
end

 
 