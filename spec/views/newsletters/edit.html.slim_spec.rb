require 'rails_helper'

RSpec.describe "newsletters/edit", type: :view do
  before(:each) do
    @newsletter = assign(:newsletter, Newsletter.create!(
      :title => "MyString",
      :content => "MyText",
      :newsletter_file => "MyText",
      :user => nil
    ))
  end

  it "renders the edit newsletter form" do
    render

    assert_select "form[action=?][method=?]", newsletter_path(@newsletter), "post" do

      assert_select "input[name=?]", "newsletter[title]"

      assert_select "textarea[name=?]", "newsletter[content]"

      assert_select "textarea[name=?]", "newsletter[newsletter_file]"

      assert_select "input[name=?]", "newsletter[user_id]"
    end
  end
end
