require 'spec_helper'

describe "product_categories/new" do
  before(:each) do
    assign(:product_category, stub_model(ProductCategory,
      :name => "MyString",
      :pro => "MyString",
      :Rails => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :Produils => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :ProductTypes => "MyString",
      :name => "MyString",
      :description => "MyString",
      :parent_id => 1,
      :pri => "MyString",
      :Rails => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :Pro => "MyString",
      :category2 => "",
      :Rails => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :category4 => "MyString",
      :ca => "MyString",
      :Rails => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :ory6 => "MyString",
      :category7 => "MyString",
      :category8 => "MyString",
      :category9 => "MyString",
      :Rails => "MyString",
      :g => "MyString",
      :scaffoldpath_ids => "MyString",
      :path => "MyString"
    ).as_new_record)
  end

  it "renders new product_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => product_categories_path, :method => "post" do
      assert_select "input#product_category_name", :name => "product_category[name]"
      assert_select "input#product_category_pro", :name => "product_category[pro]"
      assert_select "input#product_category_Rails", :name => "product_category[Rails]"
      assert_select "input#product_category_g", :name => "product_category[g]"
      assert_select "input#product_category_scaffold", :name => "product_category[scaffold]"
      assert_select "input#product_category_Produils", :name => "product_category[Produils]"
      assert_select "input#product_category_g", :name => "product_category[g]"
      assert_select "input#product_category_scaffold", :name => "product_category[scaffold]"
      assert_select "input#product_category_ProductTypes", :name => "product_category[ProductTypes]"
      assert_select "input#product_category_name", :name => "product_category[name]"
      assert_select "input#product_category_description", :name => "product_category[description]"
      assert_select "input#product_category_parent_id", :name => "product_category[parent_id]"
      assert_select "input#product_category_pri", :name => "product_category[pri]"
      assert_select "input#product_category_Rails", :name => "product_category[Rails]"
      assert_select "input#product_category_g", :name => "product_category[g]"
      assert_select "input#product_category_scaffold", :name => "product_category[scaffold]"
      assert_select "input#product_category_Pro", :name => "product_category[Pro]"
      assert_select "input#product_category_category2", :name => "product_category[category2]"
      assert_select "input#product_category_Rails", :name => "product_category[Rails]"
      assert_select "input#product_category_g", :name => "product_category[g]"
      assert_select "input#product_category_scaffold", :name => "product_category[scaffold]"
      assert_select "input#product_category_category4", :name => "product_category[category4]"
      assert_select "input#product_category_ca", :name => "product_category[ca]"
      assert_select "input#product_category_Rails", :name => "product_category[Rails]"
      assert_select "input#product_category_g", :name => "product_category[g]"
      assert_select "input#product_category_scaffold", :name => "product_category[scaffold]"
      assert_select "input#product_category_ory6", :name => "product_category[ory6]"
      assert_select "input#product_category_category7", :name => "product_category[category7]"
      assert_select "input#product_category_category8", :name => "product_category[category8]"
      assert_select "input#product_category_category9", :name => "product_category[category9]"
      assert_select "input#product_category_Rails", :name => "product_category[Rails]"
      assert_select "input#product_category_g", :name => "product_category[g]"
      assert_select "input#product_category_scaffoldpath_ids", :name => "product_category[scaffoldpath_ids]"
      assert_select "input#product_category_path", :name => "product_category[path]"
    end
  end
end
