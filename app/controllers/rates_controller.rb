class RatesController < ApplicationController
  def index
    @rates = Rate.all
  end

  def show
    @rate = Rate.find(params[:id])
  end

  def new
    @rate = Rate.new
  end

  def create
  rate = Rate.new(rate_params)
  rate.length = params[:length]
  rate.save
  redirect_to rates_path
  end

  def edit
   @rate = Rate.find(params[:id])
  end

  def update
    @rate = Rate.find(params[:id])
    @rate.update(rate_params)
    redirect_to rates_path
  end

  def destroy
    @rate = Rate.find(params[:id])
    @rate.destroy
    redirect_to rates_path
  end

  private
  def rate_params
  params.require(:rate).permit(:loan_type, :length, :rate, :apr, :description)
  end


end
