require 'spec_helper'

describe "pricelists/index" do
  before(:each) do
    assign(:pricelists, [
      stub_model(Pricelist,
        :name => "Name",
        :vendor_id => 1
      ),
      stub_model(Pricelist,
        :name => "Name",
        :vendor_id => 1
      )
    ])
  end

  it "renders a list of pricelists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
