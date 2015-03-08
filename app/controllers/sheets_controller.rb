class SheetsController < ApplicationController
  def index
    @sheets = Sheet.all
  end
  
  def show
    @sheet =  Sheet.find(params[:id])
  end

  def new
    @sheet = Sheet.new
  end

  def edit
  end

  def create
    @sheet = Sheet.new(sheet_params)
    if @sheet.save
      redirect_to welcome_index_path
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

  private

  def sheet_params
    params.require(:sheet).permit(:title)
  end

end
