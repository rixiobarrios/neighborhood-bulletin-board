Rails.application.routes.draw do
  get("/", { :controller => "posts", :action => "index" })
  get("/posts", { :controller => "posts", :action => "index" })
  get("/posts/:post_id", { :controller => "posts", :action => "show"})
  get("/add_post", { :controller => "posts", :action => "create" })
  get("/delete_post/:post_id", { :controller => "posts", :action => "destroy" })
  get("/edit/:post_id", { :controller => "posts", :action => "edit"})
  get("/update_post/:post_id", { :controller => "posts", :action => "update"})

  get("/add_comment", { :controller => "comments", :action => "create" })
  get("/delete_comment/:comment_id", { :controller => "comments", :action => "destroy" })
end
