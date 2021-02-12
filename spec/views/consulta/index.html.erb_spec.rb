require 'rails_helper'

RSpec.describe "consulta/index", type: :view do
  before(:each) do
    assign(:consulta, [
      Consultum.create!(
        cliente: nil,
        servico: nil,
        obs: "MyText"
      ),
      Consultum.create!(
        cliente: nil,
        servico: nil,
        obs: "MyText"
      )
    ])
  end

  it "renders a list of consulta" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
