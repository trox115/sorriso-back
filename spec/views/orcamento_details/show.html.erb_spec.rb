require 'rails_helper'

RSpec.describe "orcamento_details/show", type: :view do
  before(:each) do
    @orcamento_detail = assign(:orcamento_detail, OrcamentoDetail.create!(
      orcamento: nil,
      servico: nil,
      dente: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
