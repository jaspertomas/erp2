require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :type => "",
      :parent_class => "MyString",
      :parent_id => 1,
      :parent_name => "MyString",
      :child_class => "MyString",
      :children_id => "MyString",
      :amount => "9.99",
      :detail1 => "MyString",
      :detail2 => "MyString",
      :detail3 => "MyString",
      :is_cancelled => false
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path, :method => "post" do
      assert_select "input#event_type", :name => "event[type]"
      assert_select "input#event_parent_class", :name => "event[parent_class]"
      assert_select "input#event_parent_id", :name => "event[parent_id]"
      assert_select "input#event_parent_name", :name => "event[parent_name]"
      assert_select "input#event_child_class", :name => "event[child_class]"
      assert_select "input#event_children_id", :name => "event[children_id]"
      assert_select "input#event_amount", :name => "event[amount]"
      assert_select "input#event_detail1", :name => "event[detail1]"
      assert_select "input#event_detail2", :name => "event[detail2]"
      assert_select "input#event_detail3", :name => "event[detail3]"
      assert_select "input#event_is_cancelled", :name => "event[is_cancelled]"
    end
  end
end
