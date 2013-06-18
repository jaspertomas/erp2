require 'spec_helper'

describe "invoice_payments/show" do
  before(:each) do
    @invoice_payment = assign(:invoice_payment, stub_model(InvoicePayment,
      :invoice_id => 1,
      :type => "Type",
      :amount => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Type/)
    rendered.should match(/9.99/)
  end
end
