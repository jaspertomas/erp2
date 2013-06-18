require 'spec_helper'

describe "cheque_payments/show" do
  before(:each) do
    @cheque_payment = assign(:cheque_payment, stub_model(ChequePayment,
      :payment_id => 1,
      :type => "Type",
      :amount => "9.99",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Type/)
    rendered.should match(/9.99/)
    rendered.should match(/Status/)
  end
end
