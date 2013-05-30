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
        :template_id => 4,
        :vendor_invoice => "Vendor Invoice",
        :discrate => "Discrate",
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
        :template_id => 4,
        :vendor_invoice => "Vendor Invoice",
        :discrate => "Discrate",
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
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Vendor Invoice".to_s, :count => 2
    assert_select "tr>td", :text => "Discrate".to_s, :count => 2
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
