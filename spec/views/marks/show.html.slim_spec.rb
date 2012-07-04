require 'spec_helper'

describe "marks/show" do
  before(:each) do
    @mark = assign(:mark, stub_model(Mark,
      :name => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
