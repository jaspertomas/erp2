require 'spec_helper'

describe "pricelists/edit" do
  before(:each) do
    @pricelist = assign(:pricelist, stub_model(Pricelist,
      :name => "MyString",
      :vendor_id => 1
    ))
  end

  it "renders the edit pricelist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pricelists_path(@pricelist), :method => "post" do
      assert_select "input#pricelist_name", :name => "pricelist[name]"
      assert_select "input#pricelist_vendor_id", :name => "pricelist[vendor_id]"
    end
  end
end
