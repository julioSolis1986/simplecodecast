#encoding: utf-8
class FichasController < InheritedResources::Base
  def index
    @fichas = Ficha.paginate(:page => params[:page], :per_page => 10)
    @cliente = Cliente.new
  end

  def new
    new! do |format|
      @cliente = Cliente.find(params['clientes_id'])
      @tipo_form = 1
    end
  end

  def create
    raise params.inspect
    super do |format|
      format.html { redirect_to collection_url }
    end
  end
end
