require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :type => "",
      :parent_class => "MyString",
      :parent_id => 1,
      :parent_name => "MyString",
      :child_class => "MyString",
      :children_id => "MyString",
      :amount => "9.99",
      :d => "MyString",
      :Rails => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :Events => "MyString",
      :type => "",
      :ping => "MyString",
      :is_cancelled => false
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path(@event), :method => "post" do
      assert_select "input#event_type", :name => "event[type]"
      assert_select "input#event_parent_class", :name => "event[parent_class]"
      assert_select "input#event_parent_id", :name => "event[parent_id]"
      assert_select "input#event_parent_name", :name => "event[parent_name]"
      assert_select "input#event_child_class", :name => "event[child_class]"
      assert_select "input#event_children_id", :name => "event[children_id]"
      assert_select "input#event_amount", :name => "event[amount]"
      assert_select "input#event_d", :name => "event[d]"
      assert_select "input#event_Rails", :name => "event[Rails]"
      assert_select "input#event_g", :name => "event[g]"
      assert_select "input#event_scaffold", :name => "event[scaffold]"
      assert_select "input#event_Events", :name => "event[Events]"
      assert_select "input#event_type", :name => "event[type]"
      assert_select "input#event_ping", :name => "event[ping]"
      assert_select "input#event_is_cancelled", :name => "event[is_cancelled]"
    end
  end
end
