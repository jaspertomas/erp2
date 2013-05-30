require 'spec_helper'

describe "product_categories/show" do
  before(:each) do
    @product_category = assign(:product_category, stub_model(ProductCategory,
      :name => "Name",
      :pro => "Pro",
      :Rails => "Rails",
      :g => "G",
      :scaffold => "Scaffold",
      :Produils => "Produils",
      :g => "G",
      :scaffold => "Scaffold",
      :ProductTypes => "Product Types",
      :name => "Name",
      :description => "Description",
      :parent_id => 1,
      :pri => "Pri",
      :Rails => "Rails",
      :g => "G",
      :scaffold => "Scaffold",
      :Pro => "Pro",
      :category2 => "",
      :Rails => "Rails",
      :g => "G",
      :scaffold => "Scaffold",
      :category4 => "Category4",
      :ca => "Ca",
      :Rails => "Rails",
      :g => "G",
      :scaffold => "Scaffold",
      :ory6 => "Ory6",
      :category7 => "Category7",
      :category8 => "Category8",
      :category9 => "Category9",
      :Rails => "Rails",
      :g => "G",
      :scaffoldpath_ids => "Scaffoldpath Ids",
      :path => "Path"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Pro/)
    rendered.should match(/Rails/)
    rendered.should match(/G/)
    rendered.should match(/Scaffold/)
    rendered.should match(/Produils/)
    rendered.should match(/G/)
    rendered.should match(/Scaffold/)
    rendered.should match(/Product Types/)
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
    rendered.should match(/Pri/)
    rendered.should match(/Rails/)
    rendered.should match(/G/)
    rendered.should match(/Scaffold/)
    rendered.should match(/Pro/)
    rendered.should match(//)
    rendered.should match(/Rails/)
    rendered.should match(/G/)
    rendered.should match(/Scaffold/)
    rendered.should match(/Category4/)
    rendered.should match(/Ca/)
    rendered.should match(/Rails/)
    rendered.should match(/G/)
    rendered.should match(/Scaffold/)
    rendered.should match(/Ory6/)
    rendered.should match(/Category7/)
    rendered.should match(/Category8/)
    rendered.should match(/Category9/)
    rendered.should match(/Rails/)
    rendered.should match(/G/)
    rendered.should match(/Scaffoldpath Ids/)
    rendered.should match(/Path/)
  end
end
