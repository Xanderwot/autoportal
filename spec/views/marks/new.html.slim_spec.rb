require 'spec_helper'

describe "marks/new" do
  before(:each) do
    assign(:mark, stub_model(Mark,
      :name => ""
    ).as_new_record)
  end

  it "renders new mark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => marks_path, :method => "post" do
      assert_select "input#mark_name", :name => "mark[name]"
    end
  end
end
