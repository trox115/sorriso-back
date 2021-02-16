require 'rails_helper'

RSpec.describe "orcamento_details/edit", type: :view do
  before(:each) do
    @orcamento_detail = assign(:orcamento_detail, OrcamentoDetail.create!(
      orcamento: nil,
      servico: nil,
      dente: nil
    ))
  end

  it "renders the edit orcamento_detail form" do
    render

    assert_select "form[action=?][method=?]", orcamento_detail_path(@orcamento_detail), "post" do

      assert_select "input[name=?]", "orcamento_detail[orcamento_id]"

      assert_select "input[name=?]", "orcamento_detail[servico_id]"

      assert_select "input[name=?]", "orcamento_detail[dente_id]"
    end
  end
end
