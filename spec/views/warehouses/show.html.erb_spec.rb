require 'spec_helper'

describe "warehouses/show" do
  before(:each) do
    @warehouse = assign(:warehouse, stub_model(Warehouse,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
