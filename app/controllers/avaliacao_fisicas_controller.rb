class AvaliacaoFisicasController < InheritedResources::Base
  def index
    @avaliacao_fisicas = AvaliacaoFisica.paginate(:page => params[:page], :per_page => 10)
  end

  def new
    new! do |format|
      raise @avaliacao_fisica.anamnese.inspect
      @avaliacao_fisica.anamneses.build
    end
  end
end
