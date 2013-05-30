require 'spec_helper'

describe "purchases/show" do
  before(:each) do
    @purchase = assign(:purchase, stub_model(Purchase,
      :pono => "Pono",
      :invno => "Invno",
      :total => "9.99",
      :tax => "9.99",
      :vendor_id => 1,
      :vendor_name => "Vendor Name",
      :terms_id => 2,
      :employee_id => 3,
      :template_id => 4,
      :vendor_invoice => "Vendor Invoice",
      :discrate => "Discrate",
      :discamt => "9.99",
      :status => "Status",
      :type => "Type",
      :cash => "9.99",
      :cheque => "9.99",
      :credit => "9.99",
      :chequeno => "Chequeno",
      :balance => "9.99",
      :chequedata => "Chequedata"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pono/)
    rendered.should match(/Invno/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/Vendor Name/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/Vendor Invoice/)
    rendered.should match(/Discrate/)
    rendered.should match(/9.99/)
    rendered.should match(/Status/)
    rendered.should match(/Type/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Chequeno/)
    rendered.should match(/9.99/)
    rendered.should match(/Chequedata/)
  end
end
