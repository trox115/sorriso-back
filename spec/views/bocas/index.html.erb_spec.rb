require 'rails_helper'

RSpec.describe "bocas/index", type: :view do
  before(:each) do
    assign(:bocas, [
      Boca.create!(
        cliente: nil,
        servico: nil
      ),
      Boca.create!(
        cliente: nil,
        servico: nil
      )
    ])
  end

  it "renders a list of bocas" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
