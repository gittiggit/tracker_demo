class StocksController < ApplicationController
  def index

  end

  def show
  end

  def search
    if params[:stock]
      @stock = Stock.find_by_ticker params[:stock]
      @stock ||= Stock.new_from_looked_up params[:stock]
    end

    if @stock
      render json: @stock
    #   render partial: "lookup"
    # else
    #   render status: :not_found, nothing: true
    end
  end
end
