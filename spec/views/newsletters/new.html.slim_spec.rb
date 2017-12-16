require 'rails_helper'

RSpec.describe "newsletters/new", type: :view do
  before(:each) do
    assign(:newsletter, Newsletter.new(
      :title => "MyString",
      :content => "MyText",
      :newsletter_file => "MyText",
      :user => nil
    ))
  end

  it "renders new newsletter form" do
    render

    assert_select "form[action=?][method=?]", newsletters_path, "post" do

      assert_select "input[name=?]", "newsletter[title]"

      assert_select "textarea[name=?]", "newsletter[content]"

      assert_select "textarea[name=?]", "newsletter[newsletter_file]"

      assert_select "input[name=?]", "newsletter[user_id]"
    end
  end
end
