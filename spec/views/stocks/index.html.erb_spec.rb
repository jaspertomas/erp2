require 'spec_helper'

describe "stocks/index" do
  before(:each) do
    assign(:stocks, [
      stub_model(Stock,
        :warehouse_id => 1,
        :product_id => 2,
        :currentqty => "9.99",
        :quota => "9.99"
      ),
      stub_model(Stock,
        :warehouse_id => 1,
        :product_id => 2,
        :currentqty => "9.99",
        :quota => "9.99"
      )
    ])
  end

  it "renders a list of stocks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
