require 'spec_helper'

describe "grupo_musculares/new" do
  before(:each) do
    assign(:grupo_muscular, stub_model(GrupoMuscular).as_new_record)
  end

  it "renders new grupo_muscular form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", grupo_musculares_path, "post" do
    end
  end
end
