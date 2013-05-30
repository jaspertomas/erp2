require 'spec_helper'

describe "account_categories/show" do
  before(:each) do
    @account_category = assign(:account_category, stub_model(AccountCategory,
      :name => "Name",
      :code => "Code",
      :account_type_id => 1,
      :parent_code => "Parent Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Code/)
    rendered.should match(/1/)
    rendered.should match(/Parent Code/)
  end
end
