class ApplicationController < ActionController::Base
  def set_user
    ip = request.remote_ip
    @user = User.find_by(ip: ip)
    User.create(ip: ip) unless @user
  end
end
