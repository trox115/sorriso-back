require 'rails_helper'

RSpec.describe "dentes/index", type: :view do
  before(:each) do
    assign(:dentes, [
      Dente.create!(
        nome: "Nome"
      ),
      Dente.create!(
        nome: "Nome"
      )
    ])
  end

  it "renders a list of dentes" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
  end
end
