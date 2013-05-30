require 'spec_helper'

describe "pricelists/new" do
  before(:each) do
    assign(:pricelist, stub_model(Pricelist,
      :name => "MyString",
      :vendor_id => 1
    ).as_new_record)
  end

  it "renders new pricelist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pricelists_path, :method => "post" do
      assert_select "input#pricelist_name", :name => "pricelist[name]"
      assert_select "input#pricelist_vendor_id", :name => "pricelist[vendor_id]"
    end
  end
end
