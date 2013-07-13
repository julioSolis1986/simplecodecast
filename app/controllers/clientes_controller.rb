#encoding: utf-8
class ClientesController < InheritedResources::Base
  def index
    @clientes = Cliente.paginate(:page => params[:page], :per_page => 10)

    @chart = LazyHighCharts::HighChart.new('graph') do |f|
      f.options[:xAxis][:categories] = ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro']
      f.series(:type=> 'column',:name=> 'João',:data=> [3, 2, 1, 3, 4, 13, 12, 9, 7, 2, 1, 9])
      f.series(:type=> 'column',:name=> 'Maria',:data=> [2, 3, 5, 7, 6, 12, 1, 4, 3, 6, 8, 1])
      f.series(:type=> 'column', :name=> 'José',:data=> [4, 2, 3, 9, 1, 9, 6, 6, 1, 2, 4, 16])
      f.series(:type=> 'column', :name=> 'Ricardo',:data=> [5, 3, 4, 8, 1, 8, 7, 11, 9, 4, 12, 8])
    end
  end

  def show
    @cliente = Cliente.find(params[:id])

    render :layout => false
  end
end
