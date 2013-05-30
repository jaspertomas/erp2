require 'spec_helper'

describe "purchases/index" do
  before(:each) do
    assign(:purchases, [
      stub_model(Purchase,
        :pono => "Pono",
        :invno => "Invno",
        :total => "9.99",
        :tax => "9.99",
        :vendor_id => 1,
        :vendor_name => "Vendor Name",
        :terms_id => 2,
        :employee_id => 3,
        :template_ => "Template ",
        :Rails => "Rails",
        :g => "G",
        :scaffold => "Scaffold",
        :ve => "Ve",
        :Rails => "Rails",
        :g => "G",
        :scaffold => "Scaffold",
        :Purchases => "Purchases",
        :poing => "Poing",
        :discamt => "9.99",
        :status => "Status",
        :type => "Type",
        :cash => "9.99",
        :cheque => "9.99",
        :credit => "9.99",
        :chequeno => "Chequeno",
        :balance => "9.99",
        :chequedata => "Chequedata"
      ),
      stub_model(Purchase,
        :pono => "Pono",
        :invno => "Invno",
        :total => "9.99",
        :tax => "9.99",
        :vendor_id => 1,
        :vendor_name => "Vendor Name",
        :terms_id => 2,
        :employee_id => 3,
        :template_ => "Template ",
        :Rails => "Rails",
        :g => "G",
        :scaffold => "Scaffold",
        :ve => "Ve",
        :Rails => "Rails",
        :g => "G",
        :scaffold => "Scaffold",
        :Purchases => "Purchases",
        :poing => "Poing",
        :discamt => "9.99",
        :status => "Status",
        :type => "Type",
        :cash => "9.99",
        :cheque => "9.99",
        :credit => "9.99",
        :chequeno => "Chequeno",
        :balance => "9.99",
        :chequedata => "Chequedata"
      )
    ])
  end

  it "renders a list of purchases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pono".to_s, :count => 2
    assert_select "tr>td", :text => "Invno".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Vendor Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Template ".to_s, :count => 2
    assert_select "tr>td", :text => "Rails".to_s, :count => 2
    assert_select "tr>td", :text => "G".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffold".to_s, :count => 2
    assert_select "tr>td", :text => "Ve".to_s, :count => 2
    assert_select "tr>td", :text => "Rails".to_s, :count => 2
    assert_select "tr>td", :text => "G".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffold".to_s, :count => 2
    assert_select "tr>td", :text => "Purchases".to_s, :count => 2
    assert_select "tr>td", :text => "Poing".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Chequeno".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Chequedata".to_s, :count => 2
  end
end
