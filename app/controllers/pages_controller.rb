class PagesController < ApplicationController
  def home
    @featured_projects = Project.featured.limit(2)
    @recent_articles = Article.published.order(publish_at: :desc).limit(2)
  end
end
