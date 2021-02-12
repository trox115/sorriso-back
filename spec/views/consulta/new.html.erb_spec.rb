require 'rails_helper'

RSpec.describe "consulta/new", type: :view do
  before(:each) do
    assign(:consultum, Consultum.new(
      cliente: nil,
      servico: nil,
      obs: "MyText"
    ))
  end

  it "renders new consultum form" do
    render

    assert_select "form[action=?][method=?]", consulta_path, "post" do

      assert_select "input[name=?]", "consultum[cliente_id]"

      assert_select "input[name=?]", "consultum[servico_id]"

      assert_select "textarea[name=?]", "consultum[obs]"
    end
  end
end
