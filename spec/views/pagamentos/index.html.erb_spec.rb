require 'rails_helper'

RSpec.describe "pagamentos/index", type: :view do
  before(:each) do
    assign(:pagamentos, [
      Pagamento.create!(
        cliente: nil,
        consulta: nil,
        metodo: "Metodo",
        valor: 2.5,
        troco: 3.5
      ),
      Pagamento.create!(
        cliente: nil,
        consulta: nil,
        metodo: "Metodo",
        valor: 2.5,
        troco: 3.5
      )
    ])
  end

  it "renders a list of pagamentos" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Metodo".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
  end
end
