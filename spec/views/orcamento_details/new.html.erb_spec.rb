require 'rails_helper'

RSpec.describe "orcamento_details/new", type: :view do
  before(:each) do
    assign(:orcamento_detail, OrcamentoDetail.new(
      orcamento: nil,
      servico: nil,
      dente: nil
    ))
  end

  it "renders new orcamento_detail form" do
    render

    assert_select "form[action=?][method=?]", orcamento_details_path, "post" do

      assert_select "input[name=?]", "orcamento_detail[orcamento_id]"

      assert_select "input[name=?]", "orcamento_detail[servico_id]"

      assert_select "input[name=?]", "orcamento_detail[dente_id]"
    end
  end
end
