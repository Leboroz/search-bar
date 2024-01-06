class SearchesController < ApplicationController
  include SearchesHelper
  before_action :set_user

  def index
    render json: Search.where(user: @user).order(:quantity, :desc)
  end

  def create
    user = User.find_by(ip: request.remote_ip)
    return unless user

    content = searches_params[:content]
    splited_content = content.split ' '
    search = Search.find_by(content: content)
    search&.increment_quantity if search

    splited_content.each do |slice|
      searches = Search.where(['user_id = ? AND content LIKE ?', user.id, "%#{slice}%"]).order(:content).to_a
      searches.each do |s|
        Search.destroy(s.id) if content.include?(s.content) && content != s.content
      end
    end

    return if search

    @search = Search.new(content: searches_params[:content], user: @user, quantity: 1)
    @search.save
    render json: @search
  end

  private

  def searches_params
    params.permit(:id, :content, search: [:content])
  end
end
