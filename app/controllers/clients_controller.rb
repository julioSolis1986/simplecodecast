#encoding: utf-8
class ClientsController < InheritedResources::Base
  include PhysicalAssessmentsHelper
  autocomplete :client, :name, :full => true

  def new
    new! do |format|
      @client.addresses.build
      @client.phones.build
      @client.emails.build
    end
  end

  def index
    if params['ordenar_por']
      @clients = Client.only_deleted.search do
        fulltext params['palavra_chave']
        order_by params['ordenar_por'], params['ordem']
        paginate :page => params[:page], :per_page => 10
      end
    else
      @clients = Client.only_deleted.search do
        fulltext params['palavra_chave']
        order_by :created_at, :desc
        paginate :page => params[:page], :per_page => 10
      end
    end

    @clients = @clients.results
  end

  def show
    @client = Client.find(params[:id])
    @physical_assessments = @client.physical_assessments

    @physical_assessments.each do |physical_assessment|
      physical_assessment.body_composition[:soma] = physical_assessment.body_composition.coxa.to_f + physical_assessment.body_composition.abdominal.to_f + physical_assessment.body_composition.supra_iliaca.to_f + physical_assessment.body_composition.axilar.to_f + physical_assessment.body_composition.peitoral.to_f + physical_assessment.body_composition.subescapular.to_f + physical_assessment.body_composition.triciptal.to_f
      physical_assessment.body_composition[:percentual_gordura] = percentual_gordura physical_assessment.body_composition.soma, @client.idade, @client.sexo.nome
      physical_assessment.body_composition[:peso_gordo] = peso_gordo physical_assessment.body_composition.peso_atual, physical_assessment.body_composition.percentual_gordura
      physical_assessment.body_composition[:peso_magro] = peso_magro physical_assessment.body_composition.peso_atual, physical_assessment.body_composition.peso_gordo
      physical_assessment.body_composition[:percentual_gordura_ideal] = percentual_gordura_ideal @client.idade, @client.sexo.nome
      physical_assessment.body_composition[:peso_ideal] = peso_ideal physical_assessment.body_composition.peso_atual, physical_assessment.body_composition.percentual_gordura_ideal, physical_assessment.body_composition.peso_magro
    end

    render :layout => false
  end

  def create
    create! do |success, failure|
      success.html { 
        rastro = @client.traceabilities.build
        rastro.action = "Criação"
        rastro.message = 'Criação do Usuário'
        rastro.user = current_user

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
        rastro = @client.traceabilities.build
        rastro.action = "Atualização"
        rastro.message = 'Atualização do Usuário'
        rastro.user = current_user

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
