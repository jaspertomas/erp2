require 'spec_helper'

describe "invoice_templates/index" do
  before(:each) do
    assign(:invoice_templates, [
      stub_model(InvoiceTemplate,
        :name => "Name"
      ),
      stub_model(InvoiceTemplate,
        :name => "Name"
      )
    ])
  end

  it "renders a list of invoice_templates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
