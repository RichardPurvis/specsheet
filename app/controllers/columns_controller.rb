class ColumnsController < ApplicationController
  def edit
  end

  def create
    @sheet = Sheet.find(params[:sheet_id])
    @columns = @sheet.columns

    @column = Column.new(column_params)
    @column.sheet = @sheet

    respond_to do |format|
      format.html
      format.js
    end

  end

  def destroy
  end

  private

  def column_params
    params.require(:column).permit(:title)
  end
end
