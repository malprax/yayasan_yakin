class CashflowsController < ApplicationController
  layout "dashboard"
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_cashflow, only: [:show, :edit, :update, :destroy]

  # GET /cashflows
  # GET /cashflows.json
  def index
    @cashflows = Cashflow.order('date asc')
  end

  # GET /cashflows/1
  # GET /cashflows/1.json
  def show
  end

  # GET /cashflows/new
  def new
    @cashflow = Cashflow.new
  end

  # GET /cashflows/1/edit
  def edit
  end

  # POST /cashflows
  # POST /cashflows.json
  def create
    @cashflow = Cashflow.new(cashflow_params)

    respond_to do |format|
      if @cashflow.save
        format.html { redirect_to @cashflow, notice: 'Cashflow was successfully created.' }
        format.json { render :show, status: :created, location: @cashflow }
      else
        format.html { render :new }
        format.json { render json: @cashflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashflows/1
  # PATCH/PUT /cashflows/1.json
  def update
    respond_to do |format|
      if @cashflow.update(cashflow_params)
        format.html { redirect_to @cashflow, notice: 'Cashflow was successfully updated.' }
        format.json { render :show, status: :ok, location: @cashflow }
      else
        format.html { render :edit }
        format.json { render json: @cashflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashflows/1
  # DELETE /cashflows/1.json
  def destroy
    @cashflow.destroy
    respond_to do |format|
      format.html { redirect_to cashflows_url, notice: 'Cashflow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashflow
      @cashflow = Cashflow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cashflow_params
      params.require(:cashflow).permit(:date, :name, :debit, :credit, :amount, :description)
    end
end
