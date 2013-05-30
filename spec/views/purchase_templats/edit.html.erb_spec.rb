require 'spec_helper'

describe "purchase_templats/edit" do
  before(:each) do
    @purchase_templat = assign(:purchase_templat, stub_model(PurchaseTemplat,
      :Rails => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :Ps => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :Quotes => "MyString",
      :vendor_id => 1,
      :product_id => 1,
      :price => "9.99",
      :discrate => "MyString",
      :discamt => "9.99",
      :ref_class => "MyString",
      :ref_id => 1,
      :total => "9.99",
      :mine => false,
      :is_cancelled => false
    ))
  end

  it "renders the edit purchase_templat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchase_templats_path(@purchase_templat), :method => "post" do
      assert_select "input#purchase_templat_Rails", :name => "purchase_templat[Rails]"
      assert_select "input#purchase_templat_g", :name => "purchase_templat[g]"
      assert_select "input#purchase_templat_scaffold", :name => "purchase_templat[scaffold]"
      assert_select "input#purchase_templat_Ps", :name => "purchase_templat[Ps]"
      assert_select "input#purchase_templat_g", :name => "purchase_templat[g]"
      assert_select "input#purchase_templat_scaffold", :name => "purchase_templat[scaffold]"
      assert_select "input#purchase_templat_Quotes", :name => "purchase_templat[Quotes]"
      assert_select "input#purchase_templat_vendor_id", :name => "purchase_templat[vendor_id]"
      assert_select "input#purchase_templat_product_id", :name => "purchase_templat[product_id]"
      assert_select "input#purchase_templat_price", :name => "purchase_templat[price]"
      assert_select "input#purchase_templat_discrate", :name => "purchase_templat[discrate]"
      assert_select "input#purchase_templat_discamt", :name => "purchase_templat[discamt]"
      assert_select "input#purchase_templat_ref_class", :name => "purchase_templat[ref_class]"
      assert_select "input#purchase_templat_ref_id", :name => "purchase_templat[ref_id]"
      assert_select "input#purchase_templat_total", :name => "purchase_templat[total]"
      assert_select "input#purchase_templat_mine", :name => "purchase_templat[mine]"
      assert_select "input#purchase_templat_is_cancelled", :name => "purchase_templat[is_cancelled]"
    end
  end
end
