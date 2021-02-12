require 'rails_helper'

RSpec.describe "videos/index", type: :view do
  before(:each) do
    assign(:videos, [
      Video.create!(
        nome: "Nome",
        link: "Link"
      ),
      Video.create!(
        nome: "Nome",
        link: "Link"
      )
    ])
  end

  it "renders a list of videos" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Link".to_s, count: 2
  end
end
