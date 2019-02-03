class HoafiesController < ApplicationController
  before_action :set_hoafy, only: [:show, :edit, :update, :destroy]

  # GET /hoafies
  # GET /hoafies.json
  def index
    @hoafies = Hoafy.all
  end

  # GET /hoafies/1
  # GET /hoafies/1.json
  def show
  end

  # GET /hoafies/new
  def new
    @hoafy = Hoafy.new
  end

  # GET /hoafies/1/edit
  def edit
  end

  # POST /hoafies
  # POST /hoafies.json
  def create
    @hoafy = Hoafy.new(hoafy_params)

    respond_to do |format|
      if @hoafy.save
        format.html { redirect_to @hoafy, notice: 'Hoafy was successfully created.' }
        format.json { render :show, status: :created, location: @hoafy }
      else
        format.html { render :new }
        format.json { render json: @hoafy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoafies/1
  # PATCH/PUT /hoafies/1.json
  def update
    respond_to do |format|
      if @hoafy.update(hoafy_params)
        format.html { redirect_to @hoafy, notice: 'Hoafy was successfully updated.' }
        format.json { render :show, status: :ok, location: @hoafy }
      else
        format.html { render :edit }
        format.json { render json: @hoafy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoafies/1
  # DELETE /hoafies/1.json
  def destroy
    @hoafy.destroy
    respond_to do |format|
      format.html { redirect_to hoafies_url, notice: 'Hoafy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hoafy
      @hoafy = Hoafy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hoafy_params
      params.require(:hoafy).permit(:picture, :comment, :userName, :verified, :likes, :hoafieOfWeek)
    end
end
