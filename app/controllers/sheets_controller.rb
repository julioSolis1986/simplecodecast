class SheetsController < InheritedResources::Base
  def index
    @sheets = Sheet.paginate(:page => params[:page], :per_page => 10)
    @client = Client.new
  end

  def new
    new! do |format|
      @client = Client.find(params['clientes_id'])
      @tipo_form = 1
    end
  end

  def create
    super do |format|
      format.html { redirect_to collection_url }
    end
  end
end
