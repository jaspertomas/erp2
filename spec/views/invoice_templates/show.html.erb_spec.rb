require 'spec_helper'

describe "invoice_templates/show" do
  before(:each) do
    @invoice_template = assign(:invoice_template, stub_model(InvoiceTemplate,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
