require 'spec_helper'

describe "invoice_details/show" do
  before(:each) do
    @invoice_detail = assign(:invoice_detail, stub_model(InvoiceDetail,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Invoice/)
    rendered.should match(/Rails/)
    rendered.should match(/G/)
    rendered.should match(/Scaffold/)
    rendered.should match(/Invoice Details/)
    rendered.should match(/Invoice/)
    rendered.should match(/Description/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/false/)
  end
end
