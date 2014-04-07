#encoding: utf-8
class ClientesController < InheritedResources::Base
  include AvaliacaoFisicasHelper
  autocomplete :cliente, :nome, :full => true

  def new
    new! do |format|
      @cliente.enderecos.build
      @cliente.telefones.build
      @cliente.emails.build
    end
  end

  def index
    #raise params.inspect

    if params['ordenar_por']
      @clientes = Cliente.only_deleted.search do
        fulltext params['palavra_chave']
        order_by params['ordenar_por'], params['ordem']
        paginate :page => params[:page], :per_page => 10
      end
    else
      @clientes = Cliente.only_deleted.search do
        fulltext params['palavra_chave']
        order_by :created_at, :desc
        paginate :page => params[:page], :per_page => 10
      end
    end

    @clientes = @clientes.results
    # @clientes = Cliente.paginate(:page => params[:page], :per_page => 10)

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
    @avaliacao_fisicas = @cliente.avaliacao_fisicas

    @avaliacao_fisicas.each do |avaliacao_fisica|
      avaliacao_fisica.composicao_corporal[:soma] = avaliacao_fisica.composicao_corporal.coxa.to_f + avaliacao_fisica.composicao_corporal.abdominal.to_f + avaliacao_fisica.composicao_corporal.supra_iliaca.to_f + avaliacao_fisica.composicao_corporal.axilar.to_f + avaliacao_fisica.composicao_corporal.peitoral.to_f + avaliacao_fisica.composicao_corporal.subescapular.to_f + avaliacao_fisica.composicao_corporal.triciptal.to_f
      avaliacao_fisica.composicao_corporal[:percentual_gordura] = percentual_gordura avaliacao_fisica.composicao_corporal.soma, @cliente.idade, @cliente.sexo.nome
      avaliacao_fisica.composicao_corporal[:peso_gordo] = peso_gordo avaliacao_fisica.composicao_corporal.peso_atual, avaliacao_fisica.composicao_corporal.percentual_gordura
      avaliacao_fisica.composicao_corporal[:peso_magro] = peso_magro avaliacao_fisica.composicao_corporal.peso_atual, avaliacao_fisica.composicao_corporal.peso_gordo
      avaliacao_fisica.composicao_corporal[:percentual_gordura_ideal] = percentual_gordura_ideal @cliente.idade, @cliente.sexo.nome
      avaliacao_fisica.composicao_corporal[:peso_ideal] = peso_ideal avaliacao_fisica.composicao_corporal.peso_atual, avaliacao_fisica.composicao_corporal.percentual_gordura_ideal, avaliacao_fisica.composicao_corporal.peso_magro
    end

    render :layout => false
  end

  def create
    create! do |success, failure|
      success.html { 
        rastro = @cliente.rastreabilidades.build
        rastro.acao = "Criação"
        rastro.mensagem = 'Criação do Usuário'
        rastro.usuario = current_usuario

        rastro.save!

        redirect_to collection_url 
      }
      failure.html { 
        render :action => :new 
      }
    end
  end

  def update
    update! do |success, failure|
      success.html { 
        rastro = @cliente.rastreabilidades.build
        rastro.acao = "Atualização"
        rastro.mensagem = 'Atualização do Usuário'
        rastro.usuario = current_usuario

        rastro.save!

        redirect_to collection_url 
      }
      failure.html { 
        render :action => :update
      }
    end
  end

protected
  def collection

  end
end
