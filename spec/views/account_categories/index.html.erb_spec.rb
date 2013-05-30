require 'spec_helper'

describe "account_categories/index" do
  before(:each) do
    assign(:account_categories, [
      stub_model(AccountCategory,
        :name => "Name",
        :code => "Code",
        :account_type_id => 1,
        :parent_code => "Parent Code"
      ),
      stub_model(AccountCategory,
        :name => "Name",
        :code => "Code",
        :account_type_id => 1,
        :parent_code => "Parent Code"
      )
    ])
  end

  it "renders a list of account_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Parent Code".to_s, :count => 2
  end
end
