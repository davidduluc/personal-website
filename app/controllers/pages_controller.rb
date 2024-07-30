class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :projects ]

  def home
    @projects = Project.all.limit(3)
    @blog_posts = BlogPost.published.limit(3)
  end

  def about
  end
end
