class PostsController < ApplicationController
  WORDPRESS_SITE_URL = "https://andrewnjoo.com"

  def show
    post_id = params[:id]
    response = HTTP.get("#{WORDPRESS_SITE_URL}/wp-json/wp/v2/posts/#{post_id}")
    @post = JSON.parse(response.body)
  end
end
