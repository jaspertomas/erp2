require 'spec_helper'

describe "purchase_payments/edit" do
  before(:each) do
    @purchase_payment = assign(:purchase_payment, stub_model(PurchasePayment,
      :purchase_id => 1,
      :type => "",
      :amount => "9.99"
    ))
  end

  it "renders the edit purchase_payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchase_payments_path(@purchase_payment), :method => "post" do
      assert_select "input#purchase_payment_purchase_id", :name => "purchase_payment[purchase_id]"
      assert_select "input#purchase_payment_type", :name => "purchase_payment[type]"
      assert_select "input#purchase_payment_amount", :name => "purchase_payment[amount]"
    end
  end
end
