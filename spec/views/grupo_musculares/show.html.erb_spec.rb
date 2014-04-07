require 'spec_helper'

describe "grupo_musculares/show" do
  before(:each) do
    @grupo_muscular = assign(:grupo_muscular, stub_model(GrupoMuscular))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
