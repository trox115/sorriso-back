require 'rails_helper'

RSpec.describe "pagamentos/new", type: :view do
  before(:each) do
    assign(:pagamento, Pagamento.new(
      cliente: nil,
      consulta: nil,
      metodo: "MyString",
      valor: 1.5,
      troco: 1.5
    ))
  end

  it "renders new pagamento form" do
    render

    assert_select "form[action=?][method=?]", pagamentos_path, "post" do

      assert_select "input[name=?]", "pagamento[cliente_id]"

      assert_select "input[name=?]", "pagamento[consulta_id]"

      assert_select "input[name=?]", "pagamento[metodo]"

      assert_select "input[name=?]", "pagamento[valor]"

      assert_select "input[name=?]", "pagamento[troco]"
    end
  end
end
