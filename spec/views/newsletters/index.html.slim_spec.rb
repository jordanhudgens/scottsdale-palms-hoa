require 'rails_helper'

RSpec.describe "newsletters/index", type: :view do
  before(:each) do
    assign(:newsletters, [
      Newsletter.create!(
        :title => "Title",
        :content => "MyText",
        :newsletter_file => "MyText",
        :user => nil
      ),
      Newsletter.create!(
        :title => "Title",
        :content => "MyText",
        :newsletter_file => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of newsletters" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
