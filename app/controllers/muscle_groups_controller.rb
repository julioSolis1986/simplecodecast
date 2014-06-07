class MuscleGroupsController < InheritedResources::Base
  #defaults :resource_class => GrupoMuscular, :collection_name => 'muscle_groups', :instance_name => 'muscle_group'
  autocomplete :muscle_group, :name, :full => true

  def index
    @muscle_groups = MuscleGroup.root.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @muscle_group = MuscleGroup.find(params[:id])

    render :layout => false
  end

  def new
    @muscle_group = MuscleGroup.new
  end

  def create
    super do |format|
      format.html { redirect_to collection_url }
    end
  end
end