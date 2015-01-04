class FarmProductsController < ApplicationController
  before_action :set_farm_product, only: [:show, :edit, :update, :destroy]

  # GET /farm_products
  # GET /farm_products.json
  def index
    @farm_products = FarmProduct.all
  end

  # GET /farm_products/1
  # GET /farm_products/1.json
  def show
  end

  # GET /farm_products/new
  def new
    @farm_product = FarmProduct.new
  end

  # GET /farm_products/1/edit
  def edit
  end

  # POST /farm_products
  # POST /farm_products.json
  def create
    @farm_product = FarmProduct.new(farm_product_params)

    respond_to do |format|
      if @farm_product.save
        format.html { redirect_to @farm_product, notice: 'Farm product was successfully created.' }
        format.json { render :show, status: :created, location: @farm_product }
      else
        format.html { render :new }
        format.json { render json: @farm_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /farm_products/1
  # PATCH/PUT /farm_products/1.json
  def update
    respond_to do |format|
      if @farm_product.update(farm_product_params)
        format.html { redirect_to @farm_product, notice: 'Farm product was successfully updated.' }
        format.json { render :show, status: :ok, location: @farm_product }
      else
        format.html { render :edit }
        format.json { render json: @farm_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farm_products/1
  # DELETE /farm_products/1.json
  def destroy
    @farm_product.destroy
    respond_to do |format|
      format.html { redirect_to farm_products_url, notice: 'Farm product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farm_product
      @farm_product = FarmProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def farm_product_params
      params.require(:farm_product).permit(:farm_id, :product_id)
    end
end
