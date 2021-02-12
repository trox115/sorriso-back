require 'rails_helper'

RSpec.describe "categoria/index", type: :view do
  before(:each) do
    assign(:categoria, [
      Categorium.create!(
        nome: "Nome"
      ),
      Categorium.create!(
        nome: "Nome"
      )
    ])
  end

  it "renders a list of categoria" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
  end
end
