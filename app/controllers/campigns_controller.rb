class CampignsController < ApplicationController
  before_action :set_campign, only: [:show, :edit, :update, :destroy]

  def index
    @campigns = Campign.all
  end

  def show
  end

  def new
    @campign = Campign.new
  end

  def edit
  end

  def create
    @campign = Campign.new(campign_params)

    respond_to do |format|
      if @campign.save
        format.html { redirect_to @campign, notice: 'Campign was successfully created.' }
        format.json { render action: 'show', status: :created, location: @campign }
      else
        format.html { render action: 'new' }
        format.json { render json: @campign.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @campign.update(campign_params)
        format.html { redirect_to @campign, notice: 'Campign was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @campign.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @campign.destroy
    respond_to do |format|
      format.html { redirect_to campigns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campign
      @campign = Campign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campign_params
      params[:campign].permit(:subject, :detail)
    end
end
