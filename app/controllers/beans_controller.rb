class BeansController < ApplicationController
  before_action :set_bean, only: [:show, :edit, :update, :destroy]

  def index
    @bean_search_params = bean_search_params

    @beans = 
      if @bean_search_params.present?
        Bean.with_translations(I18n.locale).search_bean(@bean_search_params).page(params[:page])
      else
        Bean.with_translations.where(bean_translations: { locale: I18n.locale }).page(params[:page])
      end
    render json: @beans
  end

  def show
    render json: @bean
  end

  def new
    @shop = Shop.find(params[:id])
    @bean = Bean.new
    @bean.build_impression
  end

  def edit
    @shop = Shop.find(@bean.shop.id)
  end

  def create
    @shop = Shop.find(params[:bean][:shop_id])
    @bean = @shop.beans.build(bean_params)
    if @bean.save
      # redirect_to my_page_path(current_user), notice: t('beans.flash.registered_bean')
      render json: @bean
    else
      render json: @bean
    end
  end

  def update
    if @bean.update(shop_params)
      render json: @bean
    else
      render json: @bean
    end
  end

  def destroy
    @bean.destroy
    render json: @bean
    # redirect_to my_page_path(current_user), notice: t('beans.flash.deleted_bean')
  end

  def countries
    render json: Bean.countries.keys
  end

  def varieties
    render json: Bean.varieties.keys
  end

  def processes
    render json: Bean.processes.keys
  end

  def roasts
    render json: Bean.roasts.keys
  end

  private

  def set_bean
    @bean = Bean.find(params[:id])
  end

  def bean_params
    params.require(:bean)
          .permit(:user_id, :shop_id, :country, :price, :area, :variety, :farm, :process, :roast, :bean_image, :roast_date, impression_attributes: [:id, :bean_id, :i_sour, :i_sweet, :i_bitter, :i_comment])
  end

  def	bean_search_params
    params.fetch(:search_bean, {}).permit(:country, :roast, :i_sour, :i_sweet, :i_bitter)
  end
end
