require 'spec_helper'

describe "stock_entries/show" do
  before(:each) do
    @stock_entry = assign(:stock_entry, stub_model(StockEntry,
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
    rendered.should match(//)
    rendered.should match(/Rails/)
    rendered.should match(/G/)
    rendered.should match(/Scaffold/)
    rendered.should match(/Stock Entry/)
    rendered.should match(/Qn/)
  end
end
