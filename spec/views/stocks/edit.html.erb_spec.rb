require 'spec_helper'

describe "stocks/edit" do
  before(:each) do
    @stock = assign(:stock, stub_model(Stock,
      :warehouse_id => 1,
      :product_id => 1,
      :currentqty => "9.99",
      :quota => "9.99"
    ))
  end

  it "renders the edit stock form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stocks_path(@stock), :method => "post" do
      assert_select "input#stock_warehouse_id", :name => "stock[warehouse_id]"
      assert_select "input#stock_product_id", :name => "stock[product_id]"
      assert_select "input#stock_currentqty", :name => "stock[currentqty]"
      assert_select "input#stock_quota", :name => "stock[quota]"
    end
  end
end
