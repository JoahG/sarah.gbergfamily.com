class CommentsController < ApplicationController
	def create
		@comment = Comment.new(params[:comment])

		respond_to do |format|
			if @comment.save
				format.html {redirect_to @comment.post}
			end
		end
	end
end
