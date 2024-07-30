class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
    @projects = Project.all
    @blog_posts = BlogPost.published.limit(3)
  end

  def about
  end
end
