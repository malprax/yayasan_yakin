class DonatursController < ApplicationController
  before_action :set_donatur, only: [:show, :edit, :update, :destroy]

  # GET /donaturs
  # GET /donaturs.json
  def index
    @donaturs = Donatur.all
  end

  # GET /donaturs/1
  # GET /donaturs/1.json
  def show
  end

  # GET /donaturs/new
  def new
    @donatur = Donatur.new
  end

  # GET /donaturs/1/edit
  def edit
  end

  # POST /donaturs
  # POST /donaturs.json
  def create
    @donatur = Donatur.new(donatur_params)

    respond_to do |format|
      if @donatur.save
        format.html { redirect_to donaturs_path, notice: 'Donatur was successfully created.' }
        format.json { render :show, status: :created, location: @donatur }
      else
        format.html { render :new }
        format.json { render json: @donatur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donaturs/1
  # PATCH/PUT /donaturs/1.json
  def update
    respond_to do |format|
      if @donatur.update(donatur_params)
        format.html { redirect_to donaturs_path, notice: 'Donatur was successfully updated.' }
        format.json { render :show, status: :ok, location: @donatur }
      else
        format.html { render :edit }
        format.json { render json: @donatur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donaturs/1
  # DELETE /donaturs/1.json
  def destroy
    @donatur.destroy
    respond_to do |format|
      format.html { redirect_to donaturs_url, notice: 'Donatur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donatur
      @donatur = Donatur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donatur_params
      params.require(:donatur).permit(:name)
    end
end
