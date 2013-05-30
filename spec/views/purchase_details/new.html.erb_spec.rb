require 'spec_helper'

describe "purchase_details/new" do
  before(:each) do
    assign(:purchase_detail, stub_model(PurchaseDetail,
      :purchase_id => 1,
      :description => "MyString",
      :qty => "9.99",
      :price => "9.99",
      :total => "9.99",
      :tax => "9.99",
      :product_id => 1,
      :barcode => "MyString",
      :discrate => "MyString",
      :discamt => "9.99",
      :is_cancelled => false
    ).as_new_record)
  end

  it "renders new purchase_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchase_details_path, :method => "post" do
      assert_select "input#purchase_detail_purchase_id", :name => "purchase_detail[purchase_id]"
      assert_select "input#purchase_detail_description", :name => "purchase_detail[description]"
      assert_select "input#purchase_detail_qty", :name => "purchase_detail[qty]"
      assert_select "input#purchase_detail_price", :name => "purchase_detail[price]"
      assert_select "input#purchase_detail_total", :name => "purchase_detail[total]"
      assert_select "input#purchase_detail_tax", :name => "purchase_detail[tax]"
      assert_select "input#purchase_detail_product_id", :name => "purchase_detail[product_id]"
      assert_select "input#purchase_detail_barcode", :name => "purchase_detail[barcode]"
      assert_select "input#purchase_detail_discrate", :name => "purchase_detail[discrate]"
      assert_select "input#purchase_detail_discamt", :name => "purchase_detail[discamt]"
      assert_select "input#purchase_detail_is_cancelled", :name => "purchase_detail[is_cancelled]"
    end
  end
end
