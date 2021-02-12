require 'rails_helper'

RSpec.describe "produtos/new", type: :view do
  before(:each) do
    assign(:produto, Produto.new(
      nome: "MyString",
      quantidade: 1,
      custo: 1
    ))
  end

  it "renders new produto form" do
    render

    assert_select "form[action=?][method=?]", produtos_path, "post" do

      assert_select "input[name=?]", "produto[nome]"

      assert_select "input[name=?]", "produto[quantidade]"

      assert_select "input[name=?]", "produto[custo]"
    end
  end
end
