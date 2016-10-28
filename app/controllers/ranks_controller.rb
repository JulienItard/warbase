class RanksController < ApplicationController
  before_action :set_rank, only: [:show, :edit, :update, :destroy]

  def index
    @ranks = Rank.all
  end

  def show
  end

  def new
    @rank = Rank.new
  end

  def edit
  end

  def create
    @rank = Rank.new(rank_params)

    respond_to do |format|
      if @rank.save
        format.html { redirect_to @rank, notice: 'Rank was successfully created.' }
        format.json { render :show, status: :created, location: @rank }
      else
        format.html { render :new }
        format.json { render json: @rank.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @rank.update(rank_params)
        format.html { redirect_to @rank, notice: 'Rank was successfully updated.' }
        format.json { render :show, status: :ok, location: @rank }
      else
        format.html { render :edit }
        format.json { render json: @rank.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @rank.destroy
    respond_to do |format|
      format.html { redirect_to ranks_url, notice: 'Rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_rank
      @rank = Rank.find(params[:id])
    end

    def rank_params
      params.require(:rank).permit(:name)
    end
end
