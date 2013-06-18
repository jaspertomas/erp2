require 'spec_helper'

describe "purchase_payments/index" do
  before(:each) do
    assign(:purchase_payments, [
      stub_model(PurchasePayment,
        :purchase_id => 1,
        :type => "Type",
        :amount => "9.99"
      ),
      stub_model(PurchasePayment,
        :purchase_id => 1,
        :type => "Type",
        :amount => "9.99"
      )
    ])
  end

  it "renders a list of purchase_payments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
