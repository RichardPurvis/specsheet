class SheetsController < ApplicationController
  def index
    @sheets = Sheet.all
  end
  
  def show
    @sheet = Sheet.find(params[:id])
  end

  def new
    #@sheet = Sheet.new.tap |sheet|
      #{ sheet.columns.build( name: 'New Column' ) }
    #end
    #@sheet.save

    

  end

  def edit
  end

  def create
    @sheet = Sheet.new(sheet_params)
    if @sheet.save
      redirect_to @sheet
    else
      flash[:error] = "Error saving sheet."
      render :new
    end
  #for loop through each row of column
  #manually build hash from two fields for column header and type both are strings (validate type)
  #build array of said hashes
  end

  def update
    @sheet = Sheet.find(params[:id])
  end

  def destroy
    @sheet = Sheet.find(params[:id])
  end

  private

  def sheet_params
    params.require(:sheet).permit(:title, :description)
  end

end
