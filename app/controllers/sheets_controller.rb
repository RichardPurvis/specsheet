class SheetsController < ApplicationController
  def index
    @sheet = Sheet.new
  end
  
  def show
    #@sheet = Sheet.find(params[:id])
  end

  def new
    @sheet = Sheet.new
  end

  def edit
  end

  def create
    @sheet = Sheet.new
    if @sheet.save
      redirect_to @sheet
    else
      flash[:error] = "Error saving sheet."
      render :new
    end
  end

  def update
    @sheet = Sheet.find(params[:id])
  end

  def destroy
    @sheet = Sheet.find(params[:id])
  end
end
