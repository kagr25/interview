class CommentsController < ApplicationController
	skip_before_filter :verify_authenticity_token
	http_basic_authenticate_with name: "abc", password: "abc"
	
	def index
		data = CommentService.new.get_comment_by_post_id(params[:post_id])
		render json: {comments: data[:comments]}, status: data[:status] ? 200 : 400
	end
end