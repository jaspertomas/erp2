require 'spec_helper'

describe "product_categories/index" do
  before(:each) do
    assign(:product_categories, [
      stub_model(ProductCategory,
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
      ),
      stub_model(ProductCategory,
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
      )
    ])
  end

  it "renders a list of product_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pro".to_s, :count => 2
    assert_select "tr>td", :text => "Rails".to_s, :count => 2
    assert_select "tr>td", :text => "G".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffold".to_s, :count => 2
    assert_select "tr>td", :text => "Produils".to_s, :count => 2
    assert_select "tr>td", :text => "G".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffold".to_s, :count => 2
    assert_select "tr>td", :text => "Product Types".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Pri".to_s, :count => 2
    assert_select "tr>td", :text => "Rails".to_s, :count => 2
    assert_select "tr>td", :text => "G".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffold".to_s, :count => 2
    assert_select "tr>td", :text => "Pro".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Rails".to_s, :count => 2
    assert_select "tr>td", :text => "G".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffold".to_s, :count => 2
    assert_select "tr>td", :text => "Category4".to_s, :count => 2
    assert_select "tr>td", :text => "Ca".to_s, :count => 2
    assert_select "tr>td", :text => "Rails".to_s, :count => 2
    assert_select "tr>td", :text => "G".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffold".to_s, :count => 2
    assert_select "tr>td", :text => "Ory6".to_s, :count => 2
    assert_select "tr>td", :text => "Category7".to_s, :count => 2
    assert_select "tr>td", :text => "Category8".to_s, :count => 2
    assert_select "tr>td", :text => "Category9".to_s, :count => 2
    assert_select "tr>td", :text => "Rails".to_s, :count => 2
    assert_select "tr>td", :text => "G".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffoldpath Ids".to_s, :count => 2
    assert_select "tr>td", :text => "Path".to_s, :count => 2
  end
end
