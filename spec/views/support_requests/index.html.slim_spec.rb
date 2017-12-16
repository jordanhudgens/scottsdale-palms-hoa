require 'rails_helper'

RSpec.describe "support_requests/index", type: :view do
  before(:each) do
    assign(:support_requests, [
      SupportRequest.create!(
        :title => "Title",
        :content => "",
        :user => nil,
        :status => 2,
        :category => "Category"
      ),
      SupportRequest.create!(
        :title => "Title",
        :content => "",
        :user => nil,
        :status => 2,
        :category => "Category"
      )
    ])
  end

  it "renders a list of support_requests" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
