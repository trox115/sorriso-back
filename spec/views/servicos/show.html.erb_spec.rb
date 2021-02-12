require 'rails_helper'

RSpec.describe "servicos/show", type: :view do
  before(:each) do
    @servico = assign(:servico, Servico.create!(
      nome: "Nome",
      categoria: nil,
      custo: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
