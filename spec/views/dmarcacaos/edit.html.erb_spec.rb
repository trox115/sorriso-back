require 'rails_helper'

RSpec.describe "dmarcacaos/edit", type: :view do
  before(:each) do
    @dmarcacao = assign(:dmarcacao, Dmarcacao.create!(
      cliente: nil
    ))
  end

  it "renders the edit dmarcacao form" do
    render

    assert_select "form[action=?][method=?]", dmarcacao_path(@dmarcacao), "post" do

      assert_select "input[name=?]", "dmarcacao[cliente_id]"
    end
  end
end
