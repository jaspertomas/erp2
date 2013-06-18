require 'spec_helper'

describe "cheque_payments/new" do
  before(:each) do
    assign(:cheque_payment, stub_model(ChequePayment,
      :payment_id => 1,
      :type => "",
      :amount => "9.99",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new cheque_payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cheque_payments_path, :method => "post" do
      assert_select "input#cheque_payment_payment_id", :name => "cheque_payment[payment_id]"
      assert_select "input#cheque_payment_type", :name => "cheque_payment[type]"
      assert_select "input#cheque_payment_amount", :name => "cheque_payment[amount]"
      assert_select "input#cheque_payment_status", :name => "cheque_payment[status]"
    end
  end
end
