class PostsController < ApplicationController
  def index
    matching_posts = Post.all
    @posts = matching_posts.order(created_at: :desc)

    render({ :template => "post_templates/index.html.erb" })
  end

  def show
    post_id = params.fetch("post_id")
    matching_posts = Post.where({ :id => post_id })
    @post = matching_posts.at(0)

    render({ :template => "post_templates/show.html.erb" })
  end

  def edit
    post_id = params.fetch("post_id")
    matching_posts = Post.where({ :id => post_id })
    @post = matching_posts.at(0)

    render({ :template => "post_templates/edit.html.erb" })
  end

  def create
    add_post = params.fetch("query_title")
    a_new_post = Post.new
    a_new_post.title = params.fetch("query_title")
    a_new_post.body = params.fetch("query_body")
    a_new_post.save

    # a_new_post.errors.full_messages => errors.full_messages
    # => ["Input can't be blank"]

    redirect_to("/posts/#{a_new_post.id}")
  end

  def destroy
    the_id = params.fetch("post_id")
    matching_posts = Post.where({ :id => the_id })
    the_post = matching_posts.at(0)
    the_post.destroy

    redirect_to("/posts")
  end

  def update
    the_id = params.fetch("post_id")
    matching_posts = Post.where({ :id => the_id })
    the_post = matching_posts.at(0)

    input_title = params.fetch("query_title")
    input_body = params.fetch("query_body")

    the_post.title = input_title
    the_post.body = input_body
    the_post.save

    redirect_to("/posts/#{the_post.id.to_s}")
  end
end
