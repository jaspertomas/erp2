require 'spec_helper'

describe "accounts/index" do
  before(:each) do
    assign(:accounts, [
      stub_model(Account,
        :code => "Code",
        :name => "Name",
        :account_type_id => 1,
        :account_category_id => 2,
        :is_special => false,
        :currentqty => "9.99"
      ),
      stub_model(Account,
        :code => "Code",
        :name => "Name",
        :account_type_id => 1,
        :account_category_id => 2,
        :is_special => false,
        :currentqty => "9.99"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
