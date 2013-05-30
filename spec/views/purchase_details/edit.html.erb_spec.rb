require 'spec_helper'

describe "purchase_details/edit" do
  before(:each) do
    @purchase_detail = assign(:purchase_detail, stub_model(PurchaseDetail,
      :purchase_id => 1,
      :description => "MyString",
      :qty => "9.99",
      :price => "9.99",
      :total => "",
      :Rails => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :PurchaseDetails => "MyString",
      :purccode => "",
      :Rails => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :Piscamt => "9.99",
      :is_cancelled => false
    ))
  end

  it "renders the edit purchase_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchase_details_path(@purchase_detail), :method => "post" do
      assert_select "input#purchase_detail_purchase_id", :name => "purchase_detail[purchase_id]"
      assert_select "input#purchase_detail_description", :name => "purchase_detail[description]"
      assert_select "input#purchase_detail_qty", :name => "purchase_detail[qty]"
      assert_select "input#purchase_detail_price", :name => "purchase_detail[price]"
      assert_select "input#purchase_detail_total", :name => "purchase_detail[total]"
      assert_select "input#purchase_detail_Rails", :name => "purchase_detail[Rails]"
      assert_select "input#purchase_detail_g", :name => "purchase_detail[g]"
      assert_select "input#purchase_detail_scaffold", :name => "purchase_detail[scaffold]"
      assert_select "input#purchase_detail_PurchaseDetails", :name => "purchase_detail[PurchaseDetails]"
      assert_select "input#purchase_detail_purccode", :name => "purchase_detail[purccode]"
      assert_select "input#purchase_detail_Rails", :name => "purchase_detail[Rails]"
      assert_select "input#purchase_detail_g", :name => "purchase_detail[g]"
      assert_select "input#purchase_detail_scaffold", :name => "purchase_detail[scaffold]"
      assert_select "input#purchase_detail_Piscamt", :name => "purchase_detail[Piscamt]"
      assert_select "input#purchase_detail_is_cancelled", :name => "purchase_detail[is_cancelled]"
    end
  end
end
