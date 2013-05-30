require 'spec_helper'

describe "stocks/new" do
  before(:each) do
    assign(:stock, stub_model(Stock,
      :warehouse_id => 1,
      :product_id => 1,
      :currentqty => "9.99",
      :quota => "9.99"
    ).as_new_record)
  end

  it "renders new stock form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stocks_path, :method => "post" do
      assert_select "input#stock_warehouse_id", :name => "stock[warehouse_id]"
      assert_select "input#stock_product_id", :name => "stock[product_id]"
      assert_select "input#stock_currentqty", :name => "stock[currentqty]"
      assert_select "input#stock_quota", :name => "stock[quota]"
    end
  end
end
