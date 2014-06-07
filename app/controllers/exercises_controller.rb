class ExercisesController < InheritedResources::Base
  autocomplete :exercise, :name, :full => true

  def index
    @filter = params['filter']
    filter = @filter

    unless filter.blank?
      if params['ordenar_por']
        @exercises = Exercise.search do
          fulltext params['palavra_chave']
          order_by params['ordenar_por'], params['ordem']
          order_by :grupo_muscular_derivado, :desc
          with :grupo_muscular, filter
          paginate :page => params[:page], :per_page => 15
        end
      else
        @exercises = Exercise.search do
          fulltext params['palavra_chave']
          order_by :grupo_muscular_derivado, :desc
          order_by :created_at, :desc
          with :grupo_muscular, filter
          paginate :page => params[:page], :per_page => 15
        end
      end
    else
      if params['ordenar_por']
        @exercises = Exercise.search do
          fulltext params['palavra_chave']
          order_by params['ordenar_por'], params['ordem']
          paginate :page => params[:page], :per_page => 15
        end
      else
        @exercises = Exercise.search do
          fulltext params['palavra_chave']
          order_by :created_at, :desc
          paginate :page => params[:page], :per_page => 15
        end
      end
    end

    @exercises = @exercises.results
  end

  def show
    @exercise = Exercise.find(params[:id])

    render :layout => false
  end

  def new
    new! do |format|
      @exercise.exercise_examples.build
    end
  end

  def create
    super do |success, failure|
      success.html { redirect_to collection_url }
    end
  end

  def autocomplete_tags_nome
    render :json => { :tags => Exercise.all.map {|e| { :tag => e.nome } } }
  end
end
