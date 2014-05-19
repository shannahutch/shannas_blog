ShannasBlog::Application.routes.draw do
  root to: "sites#index"
  get "/about", to: "sites#about"
  get "/contact", to: "sites#contact"

  get "posts", to: "posts#index", as: "posts"
  get "posts/new", to: "post#new", as: "new_posts"
  get "posts/:id", to: "posts#show", as: "post"
  post "/posts", to: "posts#create"
  patch "/posts/:id", to: "posts#update"

end

# resources: posts
#     root GET   /                    sites#index
#     about GET   /about(.:format)     sites#about
#   contact GET   /contact(.:format)   sites#contact
#     posts GET   /posts(.:format)     posts#index
# new_posts GET   /posts/new(.:format) post#new
#      post GET   /posts/:id(.:format) posts#show
#           POST  /posts(.:format)     posts#create
#           PATCH /posts/:id(.:format) posts#update