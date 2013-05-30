require 'spec_helper'

describe "product_types/show" do
  before(:each) do
    @product_type = assign(:product_type, stub_model(ProductType,
      :name => "Name",
      :description => "Description",
      :parent_id => 1,
      :priority => 2,
      :category1 => "Category1",
      :category2 => "Category2",
      :category3 => "Category3",
      :category4 => "Category4",
      :category5 => "Category5",
      :category6 => "Category6",
      :category7 => "Category7",
      :category8 => "Category8",
      :category9 => "Category9",
      :category10 => "Category10",
      :path_ids => "Path Ids",
      :path => "Path"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Category1/)
    rendered.should match(/Category2/)
    rendered.should match(/Category3/)
    rendered.should match(/Category4/)
    rendered.should match(/Category5/)
    rendered.should match(/Category6/)
    rendered.should match(/Category7/)
    rendered.should match(/Category8/)
    rendered.should match(/Category9/)
    rendered.should match(/Category10/)
    rendered.should match(/Path Ids/)
    rendered.should match(/Path/)
  end
end
