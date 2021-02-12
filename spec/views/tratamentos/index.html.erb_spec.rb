require 'rails_helper'

RSpec.describe "tratamentos/index", type: :view do
  before(:each) do
    assign(:tratamentos, [
      Tratamento.create!(
        dente: nil,
        cliente: nil,
        estado: "Estado"
      ),
      Tratamento.create!(
        dente: nil,
        cliente: nil,
        estado: "Estado"
      )
    ])
  end

  it "renders a list of tratamentos" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Estado".to_s, count: 2
  end
end
