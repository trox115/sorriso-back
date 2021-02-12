require 'rails_helper'

RSpec.describe "servicos/edit", type: :view do
  before(:each) do
    @servico = assign(:servico, Servico.create!(
      nome: "MyString",
      categoria: nil,
      custo: 1
    ))
  end

  it "renders the edit servico form" do
    render

    assert_select "form[action=?][method=?]", servico_path(@servico), "post" do

      assert_select "input[name=?]", "servico[nome]"

      assert_select "input[name=?]", "servico[categoria_id]"

      assert_select "input[name=?]", "servico[custo]"
    end
  end
end
