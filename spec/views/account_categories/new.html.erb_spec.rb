require 'spec_helper'

describe "account_categories/new" do
  before(:each) do
    assign(:account_category, stub_model(AccountCategory,
      :name => "MyString",
      :code => "MyString",
      :account_type_id => 1,
      :parent_code => "MyString"
    ).as_new_record)
  end

  it "renders new account_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => account_categories_path, :method => "post" do
      assert_select "input#account_category_name", :name => "account_category[name]"
      assert_select "input#account_category_code", :name => "account_category[code]"
      assert_select "input#account_category_account_type_id", :name => "account_category[account_type_id]"
      assert_select "input#account_category_parent_code", :name => "account_category[parent_code]"
    end
  end
end
