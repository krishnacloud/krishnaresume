class CpucoresController < ApplicationController
	def home
		require 'net/http'
		
		@symbol = params[:sym]
		@url  =  'https://docs.microsoft.com/en-us/azure/virtual-machines/acu'
	end
end
