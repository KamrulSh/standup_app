require 'rails_helper'

RSpec.describe "activity/mine.html.erb", type: :view do
  it "renders the word mine" do
    render template: 'activity/mine'
    expect(rendered).to match(/mine/)
  end
end
