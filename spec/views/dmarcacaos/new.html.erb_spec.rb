require 'rails_helper'

RSpec.describe "dmarcacaos/new", type: :view do
  before(:each) do
    assign(:dmarcacao, Dmarcacao.new(
      cliente: nil
    ))
  end

  it "renders new dmarcacao form" do
    render

    assert_select "form[action=?][method=?]", dmarcacaos_path, "post" do

      assert_select "input[name=?]", "dmarcacao[cliente_id]"
    end
  end
end
