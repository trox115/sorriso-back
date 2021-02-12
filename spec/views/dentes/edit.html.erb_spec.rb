require 'rails_helper'

RSpec.describe "dentes/edit", type: :view do
  before(:each) do
    @dente = assign(:dente, Dente.create!(
      nome: "MyString"
    ))
  end

  it "renders the edit dente form" do
    render

    assert_select "form[action=?][method=?]", dente_path(@dente), "post" do

      assert_select "input[name=?]", "dente[nome]"
    end
  end
end
