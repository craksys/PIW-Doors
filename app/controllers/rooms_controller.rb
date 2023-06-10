class RoomsController < ApplicationController
before_action :require_login
  before_action :authorize_admin, only: [:new, :edit, :create, :update, :destroy]
def index
    @rooms = Room.all
  end
def authorize_admin
  if current_user.nil? || !current_user.admin?
    flash[:alert] = "Musisz być administratorem aby uzyskać dostęp"
    redirect_to login_path
  end
end
end
