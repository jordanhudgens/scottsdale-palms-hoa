require 'rails_helper'

RSpec.describe "support_requests/new", type: :view do
  before(:each) do
    assign(:support_request, SupportRequest.new(
      :title => "MyString",
      :content => "",
      :user => nil,
      :status => 1,
      :category => "MyString"
    ))
  end

  it "renders new support_request form" do
    render

    assert_select "form[action=?][method=?]", support_requests_path, "post" do

      assert_select "input[name=?]", "support_request[title]"

      assert_select "input[name=?]", "support_request[content]"

      assert_select "input[name=?]", "support_request[user_id]"

      assert_select "input[name=?]", "support_request[status]"

      assert_select "input[name=?]", "support_request[category]"
    end
  end
end
