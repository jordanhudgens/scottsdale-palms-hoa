require 'rails_helper'

RSpec.describe "support_requests/show", type: :view do
  before(:each) do
    @support_request = assign(:support_request, SupportRequest.create!(
      :title => "Title",
      :content => "",
      :user => nil,
      :status => 2,
      :category => "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Category/)
  end
end
