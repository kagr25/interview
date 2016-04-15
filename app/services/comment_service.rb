class CommentService
	def intialize()
	end

	def get_comment_by_post_id(id)
		comments = Comment.where(post_id: id).all
		return {status: true, comments: comments}
	end

end