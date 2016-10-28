class SoldiersController < ApplicationController
  before_action :set_soldier, only: [:show, :edit, :update, :destroy]

  def index
    @soldiers = Soldier.all
  end

  def show
  end

  def new
    @soldier = Soldier.new
  end

  def edit
  end

  def create
    @soldier = Soldier.new(soldier_params)

    respond_to do |format|
      if @soldier.save
        format.html { redirect_to @soldier, notice: 'Soldier was successfully created.' }
        format.json { render :show, status: :created, location: @soldier }
      else
        format.html { render :new }
        format.json { render json: @soldier.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @soldier.update(soldier_params)
        format.html { redirect_to @soldier, notice: 'Soldier was successfully updated.' }
        format.json { render :show, status: :ok, location: @soldier }
      else
        format.html { render :edit }
        format.json { render json: @soldier.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @soldier.destroy
    respond_to do |format|
      format.html { redirect_to soldiers_url, notice: 'Soldier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_soldier
      @soldier = Soldier.find(params[:id])
    end

    def soldier_params
      params.require(:soldier).permit(:lastname, :firstname, :date_of_birth, :place_of_birth, :date_of_death, :place_of_death)
    end
end
