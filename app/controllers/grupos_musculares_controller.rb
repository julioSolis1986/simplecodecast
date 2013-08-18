#encoding: utf-8
class GruposMuscularesController < InheritedResources::Base
  #defaults :resource_class => GrupoMuscular, :collection_name => 'grupos_musculares', :instance_name => 'grupo_muscular'
  autocomplete :grupo_muscular, :nome, :full => true

  def index
    @grupos_musculares = GrupoMuscular.raiz.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @grupo_muscular = GrupoMuscular.find(params[:id])

    render :layout => false
  end

  def new
    @grupo_muscular = GrupoMuscular.new
    # new! do |format|
    #   @grupo_muscular.derivados.build
    # end
  end

  def create
    super do |format|
      format.html { redirect_to collection_url }
    end
  end
end