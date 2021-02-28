require 'rails_helper'

RSpec.describe "bocas/new", type: :view do
  before(:each) do
    assign(:boca, Boca.new(
      cliente: nil,
      servico: nil
    ))
  end

  it "renders new boca form" do
    render

    assert_select "form[action=?][method=?]", bocas_path, "post" do

      assert_select "input[name=?]", "boca[cliente_id]"

      assert_select "input[name=?]", "boca[servico_id]"
    end
  end
end
