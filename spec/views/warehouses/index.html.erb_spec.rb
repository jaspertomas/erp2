require 'spec_helper'

describe "warehouses/index" do
  before(:each) do
    assign(:warehouses, [
      stub_model(Warehouse,
        :name => "Name"
      ),
      stub_model(Warehouse,
        :name => "Name"
      )
    ])
  end

  it "renders a list of warehouses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
