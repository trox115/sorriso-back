require 'rails_helper'

RSpec.describe "dmarcacaos/index", type: :view do
  before(:each) do
    assign(:dmarcacaos, [
      Dmarcacao.create!(
        cliente: nil
      ),
      Dmarcacao.create!(
        cliente: nil
      )
    ])
  end

  it "renders a list of dmarcacaos" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
