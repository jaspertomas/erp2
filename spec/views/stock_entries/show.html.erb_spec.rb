require 'spec_helper'

describe "stock_entries/show" do
  before(:each) do
    @stock_entry = assign(:stock_entry, stub_model(StockEntry,
      :qty => "9.99",
      :balance => "9.99",
      :stock_id => 1,
      :ref_class => "Ref Class",
      :ref_id => 2,
      :is_cancelled => false,
      :priority => 3,
      :type => "Type",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/Ref Class/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/3/)
    rendered.should match(/Type/)
    rendered.should match(/Description/)
  end
end
