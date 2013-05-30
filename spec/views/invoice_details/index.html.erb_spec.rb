require 'spec_helper'

describe "invoice_details/index" do
  before(:each) do
    assign(:invoice_details, [
      stub_model(InvoiceDetail,
        :invoice_id => 1,
        :product_id => 2,
        :barcode => "Barcode",
        :description => "Description",
        :qty => "9.99",
        :discamt => "9.99",
        :is_cancelled => false
      ),
      stub_model(InvoiceDetail,
        :invoice_id => 1,
        :product_id => 2,
        :barcode => "Barcode",
        :description => "Description",
        :qty => "9.99",
        :discamt => "9.99",
        :is_cancelled => false
      )
    ])
  end

  it "renders a list of invoice_details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Barcode".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
