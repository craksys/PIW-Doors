class RoomsController < ApplicationController
before_action :require_login
  before_action :authorize_admin, only: [:new, :edit, :create, :update, :destroy]
  #def room_params
 # params.require(:room).permit(:name)
#end
def room_params
	params.require(:room).permit(:name, user_ids: [])
  end

def new
    @room = Room.new
  end
def index
    @rooms = Room.all
  end
def create
    @room = Room.new(room_params)

    if @room.save
      redirect_to @room
    else
      render 'new'
    end
  end

  def show
    @room = Room.find(params[:id])
end

def open_door
@room = Room.find(params[:id])

if current_user && @room.users.include?(current_user)
  flash[:success] = "Drzwi zostały otwarte!"
else
  flash[:error] = "Nie masz uprawnień do otwarcia drzwi tego pokoju."
end

redirect_to @room
end

def update
    @room = Room.find(params[:id])

    if @room.update(room_params)
      redirect_to @room
    else
      render 'edit'
    end
  end
  
def destroy
  @room = Room.find(params[:id])
  @room.destroy
  redirect_to rooms_path, notice: "Pokój został usunięty."
end

def edit
  @room = Room.find(params[:id])
end
  
def authorize_admin
  if current_user.nil? || !current_user.admin?
    flash[:alert] = "Musisz być administratorem aby uzyskać dostęp"
    redirect_to login_path
  end
end
end
