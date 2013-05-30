require 'spec_helper'

describe "invoice_templates/new" do
  before(:each) do
    assign(:invoice_template, stub_model(InvoiceTemplate,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new invoice_template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invoice_templates_path, :method => "post" do
      assert_select "input#invoice_template_name", :name => "invoice_template[name]"
    end
  end
end
