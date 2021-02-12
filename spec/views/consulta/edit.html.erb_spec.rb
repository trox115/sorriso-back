require 'rails_helper'

RSpec.describe "consulta/edit", type: :view do
  before(:each) do
    @consultum = assign(:consultum, Consultum.create!(
      cliente: nil,
      servico: nil,
      obs: "MyText"
    ))
  end

  it "renders the edit consultum form" do
    render

    assert_select "form[action=?][method=?]", consultum_path(@consultum), "post" do

      assert_select "input[name=?]", "consultum[cliente_id]"

      assert_select "input[name=?]", "consultum[servico_id]"

      assert_select "textarea[name=?]", "consultum[obs]"
    end
  end
end
