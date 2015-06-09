class RecipientCardsController < ApplicationController
  before_action :set_recipient_card, only: [:show, :edit, :update, :destroy]

  # GET /recipient_cards
  # GET /recipient_cards.json
  def index
    @recipient_cards = RecipientCard.all
  end

  # GET /recipient_cards/1
  # GET /recipient_cards/1.json
  def show
  end

  # GET /recipient_cards/new
  def new
    @recipient_card = RecipientCard.new
  end

  # GET /recipient_cards/1/edit
  def edit
  end

  # POST /recipient_cards
  # POST /recipient_cards.json
  def create
    @recipient_card = RecipientCard.new(recipient_card_params)

    respond_to do |format|
      if @recipient_card.save
        format.html { redirect_to @recipient_card, notice: 'Recipient card was successfully created.' }
        format.json { render :show, status: :created, location: @recipient_card }
      else
        format.html { render :new }
        format.json { render json: @recipient_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipient_cards/1
  # PATCH/PUT /recipient_cards/1.json
  def update
    respond_to do |format|
      if @recipient_card.update(recipient_card_params)
        format.html { redirect_to @recipient_card, notice: 'Recipient card was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipient_card }
      else
        format.html { render :edit }
        format.json { render json: @recipient_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipient_cards/1
  # DELETE /recipient_cards/1.json
  def destroy
    @recipient_card.destroy
    respond_to do |format|
      format.html { redirect_to recipient_cards_url, notice: 'Recipient card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipient_card
      @recipient_card = RecipientCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipient_card_params
      params.require(:recipient_card).permit(:month, :amount, :donatur, :receiver, :urut, :recipient_id)
    end
end
