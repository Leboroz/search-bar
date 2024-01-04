class ArticlesController < ApplicationController
  def index
    @user = request.remote_ip
    @articles = Article.all
  end
end
