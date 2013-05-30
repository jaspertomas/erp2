require 'spec_helper'

describe "invoices/show" do
  before(:each) do
    @invoice = assign(:invoice, stub_model(Invoice,
      :customer_id => 1,
      :customer_name => "Customer Name",
      :invno => "Invno",
      :ponumber => "Ponumber",
      :payonly => "9.99",
      :total => "9.99",
      :cheque => "Cheque",
      :terms_id => 2,
      :salesman_id => 3,
      :technician_id => 4,
      :template_id => 5,
      :cash => "9.99",
      :chequeamt => "9.99",
      :credit => "9.99",
      :discrate => "Discrate",
      :discamt => "9.99",
      :saletype => "Saletype",
      :dsrdeduction => "9.99",
      :balance => "9.99",
      :chequedata => "Chequedata",
      :checkcollectevents => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Customer Name/)
    rendered.should match(/Invno/)
    rendered.should match(/Ponumber/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Cheque/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Discrate/)
    rendered.should match(/9.99/)
    rendered.should match(/Saletype/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Chequedata/)
    rendered.should match(/false/)
  end
end
