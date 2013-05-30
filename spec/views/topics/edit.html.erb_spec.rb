require 'spec_helper'

describe "topics/edit" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :name => "MyString",
      :description => "MyText",
      :parent_id => 1
    ))
  end

  it "renders the edit topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => topics_path(@topic), :method => "post" do
      assert_select "input#topic_name", :name => "topic[name]"
      assert_select "textarea#topic_description", :name => "topic[description]"
      assert_select "input#topic_parent_id", :name => "topic[parent_id]"
    end
  end
end
