require 'spec_helper'

describe "terms/show" do
  before(:each) do
    @term = assign(:term, stub_model(Term,
      :name => "Name",
      :days => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
