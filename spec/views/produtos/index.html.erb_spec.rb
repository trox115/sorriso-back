require 'rails_helper'

RSpec.describe "produtos/index", type: :view do
  before(:each) do
    assign(:produtos, [
      Produto.create!(
        nome: "Nome",
        quantidade: 2,
        custo: 3
      ),
      Produto.create!(
        nome: "Nome",
        quantidade: 2,
        custo: 3
      )
    ])
  end

  it "renders a list of produtos" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
