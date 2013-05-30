require 'spec_helper'

describe "account_types/show" do
  before(:each) do
    @account_type = assign(:account_type, stub_model(AccountType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
