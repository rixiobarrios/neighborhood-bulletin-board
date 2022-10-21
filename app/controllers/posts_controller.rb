class PostsController < ApplicationController

  def index
    # force a ruby console to appear under this context
    # byebug
    matching_posts = Post.all
    @posts = matching_posts.order(:created_at)

    render({ :template => "post_templates/index.html.erb"})
  end
  def show
    post_id = params.fetch("post_id")
    matching_posts = Post.where({ :id => post_id })
    @post = matching_posts.at(0)

    render({ :template => "post_templates/show.html.erb"})
  end
end  
