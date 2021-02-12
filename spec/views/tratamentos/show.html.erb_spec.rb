require 'rails_helper'

RSpec.describe "tratamentos/show", type: :view do
  before(:each) do
    @tratamento = assign(:tratamento, Tratamento.create!(
      dente: nil,
      cliente: nil,
      estado: "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Estado/)
  end
end
