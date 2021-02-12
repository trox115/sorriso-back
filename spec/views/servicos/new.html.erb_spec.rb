require 'rails_helper'

RSpec.describe "servicos/new", type: :view do
  before(:each) do
    assign(:servico, Servico.new(
      nome: "MyString",
      categoria: nil,
      custo: 1
    ))
  end

  it "renders new servico form" do
    render

    assert_select "form[action=?][method=?]", servicos_path, "post" do

      assert_select "input[name=?]", "servico[nome]"

      assert_select "input[name=?]", "servico[categoria_id]"

      assert_select "input[name=?]", "servico[custo]"
    end
  end
end
