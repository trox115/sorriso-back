require 'rails_helper'

RSpec.describe "pagamentos/show", type: :view do
  before(:each) do
    @pagamento = assign(:pagamento, Pagamento.create!(
      cliente: nil,
      consulta: nil,
      metodo: "Metodo",
      valor: 2.5,
      troco: 3.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Metodo/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
  end
end
