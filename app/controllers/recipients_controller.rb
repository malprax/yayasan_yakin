class RecipientsController < ApplicationController
  layout "dashboard"  
  before_action :authenticate_user!, except: [:index, :show, :santunan]
  before_action :set_recipient, only: [:show, :edit, :update, :destroy]
  
  def santunan
    @recipients = Recipient.order('created_at asc')
    @cards = Card.all
  end
  
  # GET /recipients
  # GET /recipients.json
  def index
    @recipients = Recipient.order('created_at asc')
  end

  # GET /recipients/1
  # GET /recipients/1.json
  def show
    @card = @recipient.cards.order('created_at asc')
  end

  # GET /recipients/new
  def new
    @recipient = Recipient.new
    @card = @recipient.cards.build
  end

  # GET /recipients/1/edit
  def edit
  end

  # POST /recipients
  # POST /recipients.json
  def create
    @recipient = Recipient.new(recipient_params)

    respond_to do |format|
      if @recipient.save
        format.html { redirect_to recipients_path, notice: 'Recipient was successfully created.' }
        format.json { render :show, status: :created, location: @recipient }
      else
        format.html { render :new }
        format.json { render json: @recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipients/1
  # PATCH/PUT /recipients/1.json
  def update
    respond_to do |format|
      if @recipient.update(recipient_params)
        format.html { redirect_to recipients_path, notice: 'Recipient was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipient }
      else
        format.html { render :edit }
        format.json { render json: @recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipients/1
  # DELETE /recipients/1.json
  def destroy
    @recipient.destroy
    respond_to do |format|
      format.html { redirect_to recipients_url, notice: 'Recipient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipient
      @recipient = Recipient.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipient_params
      params.require(:recipient).permit(:name, :nik, :born_place, :born_date, :gender, :blood_type, :address, 
      :rukun_tetangga, :rukun_warga, :kelurahan, :kecamatan, :city, :religion, :marital_status, :job, :nationality, :pos_code, :province,
      :cards_attributes => [:recipient_id, :id, :employee, :amount, :month, :urut, :date])
    end
end
