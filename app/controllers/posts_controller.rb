class PostsController < ApplicationController
  WORDPRESS_SITE_URL = "https://andrewnjoo.com"
  POST_COUNT = 30

  def index
    response = HTTP.get("#{WORDPRESS_SITE_URL}/wp-json/wp/v2/posts?per_page=#{POST_COUNT}")
    @posts = JSON.parse(response.body)
  end

  def show
    post_id = params[:id]
    response = HTTP.get("#{WORDPRESS_SITE_URL}/wp-json/wp/v2/posts/#{post_id}")
    @post = JSON.parse(response.body)
  end
end
