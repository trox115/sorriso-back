require 'rails_helper'

RSpec.describe "orcamentos/new", type: :view do
  before(:each) do
    assign(:orcamento, Orcamento.new(
      cliente: nil,
      doc_categoria: nil,
      servico: nil
    ))
  end

  it "renders new orcamento form" do
    render

    assert_select "form[action=?][method=?]", orcamentos_path, "post" do

      assert_select "input[name=?]", "orcamento[cliente_id]"

      assert_select "input[name=?]", "orcamento[doc_categoria_id]"

      assert_select "input[name=?]", "orcamento[servico_id]"
    end
  end
end
