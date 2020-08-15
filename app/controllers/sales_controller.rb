class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def import_data
    @sale = Sale.new
  end
  
  def create
    respond_to do |format|
      if Sale.import(sale_params[:file])
        format.html { redirect_to sales_url, notice: 'Informacion importada correctamente' }
      else
        format.html { redirect_to sales_url, notice: 'Ha ocurrido un error al guardar' }
      end
    end
  end

  private

  def sale_params
    params.require(:sale).permit(:file)
  end
end
