class AboutmesController < ApplicationController
    def home
    	@nums_1 = 10000
    	@check_box1 = params[:pet_dog]
    end
end