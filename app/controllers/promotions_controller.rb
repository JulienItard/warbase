class PromotionsController < ApplicationController
  before_action :set_promotion, only: [:edit, :update, :destroy]
  before_action :set_soldier

  def index
    @promotions = Promotion.all
  end

  def new
    @promotion = Promotion.new
  end

  def edit
  end

  def create
    @promotion = Promotion.new(promotion_params)
    @promotion.soldier = @soldier

    if @promotion.save
      redirect_to @soldier, notice: 'Promotion was successfully created.'
    else
      render :new 
    end
  end

  def update
    if @promotion.update(promotion_params)
      redirect_to @soldier, notice: 'Promotion was successfully updated.'
    else
      render :edit 
    end
  end

  def destroy
    @promotion.destroy
    redirect_to @soldier, notice: 'Promotion was successfully destroyed.'
  end

  private

    def set_promotion
      @promotion = Promotion.find(params[:id])
    end

    def set_soldier
      @soldier = Soldier.find(params[:soldier_id])
    end

    def promotion_params
      params.require(:promotion).permit(:date, :rank_id, :temporary, :soldier_id)
    end
end
