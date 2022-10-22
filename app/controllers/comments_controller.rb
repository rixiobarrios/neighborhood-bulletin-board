class CommentsController < ApplicationController
  def create
    comment = Comment.new
    comment.id = params.fetch("query_id")
    comment.body = params.fetch("query_body")
    comment.save
    
    redirect_to("/posts/#{post.id}")
  end
end
