require 'spec_helper'

describe "purchases/new" do
  before(:each) do
    assign(:purchase, stub_model(Purchase,
      :pono => "MyString",
      :invno => "MyString",
      :total => "9.99",
      :tax => "9.99",
      :vendor_id => 1,
      :vendor_name => "MyString",
      :terms_id => 1,
      :employee_id => 1,
      :template_ => "MyString",
      :Rails => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :ve => "MyString",
      :Rails => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :Purchases => "MyString",
      :poing => "MyString",
      :discamt => "9.99",
      :status => "MyString",
      :type => "",
      :cash => "9.99",
      :cheque => "9.99",
      :credit => "9.99",
      :chequeno => "MyString",
      :balance => "9.99",
      :chequedata => "MyString"
    ).as_new_record)
  end

  it "renders new purchase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchases_path, :method => "post" do
      assert_select "input#purchase_pono", :name => "purchase[pono]"
      assert_select "input#purchase_invno", :name => "purchase[invno]"
      assert_select "input#purchase_total", :name => "purchase[total]"
      assert_select "input#purchase_tax", :name => "purchase[tax]"
      assert_select "input#purchase_vendor_id", :name => "purchase[vendor_id]"
      assert_select "input#purchase_vendor_name", :name => "purchase[vendor_name]"
      assert_select "input#purchase_terms_id", :name => "purchase[terms_id]"
      assert_select "input#purchase_employee_id", :name => "purchase[employee_id]"
      assert_select "input#purchase_template_", :name => "purchase[template_]"
      assert_select "input#purchase_Rails", :name => "purchase[Rails]"
      assert_select "input#purchase_g", :name => "purchase[g]"
      assert_select "input#purchase_scaffold", :name => "purchase[scaffold]"
      assert_select "input#purchase_ve", :name => "purchase[ve]"
      assert_select "input#purchase_Rails", :name => "purchase[Rails]"
      assert_select "input#purchase_g", :name => "purchase[g]"
      assert_select "input#purchase_scaffold", :name => "purchase[scaffold]"
      assert_select "input#purchase_Purchases", :name => "purchase[Purchases]"
      assert_select "input#purchase_poing", :name => "purchase[poing]"
      assert_select "input#purchase_discamt", :name => "purchase[discamt]"
      assert_select "input#purchase_status", :name => "purchase[status]"
      assert_select "input#purchase_type", :name => "purchase[type]"
      assert_select "input#purchase_cash", :name => "purchase[cash]"
      assert_select "input#purchase_cheque", :name => "purchase[cheque]"
      assert_select "input#purchase_credit", :name => "purchase[credit]"
      assert_select "input#purchase_chequeno", :name => "purchase[chequeno]"
      assert_select "input#purchase_balance", :name => "purchase[balance]"
      assert_select "input#purchase_chequedata", :name => "purchase[chequedata]"
    end
  end
end
