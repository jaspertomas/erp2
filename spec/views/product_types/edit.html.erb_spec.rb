require 'spec_helper'

describe "product_types/edit" do
  before(:each) do
    @product_type = assign(:product_type, stub_model(ProductType,
      :name => "MyString",
      :description => "MyString",
      :parent_id => 1,
      :priority => 1,
      :category1 => "MyString",
      :category2 => "MyString",
      :category3 => "MyString",
      :category4 => "MyString",
      :category5 => "MyString",
      :category6 => "MyString",
      :category7 => "MyString",
      :category8 => "MyString",
      :category9 => "MyString",
      :category10 => "MyString",
      :path_ids => "MyString",
      :path => "MyString"
    ))
  end

  it "renders the edit product_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => product_types_path(@product_type), :method => "post" do
      assert_select "input#product_type_name", :name => "product_type[name]"
      assert_select "input#product_type_description", :name => "product_type[description]"
      assert_select "input#product_type_parent_id", :name => "product_type[parent_id]"
      assert_select "input#product_type_priority", :name => "product_type[priority]"
      assert_select "input#product_type_category1", :name => "product_type[category1]"
      assert_select "input#product_type_category2", :name => "product_type[category2]"
      assert_select "input#product_type_category3", :name => "product_type[category3]"
      assert_select "input#product_type_category4", :name => "product_type[category4]"
      assert_select "input#product_type_category5", :name => "product_type[category5]"
      assert_select "input#product_type_category6", :name => "product_type[category6]"
      assert_select "input#product_type_category7", :name => "product_type[category7]"
      assert_select "input#product_type_category8", :name => "product_type[category8]"
      assert_select "input#product_type_category9", :name => "product_type[category9]"
      assert_select "input#product_type_category10", :name => "product_type[category10]"
      assert_select "input#product_type_path_ids", :name => "product_type[path_ids]"
      assert_select "input#product_type_path", :name => "product_type[path]"
    end
  end
end
