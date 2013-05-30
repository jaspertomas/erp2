require 'spec_helper'

describe "subsidiaries/show" do
  before(:each) do
    @subsidiary = assign(:subsidiary, stub_model(Subsidiary,
      :code => "Code",
      :name => "Name",
      :account_code => "Account Code",
      :fund_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Name/)
    rendered.should match(/Account Code/)
    rendered.should match(/1/)
  end
end
