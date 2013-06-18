require 'spec_helper'

describe "cheque_payments/index" do
  before(:each) do
    assign(:cheque_payments, [
      stub_model(ChequePayment,
        :payment_id => 1,
        :type => "Type",
        :amount => "9.99",
        :status => "Status"
      ),
      stub_model(ChequePayment,
        :payment_id => 1,
        :type => "Type",
        :amount => "9.99",
        :status => "Status"
      )
    ])
  end

  it "renders a list of cheque_payments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
