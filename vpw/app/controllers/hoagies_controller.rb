class HoagiesController < ApplicationController
  before_action :set_hoagy, only: [:show, :edit, :update, :destroy]

  # GET /hoagies
  # GET /hoagies.json
  def index
    @hoagies = Hoagy.all
  end

  # GET /hoagies/1
  # GET /hoagies/1.json
  def show
  end

  # GET /hoagies/new
  def new
    @hoagy = Hoagy.new
    @all_ingredients = Ingredient.all
    @hoagy_ingredient = @hoagy.ingredient_hoagie.build
  end

  # GET /hoagies/1/edit
  def edit
  end

  # POST /hoagies
  # POST /hoagies.json
  def create
    @hoagy = Hoagy.new(hoagy_params[:hoagy])
    hoagy_params[:ingredients][:id].each do |ingredient|
      if !ingredient.empty?
        @ingredient.ingredient_hoagie.build(:ingredient_id => ingredient)
      end
    end
    
    respond_to do |format|
      if @hoagy.save
        format.html { redirect_to @hoagy, notice: 'Hoagy was successfully created.' }
        format.json { render :show, status: :created, location: @hoagy }
      else
        format.html { render :new }
        format.json { render json: @hoagy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoagies/1
  # PATCH/PUT /hoagies/1.json
  def update
    respond_to do |format|
      if @hoagy.update(hoagy_params)
        format.html { redirect_to @hoagy, notice: 'Hoagy was successfully updated.' }
        format.json { render :show, status: :ok, location: @hoagy }
      else
        format.html { render :edit }
        format.json { render json: @hoagy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoagies/1
  # DELETE /hoagies/1.json
  def destroy
    @hoagy.destroy
    respond_to do |format|
      format.html { redirect_to hoagies_url, notice: 'Hoagy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hoagy
      @hoagy = Hoagy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hoagy_params
      params.require(:hoagy).permit(:name, :ingredients, :price)
    end
end
