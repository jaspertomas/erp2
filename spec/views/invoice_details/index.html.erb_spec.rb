require 'spec_helper'

describe "invoice_details/index" do
  before(:each) do
    assign(:invoice_details, [
      stub_model(InvoiceDetail,
        :invoice_id => "Invoice",
        :Rails => "Rails",
        :g => "G",
        :scaffold => "Scaffold",
        :InvoiceDetails => "Invoice Details",
        :invoice => "Invoice",
        :description => "Description",
        :qty => "9.99",
        :discamt => "9.99",
        :is_cancelled => false
      ),
      stub_model(InvoiceDetail,
        :invoice_id => "Invoice",
        :Rails => "Rails",
        :g => "G",
        :scaffold => "Scaffold",
        :InvoiceDetails => "Invoice Details",
        :invoice => "Invoice",
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
    assert_select "tr>td", :text => "Invoice".to_s, :count => 2
    assert_select "tr>td", :text => "Rails".to_s, :count => 2
    assert_select "tr>td", :text => "G".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffold".to_s, :count => 2
    assert_select "tr>td", :text => "Invoice Details".to_s, :count => 2
    assert_select "tr>td", :text => "Invoice".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
