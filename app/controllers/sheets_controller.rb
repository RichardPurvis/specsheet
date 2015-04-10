class SheetsController < ApplicationController
  def index
    @sheets = Sheet.all
  end
  
  def show
    @sheet = Sheet.find(params[:id])
  end

  def new
    @sheet = Sheet.new
  end

  def edit
  end

  def create
    @sheet = Sheet.new(sheet_params)
    @column_array_items = @sheet[:column]

    @column_array_items.each do |key, value|
      @column = Column.new
      @column[:column_title] = key
      @column[:column_data_type] = value
      @column.save
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
    params.require(:sheet).permit!
  end

    def column_params
    params.require(:column).permit!
  end

end
