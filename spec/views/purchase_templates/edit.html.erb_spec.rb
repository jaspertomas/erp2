require 'spec_helper'

describe "purchase_templates/edit" do
  before(:each) do
    @purchase_template = assign(:purchase_template, stub_model(PurchaseTemplate,
      :name => "MyString"
    ))
  end

  it "renders the edit purchase_template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchase_templates_path(@purchase_template), :method => "post" do
      assert_select "input#purchase_template_name", :name => "purchase_template[name]"
    end
  end
end
