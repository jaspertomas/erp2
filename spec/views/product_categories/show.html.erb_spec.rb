require 'spec_helper'

describe "product_categories/show" do
  before(:each) do
    @product_category = assign(:product_category, stub_model(ProductCategory,
      :name => "Name",
      :producttype_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
