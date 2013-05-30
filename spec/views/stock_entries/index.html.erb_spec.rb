require 'spec_helper'

describe "stock_entries/index" do
  before(:each) do
    assign(:stock_entries, [
      stub_model(StockEntry,
        :qty => "9.99",
        :balance => "9.99",
        :stock_id => 1,
        :ref_class => "Ref Class",
        :ref_id => 2,
        :is_cancelled => false,
        :priority => 3,
        :type => "Type",
        :description => "Description"
      ),
      stub_model(StockEntry,
        :qty => "9.99",
        :balance => "9.99",
        :stock_id => 1,
        :ref_class => "Ref Class",
        :ref_id => 2,
        :is_cancelled => false,
        :priority => 3,
        :type => "Type",
        :description => "Description"
      )
    ])
  end

  it "renders a list of stock_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Ref Class".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
