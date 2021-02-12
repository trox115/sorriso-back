require 'rails_helper'

RSpec.describe "servicos/index", type: :view do
  before(:each) do
    assign(:servicos, [
      Servico.create!(
        nome: "Nome",
        categoria: nil,
        custo: 2
      ),
      Servico.create!(
        nome: "Nome",
        categoria: nil,
        custo: 2
      )
    ])
  end

  it "renders a list of servicos" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
