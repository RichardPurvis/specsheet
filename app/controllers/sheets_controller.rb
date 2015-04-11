class SheetsController < ApplicationController
  def index
    @sheets = Sheet.all
  end
  
  def show
    @sheet = Sheet.find(params[:id])
    @columns = @sheet.columns.all
  end

  def new
    @sheet = Sheet.new
  end

  def edit
  end

  def create
    @sheet = Sheet.new(sheet_params)

    column_params.each do |value|
      @sheet.columns.build(value.permit(:title, :data_type))
    end

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

  private

  def sheet_params
    params.require(:sheet).permit(:title, :description, :created_at, :updated_at, :column)
  end

  def column_params
    params.require(:column)
  end
end
