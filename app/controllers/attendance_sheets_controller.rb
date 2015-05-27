class AttendanceSheetsController < ApplicationController
  before_action :set_attendance_sheet, only: [:show, :edit, :update, :destroy]

  # GET /attendance_sheets
  # GET /attendance_sheets.json
  def index
    @attendance_sheets = AttendanceSheet.all
  end

  # GET /attendance_sheets/1
  # GET /attendance_sheets/1.json
  def show
  end

  # GET /attendance_sheets/new
  def new
    @attendance_sheet = AttendanceSheet.new
  end

  # GET /attendance_sheets/1/edit
  def edit
  end

  # POST /attendance_sheets
  # POST /attendance_sheets.json
  def create
    @attendance_sheet = AttendanceSheet.new(attendance_sheet_params)

    respond_to do |format|
      if @attendance_sheet.save
        format.html { redirect_to @attendance_sheet, notice: 'Attendance sheet was successfully created.' }
        format.json { render :show, status: :created, location: @attendance_sheet }
      else
        format.html { render :new }
        format.json { render json: @attendance_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendance_sheets/1
  # PATCH/PUT /attendance_sheets/1.json
  def update
    respond_to do |format|
      if @attendance_sheet.update(attendance_sheet_params)
        format.html { redirect_to @attendance_sheet, notice: 'Attendance sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @attendance_sheet }
      else
        format.html { render :edit }
        format.json { render json: @attendance_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendance_sheets/1
  # DELETE /attendance_sheets/1.json
  def destroy
    @attendance_sheet.destroy
    respond_to do |format|
      format.html { redirect_to attendance_sheets_url, notice: 'Attendance sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance_sheet
      @attendance_sheet = AttendanceSheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attendance_sheet_params
      params.require(:attendance_sheet).permit(:course)
    end
end
