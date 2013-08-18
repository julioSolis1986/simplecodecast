require 'spec_helper'

describe "grupo_musculares/index" do
  before(:each) do
    assign(:grupo_musculares, [
      stub_model(GrupoMuscular),
      stub_model(GrupoMuscular)
    ])
  end

  it "renders a list of grupo_musculares" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
