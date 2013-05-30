require 'spec_helper'

describe "subsidiaries/index" do
  before(:each) do
    assign(:subsidiaries, [
      stub_model(Subsidiary,
        :code => "Code",
        :name => "Name",
        :account_code => "Account Code",
        :fund_id => 1
      ),
      stub_model(Subsidiary,
        :code => "Code",
        :name => "Name",
        :account_code => "Account Code",
        :fund_id => 1
      )
    ])
  end

  it "renders a list of subsidiaries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Account Code".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
