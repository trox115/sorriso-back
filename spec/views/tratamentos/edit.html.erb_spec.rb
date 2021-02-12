require 'rails_helper'

RSpec.describe "tratamentos/edit", type: :view do
  before(:each) do
    @tratamento = assign(:tratamento, Tratamento.create!(
      dente: nil,
      cliente: nil,
      estado: "MyString"
    ))
  end

  it "renders the edit tratamento form" do
    render

    assert_select "form[action=?][method=?]", tratamento_path(@tratamento), "post" do

      assert_select "input[name=?]", "tratamento[dente_id]"

      assert_select "input[name=?]", "tratamento[cliente_id]"

      assert_select "input[name=?]", "tratamento[estado]"
    end
  end
end
