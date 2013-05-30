require 'spec_helper'

describe "invoice_templates/edit" do
  before(:each) do
    @invoice_template = assign(:invoice_template, stub_model(InvoiceTemplate,
      :name => "MyString"
    ))
  end

  it "renders the edit invoice_template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invoice_templates_path(@invoice_template), :method => "post" do
      assert_select "input#invoice_template_name", :name => "invoice_template[name]"
    end
  end
end
