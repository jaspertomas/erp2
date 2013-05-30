require 'spec_helper'

describe "purchase_templates/show" do
  before(:each) do
    @purchase_template = assign(:purchase_template, stub_model(PurchaseTemplate,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
