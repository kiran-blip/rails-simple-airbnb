class FlatsControllersController < ApplicationController
  before_action :set_flats_controller, only: %i[ show edit update destroy ]

  # GET /flats_controllers or /flats_controllers.json
  def index
    @flats_controllers = FlatsController.all
  end

  # GET /flats_controllers/1 or /flats_controllers/1.json
  def show
  end

  # GET /flats_controllers/new
  def new
    @flats_controller = FlatsController.new
  end

  # GET /flats_controllers/1/edit
  def edit
  end

  # POST /flats_controllers or /flats_controllers.json
  def create
    @flats_controller = FlatsController.new(flats_controller_params)

    respond_to do |format|
      if @flats_controller.save
        format.html { redirect_to flats_controller_url(@flats_controller), notice: "Flats controller was successfully created." }
        format.json { render :show, status: :created, location: @flats_controller }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flats_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flats_controllers/1 or /flats_controllers/1.json
  def update
    respond_to do |format|
      if @flats_controller.update(flats_controller_params)
        format.html { redirect_to flats_controller_url(@flats_controller), notice: "Flats controller was successfully updated." }
        format.json { render :show, status: :ok, location: @flats_controller }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flats_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flats_controllers/1 or /flats_controllers/1.json
  def destroy
    @flats_controller.destroy

    respond_to do |format|
      format.html { redirect_to flats_controllers_url, notice: "Flats controller was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flats_controller
      @flats_controller = FlatsController.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flats_controller_params
      params.fetch(:flats_controller, {})
    end
end
