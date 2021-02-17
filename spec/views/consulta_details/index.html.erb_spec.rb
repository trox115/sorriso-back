require 'rails_helper'

RSpec.describe "consulta_details/index", type: :view do
  before(:each) do
    assign(:consulta_details, [
      ConsultaDetail.create!(
        tratamento: nil,
        consulta: nil
      ),
      ConsultaDetail.create!(
        tratamento: nil,
        consulta: nil
      )
    ])
  end

  it "renders a list of consulta_details" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
