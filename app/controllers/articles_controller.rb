class ArticlesController < ApplicationController

	def show
		@article = Article.find(params[:id]) #We also use an instance variable (prefixed with @) to hold a reference to the article object. 
		# We do this because Rails will pass all instance variables to the view.
	end

	def new
		# You're getting this error now because Rails expects plain actions like this one to have views associated with them to display their information. With no view available, Rails will raise an exception.
	end

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to @article #@article.save is responsible for saving the model in the database
		#we redirect the user to the show action, which we'll define later.
	end

	def update
	end

	def destroy
	end

	def edit
	end

	private
		def article_params
			params.require("article").permit(:title, :text)
		end
end
