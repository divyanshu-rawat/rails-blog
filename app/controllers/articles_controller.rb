class ArticlesController < ApplicationController
	def new
		# You're getting this error now because Rails expects plain actions like this one to have views associated with them to display their information. With no view available, Rails will raise an exception.

	end

	def create
		render plain: params[:article].inspect
	end
end
