class CommentsController < ApplicationController

	def create
		@task = Task.find(params[:task_id])
		@comment = @task.comments.new(comment_params)

		if @comment.save
			redirect_to @task, notice: 'Comment posted.'
		else
			redirect_to @task, notice: 'Comment not posted.'
		end
	end

	private
		def comment_params
			params.require(:comment).permit(:name, :email, :body)
		end

end