#encoding: utf-8
class ExerciciosController < InheritedResources::Base
  autocomplete :exercicio, :nome, :full => true

  def index
    @filtro = params['filtro']
    filtro = @filtro

    unless filtro.blank?
      if params['ordenar_por']
        @exercicios = Exercicio.search do
          fulltext params['palavra_chave']
          order_by params['ordenar_por'], params['ordem']
          order_by :grupo_muscular_derivado, :desc
          with :grupo_muscular, filtro
          paginate :page => params[:page], :per_page => 15
        end
      else
        @exercicios = Exercicio.search do
          fulltext params['palavra_chave']
          order_by :grupo_muscular_derivado, :desc
          order_by :created_at, :desc
          with :grupo_muscular, filtro
          paginate :page => params[:page], :per_page => 15
        end
      end
    else
      if params['ordenar_por']
        @exercicios = Exercicio.search do
          fulltext params['palavra_chave']
          order_by params['ordenar_por'], params['ordem']
          paginate :page => params[:page], :per_page => 15
        end
      else
        @exercicios = Exercicio.search do
          fulltext params['palavra_chave']
          order_by :created_at, :desc
          paginate :page => params[:page], :per_page => 15
        end
      end
    end

    @exercicios = @exercicios.results
  end

  def show
    @exercicio = Exercicio.find(params[:id])

    render :layout => false
  end

  def new
    new! do |format|
      @exercicio.exemplos_exercicios.build
    end
  end

  def create
    super do |success, failure|
      success.html { redirect_to collection_url }
    end
  end

  def autocomplete_tags_nome
    render :json => { :tags => Exercicio.all.map {|e| { :tag => e.nome } } }
  end
end
