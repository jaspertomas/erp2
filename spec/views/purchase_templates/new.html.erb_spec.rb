require 'spec_helper'

describe "purchase_templates/new" do
  before(:each) do
    assign(:purchase_template, stub_model(PurchaseTemplate,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new purchase_template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchase_templates_path, :method => "post" do
      assert_select "input#purchase_template_name", :name => "purchase_template[name]"
    end
  end
end
