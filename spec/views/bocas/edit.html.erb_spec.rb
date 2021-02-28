require 'rails_helper'

RSpec.describe "bocas/edit", type: :view do
  before(:each) do
    @boca = assign(:boca, Boca.create!(
      cliente: nil,
      servico: nil
    ))
  end

  it "renders the edit boca form" do
    render

    assert_select "form[action=?][method=?]", boca_path(@boca), "post" do

      assert_select "input[name=?]", "boca[cliente_id]"

      assert_select "input[name=?]", "boca[servico_id]"
    end
  end
end
