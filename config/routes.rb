Rails.application.routes.draw do
  get("/", { :controller => "posts", :action => "index" })
  get("/posts", { :controller => "posts", :action => "index" })
  get("/posts/:post_id", { :controller => "posts", :action => "show"})
end
