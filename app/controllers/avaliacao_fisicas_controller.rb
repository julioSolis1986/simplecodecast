#encoding: utf-8
class AvaliacaoFisicasController < InheritedResources::Base
  def index
    @clientes = Cliente.paginate(:page => params[:page], :per_page => 10)
  end

  def new
    new! do |format|
      @clientes_id = params['clientes_id']
      @avaliacao_fisica.build_anamneses
    end
  end
end
