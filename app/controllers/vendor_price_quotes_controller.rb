class VendorPriceQuotesController < ApplicationController
  before_action :set_vendor_price_quote, only: [:show, :edit, :update, :destroy]

  def index
    @vendor_price_quotes = VendorPriceQuote.all
  end

  def show
  end

  def new
    @vendor_price_quote = VendorPriceQuote.new
  end

  def edit
  end

  def create
    @vendor_price_quote = VendorPriceQuote.new(vendor_price_quote_params)

    respond_to do |format|
      if @vendor_price_quote.save
        format.html { redirect_to @vendor_price_quote, notice: 'Vendor price quote was successfully created.' }
        format.json { render :show, status: :created, location: @vendor_price_quote }
      else
        format.html { render :new }
        format.json { render json: @vendor_price_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @vendor_price_quote.update(vendor_price_quote_params)
        format.html { redirect_to @vendor_price_quote, notice: 'Vendor price quote was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor_price_quote }
      else
        format.html { render :edit }
        format.json { render json: @vendor_price_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @vendor_price_quote.destroy
    respond_to do |format|
      format.html { redirect_to vendor_price_quotes_url, notice: 'Vendor price quote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def compare

  end

  private
    def set_vendor_price_quote
      @vendor_price_quote = VendorPriceQuote.find(params[:id])
    end

    def vendor_price_quote_params
      params.require(:vendor_price_quote).permit(:product_id, :vendor_id, :unit_of_measure, :stock_unit_of_measure, :price, :country_of_origin_code, :valid_from)
    end
end
