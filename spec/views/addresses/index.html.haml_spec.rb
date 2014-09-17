require 'spec_helper'

describe "addresses/index" do
  before(:each) do
    assign(:addresses, [
      stub_model(Address,
        :plot_no => "Plot No",
        :street => "Street",
        :colony => "Colony",
        :city => "City",
        :state => "State",
        :country => "Country",
        :pin_code => "Pin Code"
      ),
      stub_model(Address,
        :plot_no => "Plot No",
        :street => "Street",
        :colony => "Colony",
        :city => "City",
        :state => "State",
        :country => "Country",
        :pin_code => "Pin Code"
      )
    ])
  end

  it "renders a list of addresses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Plot No".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Colony".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Pin Code".to_s, :count => 2
  end
end
