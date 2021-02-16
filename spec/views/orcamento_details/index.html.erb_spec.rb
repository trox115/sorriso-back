require 'rails_helper'

RSpec.describe "orcamento_details/index", type: :view do
  before(:each) do
    assign(:orcamento_details, [
      OrcamentoDetail.create!(
        orcamento: nil,
        servico: nil,
        dente: nil
      ),
      OrcamentoDetail.create!(
        orcamento: nil,
        servico: nil,
        dente: nil
      )
    ])
  end

  it "renders a list of orcamento_details" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
