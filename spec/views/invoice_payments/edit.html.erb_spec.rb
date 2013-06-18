require 'spec_helper'

describe "invoice_payments/edit" do
  before(:each) do
    @invoice_payment = assign(:invoice_payment, stub_model(InvoicePayment,
      :invoice_id => 1,
      :type => "",
      :amount => "9.99"
    ))
  end

  it "renders the edit invoice_payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invoice_payments_path(@invoice_payment), :method => "post" do
      assert_select "input#invoice_payment_invoice_id", :name => "invoice_payment[invoice_id]"
      assert_select "input#invoice_payment_type", :name => "invoice_payment[type]"
      assert_select "input#invoice_payment_amount", :name => "invoice_payment[amount]"
    end
  end
end
