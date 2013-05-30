require 'spec_helper'

describe "product_types/index" do
  before(:each) do
    assign(:product_types, [
      stub_model(ProductType,
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
      ),
      stub_model(ProductType,
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
      )
    ])
  end

  it "renders a list of product_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Category1".to_s, :count => 2
    assert_select "tr>td", :text => "Category2".to_s, :count => 2
    assert_select "tr>td", :text => "Category3".to_s, :count => 2
    assert_select "tr>td", :text => "Category4".to_s, :count => 2
    assert_select "tr>td", :text => "Category5".to_s, :count => 2
    assert_select "tr>td", :text => "Category6".to_s, :count => 2
    assert_select "tr>td", :text => "Category7".to_s, :count => 2
    assert_select "tr>td", :text => "Category8".to_s, :count => 2
    assert_select "tr>td", :text => "Category9".to_s, :count => 2
    assert_select "tr>td", :text => "Category10".to_s, :count => 2
    assert_select "tr>td", :text => "Path Ids".to_s, :count => 2
    assert_select "tr>td", :text => "Path".to_s, :count => 2
  end
end
