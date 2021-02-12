require 'rails_helper'

RSpec.describe "orcamentos/edit", type: :view do
  before(:each) do
    @orcamento = assign(:orcamento, Orcamento.create!(
      cliente: nil,
      doc_categoria: nil,
      servico: nil
    ))
  end

  it "renders the edit orcamento form" do
    render

    assert_select "form[action=?][method=?]", orcamento_path(@orcamento), "post" do

      assert_select "input[name=?]", "orcamento[cliente_id]"

      assert_select "input[name=?]", "orcamento[doc_categoria_id]"

      assert_select "input[name=?]", "orcamento[servico_id]"
    end
  end
end
