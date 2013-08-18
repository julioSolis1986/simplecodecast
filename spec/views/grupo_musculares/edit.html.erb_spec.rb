require 'spec_helper'

describe "grupo_musculares/edit" do
  before(:each) do
    @grupo_muscular = assign(:grupo_muscular, stub_model(GrupoMuscular))
  end

  it "renders the edit grupo_muscular form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", grupo_muscular_path(@grupo_muscular), "post" do
    end
  end
end
