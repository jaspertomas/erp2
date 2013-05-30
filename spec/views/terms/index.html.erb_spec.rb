require 'spec_helper'

describe "terms/index" do
  before(:each) do
    assign(:terms, [
      stub_model(Term,
        :name => "Name",
        :days => 1
      ),
      stub_model(Term,
        :name => "Name",
        :days => 1
      )
    ])
  end

  it "renders a list of terms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
