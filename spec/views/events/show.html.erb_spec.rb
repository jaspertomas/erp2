require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    rendered.should match(/Parent Class/)
    rendered.should match(/1/)
    rendered.should match(/Parent Name/)
    rendered.should match(/Child Class/)
    rendered.should match(/Children/)
    rendered.should match(/9.99/)
    rendered.should match(/D/)
    rendered.should match(/Rails/)
    rendered.should match(/G/)
    rendered.should match(/Scaffold/)
    rendered.should match(/Events/)
    rendered.should match(/Type/)
    rendered.should match(/Ping/)
    rendered.should match(/false/)
  end
end
