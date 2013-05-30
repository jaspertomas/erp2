require 'spec_helper'

describe "pricelists/show" do
  before(:each) do
    @pricelist = assign(:pricelist, stub_model(Pricelist,
      :name => "Name",
      :vendor_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
