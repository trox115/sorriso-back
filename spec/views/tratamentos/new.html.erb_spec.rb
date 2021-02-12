require 'rails_helper'

RSpec.describe "tratamentos/new", type: :view do
  before(:each) do
    assign(:tratamento, Tratamento.new(
      dente: nil,
      cliente: nil,
      estado: "MyString"
    ))
  end

  it "renders new tratamento form" do
    render

    assert_select "form[action=?][method=?]", tratamentos_path, "post" do

      assert_select "input[name=?]", "tratamento[dente_id]"

      assert_select "input[name=?]", "tratamento[cliente_id]"

      assert_select "input[name=?]", "tratamento[estado]"
    end
  end
end
