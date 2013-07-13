#encoding: utf-8
class AvaliacaoFisicasController < InheritedResources::Base
  def index
    @clientes = Cliente.paginate(:page => params[:page], :per_page => 10)
  end

  def new
    new! do |format|
      @cliente = Cliente.find(params['clientes_id'])
      @avaliacao_fisica.build_anamneses
      @avaliacao_fisica.build_perimetro
      @avaliacao_fisica.build_composicao_corporal
      @avaliacao_fisica.build_avaliacao_cardiorespiratoria
      @avaliacao_fisica.build_neuromotor

      @chart = LazyHighCharts::HighChart.new('pie') do |f|
        series = {
                 :type=> 'pie',
                 :name=> 'Browser share',
                 :data=> [
                    ['Massa gorda', 45.0],
                    ['Massa magra', 55.0]
                 ]
        }
        f.series(series)
      end
    end
  end
end
