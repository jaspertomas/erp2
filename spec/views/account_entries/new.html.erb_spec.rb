require 'spec_helper'

describe "account_entries/new" do
  before(:each) do
    assign(:account_entry, stub_model(AccountEntry,
      :account_id => 1,
      :qty => "9.99",
      :balance => "9.99",
      :ref_class => "MyString",
      :ref_id => 1,
      :priority => 1,
      :type => "",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new account_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => account_entries_path, :method => "post" do
      assert_select "input#account_entry_account_id", :name => "account_entry[account_id]"
      assert_select "input#account_entry_qty", :name => "account_entry[qty]"
      assert_select "input#account_entry_balance", :name => "account_entry[balance]"
      assert_select "input#account_entry_ref_class", :name => "account_entry[ref_class]"
      assert_select "input#account_entry_ref_id", :name => "account_entry[ref_id]"
      assert_select "input#account_entry_priority", :name => "account_entry[priority]"
      assert_select "input#account_entry_type", :name => "account_entry[type]"
      assert_select "input#account_entry_description", :name => "account_entry[description]"
    end
  end
end
