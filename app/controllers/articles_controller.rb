class ArticlesController < ApplicationController
  before_action :set_user

  def index
    @articles = Article.all
  end
end
