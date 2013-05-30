require 'spec_helper'

describe "accounts/edit" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :code => "MyString",
      :name => "MyString",
      :account_type_id => 1,
      :account_category_id => 1,
      :is_special => false,
      :currentqty => "9.99"
    ))
  end

  it "renders the edit account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path(@account), :method => "post" do
      assert_select "input#account_code", :name => "account[code]"
      assert_select "input#account_name", :name => "account[name]"
      assert_select "input#account_account_type_id", :name => "account[account_type_id]"
      assert_select "input#account_account_category_id", :name => "account[account_category_id]"
      assert_select "input#account_is_special", :name => "account[is_special]"
      assert_select "input#account_currentqty", :name => "account[currentqty]"
    end
  end
end
