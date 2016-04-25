class ChurchServicesController < ApplicationController
  before_action :set_church_service, only: [:show, :edit, :update, :destroy]

  # GET /church_services
  # GET /church_services.json
  def index
    @church_services = ChurchService.all
  end

  # GET /church_services/1
  # GET /church_services/1.json
  def show
  end

  # GET /church_services/new
  def new
    @church_service = ChurchService.new
  end

  # GET /church_services/1/edit
  def edit
  end

  # POST /church_services
  # POST /church_services.json
  def create
    @church_service = ChurchService.new(church_service_params)

    respond_to do |format|
      if @church_service.save
        format.html { redirect_to @church_service, notice: 'Church service was successfully created.' }
        format.json { render :show, status: :created, location: @church_service }
      else
        format.html { render :new }
        format.json { render json: @church_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /church_services/1
  # PATCH/PUT /church_services/1.json
  def update
    respond_to do |format|
      if @church_service.update(church_service_params)
        format.html { redirect_to @church_service, notice: 'Church service was successfully updated.' }
        format.json { render :show, status: :ok, location: @church_service }
      else
        format.html { render :edit }
        format.json { render json: @church_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /church_services/1
  # DELETE /church_services/1.json
  def destroy
    @church_service.destroy
    respond_to do |format|
      format.html { redirect_to church_services_url, notice: 'Church service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_church_service
      @church_service = ChurchService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def church_service_params
      params.require(:church_service).permit(:weekday, :schedule, :name)
    end
end
