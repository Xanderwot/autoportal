require 'spec_helper'

describe "marks/index" do
  before(:each) do
    assign(:marks, [
      stub_model(Mark,
        :name => ""
      ),
      stub_model(Mark,
        :name => ""
      )
    ])
  end

  it "renders a list of marks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
