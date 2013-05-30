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
        :is_cancelled => "",
        :Rails => "Rails",
        :g => "G",
        :scaffold => "Scaffold",
        :StockEntry => "Stock Entry",
        :qn => "Qn"
      ),
      stub_model(StockEntry,
        :qty => "9.99",
        :balance => "9.99",
        :stock_id => 1,
        :ref_class => "Ref Class",
        :ref_id => 2,
        :is_cancelled => "",
        :Rails => "Rails",
        :g => "G",
        :scaffold => "Scaffold",
        :StockEntry => "Stock Entry",
        :qn => "Qn"
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
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Rails".to_s, :count => 2
    assert_select "tr>td", :text => "G".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffold".to_s, :count => 2
    assert_select "tr>td", :text => "Stock Entry".to_s, :count => 2
    assert_select "tr>td", :text => "Qn".to_s, :count => 2
  end
end
