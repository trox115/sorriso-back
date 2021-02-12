require 'rails_helper'

RSpec.describe "orcamentos/show", type: :view do
  before(:each) do
    @orcamento = assign(:orcamento, Orcamento.create!(
      cliente: nil,
      doc_categoria: nil,
      servico: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
