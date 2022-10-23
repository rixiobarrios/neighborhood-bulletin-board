class CommentsController < ApplicationController
  def create
    comment = Comment.new

    comment.post_id = params.fetch("query_post_id")
    comment.body = params.fetch("query_body")
    comment.save
    
    redirect_to("/posts/#{comment.post_id}")
  end
  def destroy
    the_id = params.fetch("comment_id")
    matching_comment = Comment.where({ :id => the_id })
    comment = matching_comment.at(0)
    comment.destroy

    redirect_to("/posts/#{comment.post_id}")
  end
end
