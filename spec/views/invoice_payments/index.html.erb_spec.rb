require 'spec_helper'

describe "invoice_payments/index" do
  before(:each) do
    assign(:invoice_payments, [
      stub_model(InvoicePayment,
        :invoice_id => 1,
        :type => "Type",
        :amount => "9.99"
      ),
      stub_model(InvoicePayment,
        :invoice_id => 1,
        :type => "Type",
        :amount => "9.99"
      )
    ])
  end

  it "renders a list of invoice_payments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
