require 'spec_helper'

describe "events/index" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :type => "Type",
        :parent_class => "Parent Class",
        :parent_id => 1,
        :parent_name => "Parent Name",
        :child_class => "Child Class",
        :children_id => "Children",
        :amount => "9.99",
        :d => "D",
        :Rails => "Rails",
        :g => "G",
        :scaffold => "Scaffold",
        :Events => "Events",
        :type => "Type",
        :ping => "Ping",
        :is_cancelled => false
      ),
      stub_model(Event,
        :type => "Type",
        :parent_class => "Parent Class",
        :parent_id => 1,
        :parent_name => "Parent Name",
        :child_class => "Child Class",
        :children_id => "Children",
        :amount => "9.99",
        :d => "D",
        :Rails => "Rails",
        :g => "G",
        :scaffold => "Scaffold",
        :Events => "Events",
        :type => "Type",
        :ping => "Ping",
        :is_cancelled => false
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Parent Class".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Parent Name".to_s, :count => 2
    assert_select "tr>td", :text => "Child Class".to_s, :count => 2
    assert_select "tr>td", :text => "Children".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "D".to_s, :count => 2
    assert_select "tr>td", :text => "Rails".to_s, :count => 2
    assert_select "tr>td", :text => "G".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffold".to_s, :count => 2
    assert_select "tr>td", :text => "Events".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Ping".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
