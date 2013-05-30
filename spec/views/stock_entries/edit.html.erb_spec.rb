require 'spec_helper'

describe "stock_entries/edit" do
  before(:each) do
    @stock_entry = assign(:stock_entry, stub_model(StockEntry,
      :qty => "9.99",
      :balance => "9.99",
      :stock_id => 1,
      :ref_class => "MyString",
      :ref_id => 1,
      :is_cancelled => false,
      :priority => 1,
      :type => "",
      :description => "MyString"
    ))
  end

  it "renders the edit stock_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stock_entries_path(@stock_entry), :method => "post" do
      assert_select "input#stock_entry_qty", :name => "stock_entry[qty]"
      assert_select "input#stock_entry_balance", :name => "stock_entry[balance]"
      assert_select "input#stock_entry_stock_id", :name => "stock_entry[stock_id]"
      assert_select "input#stock_entry_ref_class", :name => "stock_entry[ref_class]"
      assert_select "input#stock_entry_ref_id", :name => "stock_entry[ref_id]"
      assert_select "input#stock_entry_is_cancelled", :name => "stock_entry[is_cancelled]"
      assert_select "input#stock_entry_priority", :name => "stock_entry[priority]"
      assert_select "input#stock_entry_type", :name => "stock_entry[type]"
      assert_select "input#stock_entry_description", :name => "stock_entry[description]"
    end
  end
end
