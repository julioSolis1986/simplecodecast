class PhysicalAssessmentsController < InheritedResources::Base
  def index
    @physical_assessments = PhysicalAssessment.paginate(:page => params[:page], :per_page => 10)
    @client = Client.new
  end

  def new
    new! do |format|
      @client = Client.find(params['clientes_id'])
      @physical_assessment.build_anamnesis
      @physical_assessment.build_perimeter
      @physical_assessment.build_body_composition
      @physical_assessment.build_cardiorespiratory_assessment
      @physical_assessment.build_neuromotor

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

  def create
    super do |format|
      format.html { redirect_to collection_url }
    end
  end
end
