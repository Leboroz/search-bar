class AnalyticsController < ApplicationController
  before_action :set_user

  def index
    @searches = Search.where(user: @user).order(quantity: :desc).limit(10)
  end
end
