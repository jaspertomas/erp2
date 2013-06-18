require 'spec_helper'

describe "purchase_payments/show" do
  before(:each) do
    @purchase_payment = assign(:purchase_payment, stub_model(PurchasePayment,
      :purchase_id => 1,
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
