class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]
  def index
    @shop_search_params = shop_search_params

    @shops = 
      if @shop_search_params.present?
        Shop.with_translations(I18n.locale).search_shop(@shop_search_params).page(params[:page])
      else
        Shop.with_translations.where(shop_translations: { locale: I18n.locale }).page(params[:page])
      end
    render json: @shops
  end

  def show
    @shop = Shop.find(params[:id])
    @beans = Bean.where(shop_id: params[:id])

    render json: @shop
  end

  def new
    @shop = Shop.new
  end

  def edit; end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      render json: @shop
    else
      render json: @shop
    end
  end

  def update
    if @shop.update(shop_params)
      render json: @shop
    else
      render json: @shop
    end
  end

  def destroy
    @shop.destroy
    render json: @shop
  end

  private

  def set_shop
    @shop = Shop.find_by(id: params[:id])
  end

  def shop_params
    params.require(:shop).permit(:name, :address, :url, :shop_image, :latitude, :longitude)
  end

  def shop_search_params
    params.fetch(:search_shop, {}).permit(:name, :address)
  end
end
