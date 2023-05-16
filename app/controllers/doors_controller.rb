class DoorsController < ApplicationController
  before_action :set_door, only: %i[ show edit update destroy ]

  # GET /doors or /doors.json
  def index
    @doors = Door.all
  end

  # GET /doors/1 or /doors/1.json
  def show
  end

  # GET /doors/new
  def new
    @door = Door.new
  end

  # GET /doors/1/edit
  def edit
  end

  # POST /doors or /doors.json
  def create
    @door = Door.new(door_params)

    respond_to do |format|
      if @door.save
        format.html { redirect_to door_url(@door), notice: "Door was successfully created." }
        format.json { render :show, status: :created, location: @door }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @door.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doors/1 or /doors/1.json
  def update
    respond_to do |format|
      if @door.update(door_params)
        format.html { redirect_to door_url(@door), notice: "Door was successfully updated." }
        format.json { render :show, status: :ok, location: @door }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @door.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doors/1 or /doors/1.json
  def destroy
    @door.destroy

    respond_to do |format|
      format.html { redirect_to doors_url, notice: "Door was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_door
      @door = Door.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def door_params
      params.require(:door).permit(:id, :name)
    end
end
