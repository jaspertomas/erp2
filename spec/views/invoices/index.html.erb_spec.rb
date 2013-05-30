require 'spec_helper'

describe "invoices/index" do
  before(:each) do
    assign(:invoices, [
      stub_model(Invoice,
        :customer_id => 1,
        :customer_name => "Customer Name",
        :invno => "Invno",
        :ponumber => "Ponumber",
        :payonly => "9.99",
        :total => "9.99",
        :cheque => "Cheque",
        :terms_id => 2,
        :salesman_id => 3,
        :technician_id => 4,
        :template_id => 5,
        :cash => "9.99",
        :chequeamt => "9.99",
        :credit => "9.99",
        :discrate => "Discrate",
        :discamt => "9.99",
        :saletype => "Saletype",
        :dsrdeduction => "9.99",
        :balance => "9.99",
        :chequedata => "Chequedata",
        :checkcollectevents => false
      ),
      stub_model(Invoice,
        :customer_id => 1,
        :customer_name => "Customer Name",
        :invno => "Invno",
        :ponumber => "Ponumber",
        :payonly => "9.99",
        :total => "9.99",
        :cheque => "Cheque",
        :terms_id => 2,
        :salesman_id => 3,
        :technician_id => 4,
        :template_id => 5,
        :cash => "9.99",
        :chequeamt => "9.99",
        :credit => "9.99",
        :discrate => "Discrate",
        :discamt => "9.99",
        :saletype => "Saletype",
        :dsrdeduction => "9.99",
        :balance => "9.99",
        :chequedata => "Chequedata",
        :checkcollectevents => false
      )
    ])
  end

  it "renders a list of invoices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Customer Name".to_s, :count => 2
    assert_select "tr>td", :text => "Invno".to_s, :count => 2
    assert_select "tr>td", :text => "Ponumber".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Cheque".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Discrate".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Saletype".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Chequedata".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
