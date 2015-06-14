class ListingsController < ApplicationController
  layout "dashboard"
  before_action :authenticate_user!, except: [:beranda, :legalitas, :tabel, :struktur]
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  def beranda
    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Name'   )
    data_table.new_column('string', 'Manager')
    data_table.new_column('string', 'ToolTip')
    data_table.add_rows( [
      [ {:v => 'Yayasan' , :f => '<h5>Yayasan Yakin</h5>'}, '', 'Yayasan'           ],
      [ {:v => 'Hj. Saripa, S.Pdi' , :f => '<h5>Hj. Saripa, S.Pdi</h5><div class="jabatan">Pembina<div>'}, 'Yayasan', 'Pembina'           ],
      [ {:v => 'Sulaeman', :f => '<h5>Sulaeman</h5><div class="jabatan">Ketua Yayasan</div>'   }, 'Yayasan'    , 'Ketua Yayasan' ],
      [ {:v => 'M. Hanan Sulaeman' , :f => '<h5>M. Hanan Sulaeman</h5><div class="jabatan">Sekertaris<div>'}, 'Sulaeman', 'Sekertaris'            ],
      [ {:v => 'Aulia Sabril' , :f => '<h5>Aulia Sabril</h5><div class="jabatan">Bendahara<div>'}, 'Sulaeman', 'Bendahara'           ],
      [ {:v => 'Drs. H. Muchtar Abd. Rahim' , :f => '<h5>Drs. H. Muchtar A Rahim</h5><div class="jabatan">Pengawas<div>'}, 'Yayasan', 'Pengawas'            ],
      # [ 'Bob'    , 'Drs. H. Muchtar Abd. Rahim' , 'Bob Sponge' ],
      # [ 'Carol'  , 'Bob' , ''           ]
    ] )
    opts   = { :allowHtml => true }
    @chart = GoogleVisualr::Interactive::OrgChart.new(data_table, opts)
  end
  
  
  def tabel
    @listing = Listing.find_by(params[:donatur_id])
    @listings = Listing.order('created_at asc')
    @donaturs = Donatur.order('created_at asc')
    @years = Year.all
    @year = Year.find_by(params[:id])
    @months = Month.all
    @listings_by_donatur = @listings.group_by {|list| list.donatur.name }
  end
  
  
  # GET /listings
  # GET /listings.json
  def index
    @listing = Listing.find_by(params[:donatur_id])
    @listings = Listing.order('urut asc')
    @donaturs = Donatur.all
    @years = Year.all
    @months = Month.all
    @listings_by_donatur = @listings.group_by {|list| list.donatur.name }
    #@month = @year.months.order('created_at')
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
  end

  # GET /listings/new
  def new
    @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to listings_path, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to listings_path, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #:donatur_attributes => [:id, :name, :listing_id], :years_attributes => [:id, :tahun, :listings_id, :months_attributes => [:id, :bulan, :year_id]]
    def listing_params
      params.require(:listing).permit(:amount, :donatur_id, :year_id, :month_id )
    end
end
