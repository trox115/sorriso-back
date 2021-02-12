require 'rails_helper'

RSpec.describe "dentes/new", type: :view do
  before(:each) do
    assign(:dente, Dente.new(
      nome: "MyString"
    ))
  end

  it "renders new dente form" do
    render

    assert_select "form[action=?][method=?]", dentes_path, "post" do

      assert_select "input[name=?]", "dente[nome]"
    end
  end
end
