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
      :detail1 => "Detail1",
      :detail2 => "Detail2",
      :detail3 => "Detail3",
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
    rendered.should match(/Detail1/)
    rendered.should match(/Detail2/)
    rendered.should match(/Detail3/)
    rendered.should match(/false/)
  end
end
