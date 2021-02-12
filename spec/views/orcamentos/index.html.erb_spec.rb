require 'rails_helper'

RSpec.describe "orcamentos/index", type: :view do
  before(:each) do
    assign(:orcamentos, [
      Orcamento.create!(
        cliente: nil,
        doc_categoria: nil,
        servico: nil
      ),
      Orcamento.create!(
        cliente: nil,
        doc_categoria: nil,
        servico: nil
      )
    ])
  end

  it "renders a list of orcamentos" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
