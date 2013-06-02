require 'spec_helper'

describe "invoice_details/show" do
  before(:each) do
    @invoice_detail = assign(:invoice_detail, stub_model(InvoiceDetail,
      :barcode => "Barcode",
      :invoice_id => 1,
      :product_id => 2,
      :description => "Description",
      :discrate => "9.99",
      :discamt => "9.99",
      :is_cancelled => false,
      :qty => "9.99",
      :price => "9.99",
      :unittotal => "9.99",
      :total => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Barcode/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Description/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/false/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
