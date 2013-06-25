class ClientesController < InheritedResources::Base
  def index
    @clientes = Cliente.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @cliente = Cliente.find(params[:id])

    render :layout => false
  end

  def create
    super
  end
end
