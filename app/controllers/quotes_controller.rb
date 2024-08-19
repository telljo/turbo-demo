class QuotesController < ApplicationController
  before_action :set_quote, only: %i[ show edit update destroy ]

  def index
    @quotes = Quote.order(created_at: :desc)
  end

  def show
  end

  def new
    @quote = Quote.new
  end

  def edit
  end

  def create
    @quote = Quote.new(quote_params)

    respond_to do |format|
      if @quote.save
        format.html { redirect_to quote_url(@quote), notice: "Quote was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    if params[:like].present?
      @quote.increment!(:likes_count)
      @quotes = Quote.order(start_date: :desc)
      return redirect_to quotes_path
    end
    respond_to do |format|
      if @quote.update(quote_params)
        format.html { redirect_to quote_url(@quote), notice: "Quote was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @quote.destroy!

    respond_to do |format|
      format.html { redirect_to quotes_url, notice: "Quote was successfully destroyed." }
    end
  end

  private
    def set_quote
      @quote = Quote.find(params[:id])
    end

    def quote_params
      params.require(:quote).permit(:body, :author)
    end
end
