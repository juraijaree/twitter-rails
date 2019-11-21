class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @all_posts = Post.order(created_at: :desc)

    @new_post = Post.new
  end
end
