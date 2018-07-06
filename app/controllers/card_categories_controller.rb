class CardCategoriesController < ApplicationController
  before_action :set_card_category, only: [:show, :edit, :update, :destroy]

  # GET /card_categories
  # GET /card_categories.json
  def index
    @card_categories = CardCategory.all
  end

  # GET /card_categories/1
  # GET /card_categories/1.json
  def show
  @card_category = CardCategory.find(params[:id])
  end

  # GET /card_categories/new
  def new
    @card_category = CardCategory.new
  end

  # GET /card_categories/1/edit
  def edit
    @card_category = CardCategory.find(params[:id])
  end

  # POST /card_categories
  # POST /card_categories.json
  def create
    @card_category = CardCategory.new(card_category_params)

    respond_to do |format|
      if @card_category.save
        format.html { redirect_to @card_category, notice: 'Card category was successfully created.' }
        format.json { render :show, status: :created, location: @card_category }
      else
        format.html { render :new }
        format.json { render json: @card_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_categories/1
  # PATCH/PUT /card_categories/1.json
  def update
    respond_to do |format|
      if @card_category.update(card_category_params)
        format.html { redirect_to @card_category, notice: 'Card category was successfully updated.' }
        format.json { render :show, status: :ok, location: @card_category }
      else
        format.html { render :edit }
        format.json { render json: @card_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_categories/1
  # DELETE /card_categories/1.json
  def destroy
    @card_category.destroy
    respond_to do |format|
      format.html { redirect_to card_categories_url, notice: 'Card category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_category
      @card_category = CardCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_category_params
      params.require(:card_category).permit(:name,)
    end
end
